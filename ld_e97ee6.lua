--[[ 
    GENERATED CLOUD SYSTEM - 1dcee7c2-152c-4358-bb8d-6f0ddaf61181
]]
local CONFIG = {
    Title = "Photios HUB // Cloud",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/totae-rar/totae/refs/heads/main/README.md",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(0, 230, 118),
    BG = Color3.fromRGB(25, 25, 28)
}

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

if CoreGui:FindFirstChild("KeySystemUI") then CoreGui.KeySystemUI:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemUI"
ScreenGui.Parent = CoreGui

local KvTVXUM = Instance.new("Frame")
KvTVXUM.Name = "LQonDKX"
KvTVXUM.Parent = ScreenGui
KvTVXUM.BackgroundColor3 = CONFIG.BG
KvTVXUM.Position = UDim2.new(0.5, -150, 0.5, -90)
KvTVXUM.Size = UDim2.new(0, 300, 0, 180)
KvTVXUM.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = KvTVXUM

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = KvTVXUM
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 1.2
UIStroke.Transparency = 0.6

local ZswJTMxQ = Instance.new("TextLabel")
ZswJTMxQ.Parent = KvTVXUM
ZswJTMxQ.BackgroundTransparency = 1
ZswJTMxQ.Size = UDim2.new(1, 0, 0, 40)
ZswJTMxQ.Font = Enum.Font.GothamBold
ZswJTMxQ.Text = CONFIG.Title
ZswJTMxQ.TextColor3 = Color3.new(1,1,1)
ZswJTMxQ.TextSize = 16

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = KvTVXUM
KeyInput.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.Font = Enum.Font.Gotham
KeyInput.PlaceholderText = "Enter License Key..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.new(1,1,1)
local InCorner = Instance.new("UICorner")
InCorner.CornerRadius = UDim.new(0, 4)
InCorner.Parent = KeyInput

local function makeBtn(text, pos, color)
    local btn = Instance.new("TextButton")
    btn.Parent = KvTVXUM
    btn.BackgroundColor3 = color
    btn.Position = pos
    btn.Size = UDim2.new(0.38, 0, 0, 35)
    btn.Font = Enum.Font.GothamBold
    btn.Text = text
    btn.TextColor3 = Color3.new(1,1,1)
    btn.TextSize = 12
    local bC = Instance.new("UICorner")
    bC.CornerRadius = UDim.new(0, 6)
    bC.Parent = btn
    return btn
end

local hWRgegVdU = makeBtn("CHECK", UDim2.new(0.1, 0, 0.65, 0), Color3.fromRGB(46, 204, 113))
local AghbKuuMkLVG = makeBtn("GET KEY", UDim2.new(0.52, 0, 0.65, 0), CONFIG.Accent)

-- Логика Drag (плавная)
local dragging, dragInput, dragStart, startPos
KvTVXUM.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true; dragStart = input.Position; startPos = KvTVXUM.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
KvTVXUM.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        KvTVXUM.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

AghbKuuMkLVG.MouseButton1Click:Connect(function()
    setclipboard(CONFIG.Linkvertise)
    AghbKuuMkLVG.Text = "COPIED!"
    task.wait(1)
    AghbKuuMkLVG.Text = "GET KEY"
end)

hWRgegVdU.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    hWRgegVdU.Text = "WAIT..."
    local success, actual = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)
    if success and key == actual:gsub("%s+", "") then
        hWRgegVdU.Text = "READY!"
        TweenService:Create(KvTVXUM, TweenInfo.new(0.4), {Position = UDim2.new(0.5, -150, 1.2, 0)}):Play()
        task.wait(0.4)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        hWRgegVdU.Text = "INVALID"
        task.wait(1)
        hWRgegVdU.Text = "CHECK"
    end
end)
