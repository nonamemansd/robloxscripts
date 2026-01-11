
--[[ ENCRYPTED_ID: 6410b51de50246e9a26ed9495e0988a4 ]]
local ivQpYXjYhwn = 42399 + 63; -- // integrity_a7ae6
local coHMyzKyWjXB = 33540 + 82; -- // integrity_3f4c4
local MJzFHkcb = 651015 + 63; -- // integrity_f34f8
local ROChwt = 920109 + 3; -- // integrity_74665
local IMYLsSFe = 634402 + 74; -- // integrity_dc2ac
local pTRGvwWzdux = 897510 + 14; -- // integrity_0cf4e
local kinFXX = 389014 + 74; -- // integrity_01fad
local AyfPqwnv = 438879 + 62; -- // integrity_a0a5c
local YeuXvbC = 967560 + 68; -- // integrity_8d03e
local DrisXN = 520149 + 92; -- // integrity_fcb69
local KJMiOjm = 163655 + 19; -- // integrity_89b35
local AdpEokfJ = 116693 + 7; -- // integrity_48129
local nBnoPYpGTKq = 581819 + 81; -- // integrity_04790
local GuVHVxaNwU = 640573 + 40; -- // integrity_9c1c0
local mCiTPJhvI = 15989 + 76; -- // integrity_1ec63
local CXMgilctCp = 444525 + 31; -- // integrity_90baf
local GdrtWR = 484644 + 86; -- // integrity_68804
local ywVtiXtp = 714800 + 56; -- // integrity_dc32c
local DkHifGbdx = 310832 + 76; -- // integrity_2c8d2
local cDVTyiRiKgY = 185031 + 93; -- // integrity_ec17d
local AjganlnlEgf = 462490 + 23; -- // integrity_7b39a

local vdTICutBaXysH = Instance.new("ScreenGui", game:GetService("CoreGui"))
local qJPifCZVpr = Instance.new("Frame", vdTICutBaXysH)
qJPifCZVpr.Size = UDim2.new(0, 320, 0, 190)
qJPifCZVpr.Position = UDim2.new(0.5, -160, 0.5, -95)
qJPifCZVpr.BackgroundColor3 = Color3.fromRGB(20, 23, 28)
Instance.new("UICorner", qJPifCZVpr)
local qWJaeoly = Instance.new("TextLabel", qJPifCZVpr)
qWJaeoly.Size = UDim2.new(1, 0, 0, 50)
qWJaeoly.Text = "ELITE MENU"
qWJaeoly.TextColor3 = Color3.new(1,1,1)
qWJaeoly.BackgroundTransparency = 1
local iKmQarPr = Instance.new("TextButton", qJPifCZVpr)
iKmQarPr.Size = UDim2.new(0.8, 0, 0, 45)
iKmQarPr.Position = UDim2.new(0.1, 0, 0.6, 0)
iKmQarPr.Text = "LOAD SCRIPT"
iKmQarPr.BackgroundColor3 = Color3.fromRGB(178, 228, 183)
Instance.new("UICorner", iKmQarPr)
iKmQarPr.MouseButton1Click:Connect(function()
    vdTICutBaXysH:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/afkar-gg/sc/refs/heads/main/blindshot"))()
end)
