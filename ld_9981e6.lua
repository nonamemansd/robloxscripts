--[[ 
    GENERATED CLOUD SYSTEM - 4728e0d6-0f52-49d5-8a69-ddf3eb6af52d
]]
local CONFIG = {
    Title = "Photios HUB // Cloud",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/Kixdev/roblox-invisible-hybrid-script/refs/heads/main/main.lua",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(114, 137, 218),
    BG = Color3.fromRGB(25, 25, 28)
}

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

if CoreGui:FindFirstChild("KeySystemUI") then CoreGui.KeySystemUI:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemUI"
ScreenGui.Parent = CoreGui

local qdSYfWZSzA = Instance.new("Frame")
qdSYfWZSzA.Name = "CgJCwBJ"
qdSYfWZSzA.Parent = ScreenGui
qdSYfWZSzA.BackgroundColor3 = CONFIG.BG
qdSYfWZSzA.Position = UDim2.new(0.5, -150, 0.5, -90)
qdSYfWZSzA.Size = UDim2.new(0, 300, 0, 180)
qdSYfWZSzA.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = qdSYfWZSzA

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = qdSYfWZSzA
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 1.2
UIStroke.Transparency = 0.6

local ggwVUuYXSwfB = Instance.new("TextLabel")
ggwVUuYXSwfB.Parent = qdSYfWZSzA
ggwVUuYXSwfB.BackgroundTransparency = 1
ggwVUuYXSwfB.Size = UDim2.new(1, 0, 0, 40)
ggwVUuYXSwfB.Font = Enum.Font.GothamBold
ggwVUuYXSwfB.Text = CONFIG.Title
ggwVUuYXSwfB.TextColor3 = Color3.new(1,1,1)
ggwVUuYXSwfB.TextSize = 16

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = qdSYfWZSzA
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
    btn.Parent = qdSYfWZSzA
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

local pAtpnQmqJkR = makeBtn("CHECK", UDim2.new(0.1, 0, 0.65, 0), Color3.fromRGB(46, 204, 113))
local tffooLNDKuJo = makeBtn("GET KEY", UDim2.new(0.52, 0, 0.65, 0), CONFIG.Accent)

-- Логика Drag (плавная)
local dragging, dragInput, dragStart, startPos
qdSYfWZSzA.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true; dragStart = input.Position; startPos = qdSYfWZSzA.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
qdSYfWZSzA.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        qdSYfWZSzA.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

tffooLNDKuJo.MouseButton1Click:Connect(function()
    setclipboard(CONFIG.Linkvertise)
    tffooLNDKuJo.Text = "COPIED!"
    task.wait(1)
    tffooLNDKuJo.Text = "GET KEY"
end)

pAtpnQmqJkR.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    pAtpnQmqJkR.Text = "WAIT..."
    local success, actual = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)
    if success and key == actual:gsub("%s+", "") then
        pAtpnQmqJkR.Text = "READY!"
        TweenService:Create(qdSYfWZSzA, TweenInfo.new(0.4), {Position = UDim2.new(0.5, -150, 1.2, 0)}):Play()
        task.wait(0.4)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        pAtpnQmqJkR.Text = "INVALID"
        task.wait(1)
        pAtpnQmqJkR.Text = "CHECK"
    end
end)
