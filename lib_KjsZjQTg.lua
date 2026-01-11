
--[[ ENCRYPTED_ID: a4c67c99080341ada05348bd5228e2b4 ]]
local fthsy = 821772 + 90; -- // integrity_dc844
local uLbNSfNj = 204935 + 10; -- // integrity_cdb9a
local vtvhNnwkxdKU = 772719 + 12; -- // integrity_1a4c0
local eBJzNqhO = 899576 + 59; -- // integrity_4b214
local YMDvTBOVwsXp = 760665 + 76; -- // integrity_a69c8
local BsiQrvVaDoMK = 632341 + 95; -- // integrity_26294
local ZTzNfZK = 385008 + 19; -- // integrity_2c061
local KslnPDwMukyT = 516391 + 85; -- // integrity_f5fcd
local dPmIj = 281883 + 31; -- // integrity_0961a
local pNTvwnYwdvH = 548333 + 86; -- // integrity_5c46c
local RwSJLp = 750319 + 45; -- // integrity_b07c9
local lUPcU = 221920 + 7; -- // integrity_90e37
local MEmxK = 554091 + 30; -- // integrity_cdf64
local ARXPcSoUcvju = 956880 + 29; -- // integrity_49795
local lVWnjq = 192992 + 50; -- // integrity_735c4
local WqUynivI = 817559 + 83; -- // integrity_16bdd
local PjMwYOiwU = 583661 + 35; -- // integrity_789aa
local lppKerYGiyB = 354828 + 2; -- // integrity_1dda8

local TXNDkVwWSWrcZz = Instance.new("ScreenGui", game:GetService("CoreGui"))
local ggGRozlU = Instance.new("Frame", TXNDkVwWSWrcZz)
ggGRozlU.Size = UDim2.new(0, 320, 0, 190)
ggGRozlU.Position = UDim2.new(0.5, -160, 0.5, -95)
ggGRozlU.BackgroundColor3 = Color3.fromRGB(22, 28, 32)
Instance.new("UICorner", ggGRozlU)
local jblHbkZcUoFSHVC = Instance.new("TextLabel", ggGRozlU)
jblHbkZcUoFSHVC.Size = UDim2.new(1, 0, 0, 50)
jblHbkZcUoFSHVC.Text = "SOLAR MOD"
jblHbkZcUoFSHVC.TextColor3 = Color3.new(1,1,1)
jblHbkZcUoFSHVC.BackgroundTransparency = 1
local CSbKPXVGNAF = Instance.new("TextButton", ggGRozlU)
CSbKPXVGNAF.Size = UDim2.new(0.8, 0, 0, 45)
CSbKPXVGNAF.Position = UDim2.new(0.1, 0, 0.6, 0)
CSbKPXVGNAF.Text = "LOAD SCRIPT"
CSbKPXVGNAF.BackgroundColor3 = Color3.fromRGB(143, 70, 73)
Instance.new("UICorner", CSbKPXVGNAF)
CSbKPXVGNAF.MouseButton1Click:Connect(function()
    TXNDkVwWSWrcZz:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/afkar-gg/sc/refs/heads/main/blindshot"))()
end)
