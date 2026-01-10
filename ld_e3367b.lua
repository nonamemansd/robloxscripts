--[[ 
    GENERATED CLOUD SYSTEM - ef696a40-732c-4465-b8c8-867a840bc536
]]
local CONFIG = {
    Title = "Photios HUB // Cloud",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/TeamUBHub/UBLoader/refs/heads/main/index/Key.lua",
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

local tKLSJpwFBkc = Instance.new("Frame")
tKLSJpwFBkc.Name = "FXqAOmHe"
tKLSJpwFBkc.Parent = ScreenGui
tKLSJpwFBkc.BackgroundColor3 = CONFIG.BG
tKLSJpwFBkc.Position = UDim2.new(0.5, -150, 0.5, -90)
tKLSJpwFBkc.Size = UDim2.new(0, 300, 0, 180)
tKLSJpwFBkc.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 11)
UICorner.Parent = tKLSJpwFBkc

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = tKLSJpwFBkc
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 1.2
UIStroke.Transparency = 0.6

local bgSiVeAgPfx = Instance.new("TextLabel")
bgSiVeAgPfx.Parent = tKLSJpwFBkc
bgSiVeAgPfx.BackgroundTransparency = 1
bgSiVeAgPfx.Size = UDim2.new(1, 0, 0, 40)
bgSiVeAgPfx.Font = Enum.Font.GothamBold
bgSiVeAgPfx.Text = CONFIG.Title
bgSiVeAgPfx.TextColor3 = Color3.new(1,1,1)
bgSiVeAgPfx.TextSize = 16

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = tKLSJpwFBkc
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
    btn.Parent = tKLSJpwFBkc
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

local TpQydMFN = makeBtn("CHECK", UDim2.new(0.1, 0, 0.65, 0), Color3.fromRGB(46, 204, 113))
local DpPEaTuv = makeBtn("GET KEY", UDim2.new(0.52, 0, 0.65, 0), CONFIG.Accent)

-- Логика Drag (плавная)
local dragging, dragInput, dragStart, startPos
tKLSJpwFBkc.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true; dragStart = input.Position; startPos = tKLSJpwFBkc.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
tKLSJpwFBkc.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        tKLSJpwFBkc.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

DpPEaTuv.MouseButton1Click:Connect(function()
    setclipboard(CONFIG.Linkvertise)
    DpPEaTuv.Text = "COPIED!"
    task.wait(1)
    DpPEaTuv.Text = "GET KEY"
end)

TpQydMFN.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    TpQydMFN.Text = "WAIT..."
    local success, actual = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)
    if success and key == actual:gsub("%s+", "") then
        TpQydMFN.Text = "READY!"
        TweenService:Create(tKLSJpwFBkc, TweenInfo.new(0.4), {Position = UDim2.new(0.5, -150, 1.2, 0)}):Play()
        task.wait(0.4)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        TpQydMFN.Text = "INVALID"
        task.wait(1)
        TpQydMFN.Text = "CHECK"
    end
end)
