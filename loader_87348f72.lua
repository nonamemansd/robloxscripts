--[[ 
    LOADER ID: 0a9504e256
    BUILD TYPE: CLOUD
]]
local CONFIG = {
    Title = "Aura Link",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/afkar-gg/sc/refs/heads/main/blindshot",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(187, 134, 252),
    BG = Color3.fromRGB(20, 21, 24)
}

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

if CoreGui:FindFirstChild("KeySystem_HwEfJUrFhInN") then CoreGui["KeySystem_HwEfJUrFhInN"]:Destroy() end

local sg = Instance.new("ScreenGui")
sg.Name = "KeySystem_HwEfJUrFhInN"
sg.Parent = CoreGui

local jExqaagxr = Instance.new("Frame")
jExqaagxr.Name = "wBYkSivyJJb"
jExqaagxr.Parent = sg
jExqaagxr.BackgroundColor3 = CONFIG.BG
jExqaagxr.Position = UDim2.new(0.5, -145, 0.5, -85)
jExqaagxr.Size = UDim2.new(0, 290, 0, 170)
jExqaagxr.ClipsDescendants = true


local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 11)
UICorner.Parent = jExqaagxr

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = jExqaagxr
UIStroke.Color = CONFIG.Accent
UIStroke.Thickness = 2.0
UIStroke.Transparency = 0.5

local title = Instance.new("TextLabel")
title.Parent = jExqaagxr
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 40)
title.Font = Enum.Font.Ubuntu
title.Text = CONFIG.Title
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 17

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = jExqaagxr
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
    b.Parent = jExqaagxr
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
jExqaagxr.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        d = true; s = input.Position; p = jExqaagxr.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then d = false end end)
    end
end)
jExqaagxr.InputChanged:Connect(function(input)
    if d and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - s
        jExqaagxr.Position = UDim2.new(p.X.Scale, p.X.Offset + delta.X, p.Y.Scale, p.Y.Offset + delta.Y)
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
        TweenService:Create(jExqaagxr, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -145, 1.5, 0)}):Play()
        task.wait(0.5)
        sg:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    else
        c_btn.Text = "INVALID"
        task.wait(1)
        c_btn.Text = "CHECK"
    end
end)
