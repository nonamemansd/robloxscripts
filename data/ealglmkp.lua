--[[ Build: f13dc5d2f63c4cb6a70ab70a913ed9b8 ]]
local UI_NsloWr = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI_NsloWr.Name = "KvHthlTzGHKh"

local okXjTBwd = Instance.new("Frame", UI_NsloWr)
okXjTBwd.Size = UDim2.new(0, 259, 0, 182)
okXjTBwd.Position = UDim2.new(0.5, -130, 0.5, -80)
okXjTBwd.BackgroundColor3 = Color3.fromRGB(30, 28, 35)

local stroke = Instance.new("UIStroke", okXjTBwd)
stroke.Color = Color3.fromRGB(162, 53, 176)
stroke.Thickness = 2.4723853880706343

local title = Instance.new("TextLabel", okXjTBwd)
title.Size = UDim2.new(1, 0, 0, 35)
title.Text = "Synapse Menu"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

local input = Instance.new("TextBox", okXjTBwd)
input.Size = UDim2.new(0.8, 0, 0, 35)
input.Position = UDim2.new(0.1, 0, 0.35, 0)
input.PlaceholderText = "Input Key..."

local btn = Instance.new("TextButton", okXjTBwd)
btn.Size = UDim2.new(0.8, 0, 0, 35)
btn.Position = UDim2.new(0.1, 0, 0.65, 0)
btn.BackgroundColor3 = Color3.fromRGB(162, 53, 176)
btn.Text = "LOGIN"

btn.MouseButton1Click:Connect(function()
    local key = game:HttpGet("https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt"):gsub("%s+", "")
    if input.Text == key then
        UI_NsloWr:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
    end
end)
