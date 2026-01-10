--[[ Build: 9002fc55a99f4a0497410d02b0c53aaa ]]
local UI_eOhXuG = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI_eOhXuG.Name = "EjYjnJtdcGql"

local kZJWYkFZ = Instance.new("Frame", UI_eOhXuG)
kZJWYkFZ.Size = UDim2.new(0, 258, 0, 161)
kZJWYkFZ.Position = UDim2.new(0.5, -130, 0.5, -80)
kZJWYkFZ.BackgroundColor3 = Color3.fromRGB(31, 24, 30)

local stroke = Instance.new("UIStroke", kZJWYkFZ)
stroke.Color = Color3.fromRGB(184, 211, 250)
stroke.Thickness = 1.9675331564624532

local title = Instance.new("TextLabel", kZJWYkFZ)
title.Size = UDim2.new(1, 0, 0, 35)
title.Text = "Eon Menu"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

local input = Instance.new("TextBox", kZJWYkFZ)
input.Size = UDim2.new(0.8, 0, 0, 35)
input.Position = UDim2.new(0.1, 0, 0.35, 0)
input.PlaceholderText = "Input Key..."

local btn = Instance.new("TextButton", kZJWYkFZ)
btn.Size = UDim2.new(0.8, 0, 0, 35)
btn.Position = UDim2.new(0.1, 0, 0.65, 0)
btn.BackgroundColor3 = Color3.fromRGB(184, 211, 250)
btn.Text = "LOGIN"

btn.MouseButton1Click:Connect(function()
    local key = game:HttpGet("https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt"):gsub("%s+", "")
    if input.Text == key then
        UI_eOhXuG:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
    end
end)
