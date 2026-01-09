--[[ 
    LOADER ID: da20e94679
    BUILD TYPE: CLOUD
]]
local CONFIG = {
    Title = "Elite Script",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/swevenxu/thesnoeproject/main/loader.lua",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(187, 134, 252),
    BG = Color3.fromRGB(24, 15, 32)
}

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

if CoreGui:FindFirstChild("KeySystem_oxnNiov") then CoreGui["KeySystem_oxnNiov"]:Destroy() end

local sg = Instance.new("ScreenGui")
sg.Name = "KeySystem_oxnNiov"
sg.Parent = CoreGui

local QkKSErd = Instance.new("Frame")
QkKSErd.Name = "zSQZXYqhm"
QkKSErd.Parent = sg
QkKSErd.BackgroundColor3 = CONFIG.BG
QkKSErd.Position = UDim2.new(0.5, -149, 0.5, -85)
QkKSErd.Size = UDim2.new(0, 299, 0, 171)
QkKSErd.ClipsDescendants = true

    local grad = Instance.new("UIGradient")
    grad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, QkKSErd.BackgroundColor3),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(43, 35, 48))
    })
    grad.Rotation = 0
    grad.Parent = QkKSErd
    

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = QkKSErd

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = QkKSErd
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 2.1
UIStroke.Transparency = 0.6

local title = Instance.new("TextLabel")
title.Parent = QkKSErd
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 40)
title.Font = Enum.Font.Ubuntu
title.Text = CONFIG.Title
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 17

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = QkKSErd
KeyInput.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
KeyInput.Position = UDim2.new(0.1, 0, 0.32, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.Font = Enum.Font.Gotham
KeyInput.PlaceholderText = "Input key..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 4)

local function create_btn(txt, pos, clr)
    local b = Instance.new("TextButton")
    b.Parent = QkKSErd
    b.BackgroundColor3 = clr
    b.Position = pos
    b.Size = UDim2.new(0.38, 0, 0, 34)
    b.Font = Enum.Font.GothamBold
    b.Text = txt
    b.TextColor3 = Color3.new(1,1,1)
    b.TextSize = 12
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 6)
    return b
end

local c_btn = create_btn("CHECK", UDim2.new(0.1, 0, 0.68, 0), Color3.fromRGB(45, 180, 100))
local g_btn = create_btn("GET KEY", UDim2.new(0.52, 0, 0.68, 0), CONFIG.Accent)

-- Smooth Dragging
local d, i, s, p
QkKSErd.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        d = true; s = input.Position; p = QkKSErd.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then d = false end end)
    end
end)
QkKSErd.InputChanged:Connect(function(input)
    if d and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - s
        QkKSErd.Position = UDim2.new(p.X.Scale, p.X.Offset + delta.X, p.Y.Scale, p.Y.Offset + delta.Y)
    end
end)

g_btn.MouseButton1Click:Connect(function()
    setclipboard(CONFIG.Linkvertise)
    g_btn.Text = "COPIED!"
    task.wait(1)
    g_btn.Text = "GET KEY"
end)

c_btn.MouseButton1Click:Connect(function()
    local k = KeyInput.Text
    c_btn.Text = "WAITING"
    local success, actual = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)
    if success and k == actual:gsub("%s+", "") then
        c_btn.Text = "SUCCESS"
        TweenService:Create(QkKSErd, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -149, 1.5, 0)}):Play()
        task.wait(0.5)
        sg:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        c_btn.Text = "INVALID"
        task.wait(1)
        c_btn.Text = "CHECK"
    end
end)
