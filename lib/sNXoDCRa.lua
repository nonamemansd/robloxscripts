--[[ Build: 1d633b7b54544d318556d58dbcbd8bad ]]
local UI_VTxouZ = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI_VTxouZ.Name = "oYZecJCKLrxI"

local lKochfjI = Instance.new("Frame", UI_VTxouZ)
lKochfjI.Size = UDim2.new(0, 257, 0, 184)
lKochfjI.Position = UDim2.new(0.5, -130, 0.5, -80)
lKochfjI.BackgroundColor3 = Color3.fromRGB(32, 34, 26)

local stroke = Instance.new("UIStroke", lKochfjI)
stroke.Color = Color3.fromRGB(90, 104, 134)
stroke.Thickness = 1.6340181512961816

local title = Instance.new("TextLabel", lKochfjI)
title.Size = UDim2.new(1, 0, 0, 35)
title.Text = "Vortex Hub"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1

local input = Instance.new("TextBox", lKochfjI)
input.Size = UDim2.new(0.8, 0, 0, 35)
input.Position = UDim2.new(0.1, 0, 0.35, 0)
input.PlaceholderText = "Input Key..."

local btn = Instance.new("TextButton", lKochfjI)
btn.Size = UDim2.new(0.8, 0, 0, 35)
btn.Position = UDim2.new(0.1, 0, 0.65, 0)
btn.BackgroundColor3 = Color3.fromRGB(90, 104, 134)
btn.Text = "LOGIN"

btn.MouseButton1Click:Connect(function()
    local key = game:HttpGet("https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt"):gsub("%s+", "")
    if input.Text == key then
        UI_VTxouZ:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
    end
end)
