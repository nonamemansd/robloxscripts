--[[ Build ID: 55fed235721c4152aacc9149c438cee8 ]]
local SG_noBVzjnJ = Instance.new("ScreenGui", game:GetService("CoreGui"))
SG_noBVzjnJ.Name = "sCLHfeBPQHZblEu"

local Main_gVteKicP = Instance.new("Frame", SG_noBVzjnJ)
Main_gVteKicP.Name = "XkMkWNauQS"
Main_gVteKicP.Size = UDim2.new(0, 272, 0, 209)
Main_gVteKicP.Position = UDim2.new(0.5, -136, 0.5, -104)
Main_gVteKicP.BackgroundColor3 = Color3.fromRGB(28, 17, 17)
Main_gVteKicP.Active = true
Main_gVteKicP.Draggable = true

local UICorner = Instance.new("UICorner", Main_gVteKicP)
UICorner.CornerRadius = UDim.new(0, 10)

local Stroke = Instance.new("UIStroke", Main_gVteKicP)
Stroke.Color = Color3.fromRGB(213, 59, 186)
Stroke.Thickness = 2.5
Stroke.Transparency = 0.4

local Title = Instance.new("TextLabel", Main_gVteKicP)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "Nova V3"
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14

local Box_QkDlegbz = Instance.new("TextBox", Main_gVteKicP)
Box_QkDlegbz.Size = UDim2.new(0.85, 0, 0, 35)
Box_QkDlegbz.Position = UDim2.new(0.075, 0, 0.35, 0)
Box_QkDlegbz.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
Box_QkDlegbz.PlaceholderText = "Enter License Key..."
Box_QkDlegbz.Text = ""
Box_QkDlegbz.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", Box_QkDlegbz).CornerRadius = UDim.new(0, 4)

local Check_GBCvUdlT = Instance.new("TextButton", Main_gVteKicP)
Check_GBCvUdlT.Size = UDim2.new(0.4, 0, 0, 35)
Check_GBCvUdlT.Position = UDim2.new(0.075, 0, 0.65, 0)
Check_GBCvUdlT.BackgroundColor3 = Color3.fromRGB(30, 150, 30)
Check_GBCvUdlT.Text = "LOGIN"
Check_GBCvUdlT.TextColor3 = Color3.new(1,1,1)
Check_GBCvUdlT.Font = Enum.Font.GothamBold
Instance.new("UICorner", Check_GBCvUdlT).CornerRadius = UDim.new(0, 6)

local Get_LsoXfBSt = Instance.new("TextButton", Main_gVteKicP)
Get_LsoXfBSt.Size = UDim2.new(0.4, 0, 0, 35)
Get_LsoXfBSt.Position = UDim2.new(0.525, 0, 0.65, 0)
Get_LsoXfBSt.BackgroundColor3 = Color3.fromRGB(213, 59, 186)
Get_LsoXfBSt.Text = "GET KEY"
Get_LsoXfBSt.TextColor3 = Color3.new(1,1,1)
Get_LsoXfBSt.Font = Enum.Font.GothamBold
Instance.new("UICorner", Get_LsoXfBSt).CornerRadius = UDim.new(0, 6)

-- Logic
Get_LsoXfBSt.MouseButton1Click:Connect(function()
    setclipboard("https://direct-link.net/2628650/5ke8XjzaCfDT")
    Get_LsoXfBSt.Text = "COPIED URL!"
    task.wait(2)
    Get_LsoXfBSt.Text = "GET KEY"
end)

Check_GBCvUdlT.MouseButton1Click:Connect(function()
    local input = Box_QkDlegbz.Text
    Check_GBCvUdlT.Text = "WAITING..."
    local success, key = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt") end)
    
    if success and input == key:gsub("%s+", "") then
        Check_GBCvUdlT.Text = "SUCCESS"
        task.wait(0.5)
        SG_noBVzjnJ:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
    else
        Check_GBCvUdlT.Text = "INVALID KEY"
        Check_GBCvUdlT.BackgroundColor3 = Color3.fromRGB(150, 30, 30)
        task.wait(1.5)
        Check_GBCvUdlT.Text = "LOGIN"
        Check_GBCvUdlT.BackgroundColor3 = Color3.fromRGB(30, 150, 30)
    end
end)
