--[[ 
    GENERATED CLOUD SYSTEM - a57f4198-48a5-441a-a945-26ca2df9b204
]]
local CONFIG = {
    Title = "Photios HUB // Cloud",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://pastebin.com/raw/mizeQM4i",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(0, 176, 255),
    BG = Color3.fromRGB(25, 25, 28)
}

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

if CoreGui:FindFirstChild("KeySystemUI") then CoreGui.KeySystemUI:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemUI"
ScreenGui.Parent = CoreGui

local tIzOTvmPq = Instance.new("Frame")
tIzOTvmPq.Name = "hRacVeTAOqyu"
tIzOTvmPq.Parent = ScreenGui
tIzOTvmPq.BackgroundColor3 = CONFIG.BG
tIzOTvmPq.Position = UDim2.new(0.5, -150, 0.5, -90)
tIzOTvmPq.Size = UDim2.new(0, 300, 0, 180)
tIzOTvmPq.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = tIzOTvmPq

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = tIzOTvmPq
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 1.2
UIStroke.Transparency = 0.6

local cpItBDtPvjaL = Instance.new("TextLabel")
cpItBDtPvjaL.Parent = tIzOTvmPq
cpItBDtPvjaL.BackgroundTransparency = 1
cpItBDtPvjaL.Size = UDim2.new(1, 0, 0, 40)
cpItBDtPvjaL.Font = Enum.Font.GothamBold
cpItBDtPvjaL.Text = CONFIG.Title
cpItBDtPvjaL.TextColor3 = Color3.new(1,1,1)
cpItBDtPvjaL.TextSize = 16

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = tIzOTvmPq
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
    btn.Parent = tIzOTvmPq
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

local LLZXavbEN = makeBtn("CHECK", UDim2.new(0.1, 0, 0.65, 0), Color3.fromRGB(46, 204, 113))
local vsgbxasXb = makeBtn("GET KEY", UDim2.new(0.52, 0, 0.65, 0), CONFIG.Accent)

-- Логика Drag (плавная)
local dragging, dragInput, dragStart, startPos
tIzOTvmPq.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true; dragStart = input.Position; startPos = tIzOTvmPq.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
tIzOTvmPq.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        tIzOTvmPq.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

vsgbxasXb.MouseButton1Click:Connect(function()
    setclipboard(CONFIG.Linkvertise)
    vsgbxasXb.Text = "COPIED!"
    task.wait(1)
    vsgbxasXb.Text = "GET KEY"
end)

LLZXavbEN.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    LLZXavbEN.Text = "WAIT..."
    local success, actual = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)
    if success and key == actual:gsub("%s+", "") then
        LLZXavbEN.Text = "READY!"
        TweenService:Create(tIzOTvmPq, TweenInfo.new(0.4), {Position = UDim2.new(0.5, -150, 1.2, 0)}):Play()
        task.wait(0.4)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        LLZXavbEN.Text = "INVALID"
        task.wait(1)
        LLZXavbEN.Text = "CHECK"
    end
end)
