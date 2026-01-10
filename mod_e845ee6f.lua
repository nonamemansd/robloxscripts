--[[ ID: 29b0a0cac6 ]]
local CONFIG = {
    Title = "Solar Loader",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main2.txt",
    ScriptURL = "https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals",
    Linkvertise = "https://link-hub.net/2628650/0C1MYVfEK7Ic",
    Accent = Color3.fromRGB(255, 64, 129),
    BG = Color3.fromRGB(20, 20, 25)
}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("KeySystem_KxmRUVlQ") then CoreGui["KeySystem_KxmRUVlQ"]:Destroy() end
local sg = Instance.new("ScreenGui", CoreGui)
sg.Name = "KeySystem_KxmRUVlQ"
local wbeklqFS = Instance.new("Frame", sg)
wbeklqFS.Size = UDim2.new(0, 300, 0, 180)
wbeklqFS.Position = UDim2.new(0.5, -150, 0.5, -90)
wbeklqFS.BackgroundColor3 = CONFIG.BG
Instance.new("UICorner", wbeklqFS).CornerRadius = UDim.new(0, 8)
local t = Instance.new("TextLabel", wbeklqFS)
t.Size = UDim2.new(1, 0, 0, 40)
t.Text = CONFIG.Title
t.TextColor3 = Color3.new(1,1,1)
t.BackgroundTransparency = 1
local k = Instance.new("TextBox", wbeklqFS)
k.Size = UDim2.new(0.8, 0, 0, 35)
k.Position = UDim2.new(0.1, 0, 0.35, 0)
k.PlaceholderText = "Enter Key..."
local btn = Instance.new("TextButton", wbeklqFS)
btn.Size = UDim2.new(0.8, 0, 0, 35)
btn.Position = UDim2.new(0.1, 0, 0.65, 0)
btn.Text = "CHECK"
btn.MouseButton1Click:Connect(function()
    if k.Text == game:HttpGet(CONFIG.KeyURL):gsub("%s+", "") then
        sg:Destroy()
        loadstring(game:HttpGet(CONFIG.ScriptURL))()
    end
end)
