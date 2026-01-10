--[[ Build ID: 47171ea0ae324166b334de257b365eeb ]]
local SG_legcgzeV = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG_legcgzeV.Name = "ifwTLBoXzQTUEoB"

local Main_jyWZkJDW = Instance.new("Frame", SG_legcgzeV)
Main_jyWZkJDW.Name = "aSeGJPwSrc"
Main_jyWZkJDW.Size = UDim2.new(0, 311, 0, 170)
Main_jyWZkJDW.Position = UDim2.new(0.5, -155, 0.5, -85)
Main_jyWZkJDW.BackgroundColor3 = Color3.fromRGB(15, 24, 16)
Main_jyWZkJDW.Active = true
Main_jyWZkJDW.Draggable = true

local UICorner = Instance.new("UICorner", Main_jyWZkJDW)
UICorner.CornerRadius = UDim.new(0, 10)

local Stroke = Instance.new("UIStroke", Main_jyWZkJDW)
Stroke.Color = Color3.fromRGB(242, 172, 229)
Stroke.Thickness = 1.8
Stroke.Transparency = 0.3

local Title = Instance.new("TextLabel", Main_jyWZkJDW)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Aura Menu"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15

local Box_KqPhxAMQ = Instance.new("TextBox", Main_jyWZkJDW)
Box_KqPhxAMQ.Size = UDim2.new(0.85, 0, 0, 35)
Box_KqPhxAMQ.Position = UDim2.new(0.075, 0, 0.35, 0)
Box_KqPhxAMQ.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
Box_KqPhxAMQ.PlaceholderText = "Enter License Key..."
Box_KqPhxAMQ.Text = ""
Box_KqPhxAMQ.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", Box_KqPhxAMQ).CornerRadius = UDim.new(0, 4)

local Check_abymMcEU = Instance.new("TextButton", Main_jyWZkJDW)
Check_abymMcEU.Size = UDim2.new(0.4, 0, 0, 35)
Check_abymMcEU.Position = UDim2.new(0.075, 0, 0.65, 0)
Check_abymMcEU.BackgroundColor3 = Color3.fromRGB(30, 150, 30)
Check_abymMcEU.Text = "LOGIN"
Check_abymMcEU.TextColor3 = Color3.new(1,1,1)
Check_abymMcEU.Font = Enum.Font.GothamBold
Instance.new("UICorner", Check_abymMcEU).CornerRadius = UDim.new(0, 6)

local Get_qmvdqczw = Instance.new("TextButton", Main_jyWZkJDW)
Get_qmvdqczw.Size = UDim2.new(0.4, 0, 0, 35)
Get_qmvdqczw.Position = UDim2.new(0.525, 0, 0.65, 0)
Get_qmvdqczw.BackgroundColor3 = Color3.fromRGB(242, 172, 229)
Get_qmvdqczw.Text = "GET KEY"
Get_qmvdqczw.TextColor3 = Color3.new(1,1,1)
Get_qmvdqczw.Font = Enum.Font.GothamBold
Instance.new("UICorner", Get_qmvdqczw).CornerRadius = UDim.new(0, 6)

-- Logic
Get_qmvdqczw.MouseButton1Click:Connect(function()
    setclipboard("https://direct-link.net/2628650/5ke8XjzaCfDT")
    Get_qmvdqczw.Text = "COPIED URL!"
    task.wait(2)
    Get_qmvdqczw.Text = "GET KEY"
end)

Check_abymMcEU.MouseButton1Click:Connect(function()
    local input = Box_KqPhxAMQ.Text
    Check_abymMcEU.Text = "WAITING..."
    local success, key = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt") end)
    
    if success and input == key:gsub("%s+", "") then
        Check_abymMcEU.Text = "SUCCESS"
        task.wait(0.5)
        SG_legcgzeV:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
    else
        Check_abymMcEU.Text = "INVALID KEY"
        Check_abymMcEU.BackgroundColor3 = Color3.fromRGB(150, 30, 30)
        task.wait(1.5)
        Check_abymMcEU.Text = "LOGIN"
        Check_abymMcEU.BackgroundColor3 = Color3.fromRGB(30, 150, 30)
    end
end)
