
--[[ 
    ENCRYPTED_ID: 470dcc1db8df42ed967a3f8bfe91d01c
    LOAD_HASH: UkgHJPWHEQE1QTrBo9yGbQ==
]]

local RvgFewALAC = 232233 + 23; -- // integrity_378ff
local apIMIHBKlwpx = 531949 + 72; -- // integrity_2c3ac
local xpvxlaBfLD = 697226 + 74; -- // integrity_b0167
local DqUpFfaAXBp = 353811 + 78; -- // integrity_9fb6a
local fIyHprdAkTjL = 42407 + 86; -- // integrity_3a467
local BMmUbJIRB = 553389 + 99; -- // integrity_1e58f
local ZGMnvjr = 607909 + 55; -- // integrity_9f5c2
local scmwKC = 395956 + 14; -- // integrity_46281
local GRfnPkj = 15047 + 71; -- // integrity_4751a
local AUcqZqzZCRPe = 590760 + 2; -- // integrity_69d5b
local QHMquxGxTe = 480292 + 24; -- // integrity_183da
local pTXibiLvLhQc = 485833 + 46; -- // integrity_be987
local ijWFLZLSFx = 341236 + 92; -- // integrity_f52a9
local nhMZRpLKq = 636508 + 85; -- // integrity_883cd
local eyoeoAEDru = 342108 + 61; -- // integrity_bfef3
local VyRgpTSQmT = 242975 + 3; -- // integrity_b5408
local VPiWHN = 205508 + 21; -- // integrity_3928d
local noiDH = 998450 + 40; -- // integrity_17631
local hxCDrwNueU = 673576 + 27; -- // integrity_2291d
local lkYCi = 259842 + 88; -- // integrity_b6340
local UlrZI = 307563 + 68; -- // integrity_6b5ab
local zobSm = 206023 + 56; -- // integrity_cd5a2
local bBSWyf = 584535 + 13; -- // integrity_69d65
local AmoIuf = 431267 + 27; -- // integrity_55417
local fpVECRn = 875632 + 78; -- // integrity_f0a46
local qCATFTnd = 795920 + 14; -- // integrity_fe244


local function _BOOT_INIT_()
    getgenv().Instance = {
        new = function(class, parent)
            return game:GetService("CoreGui") -- Fake instance protect
        end
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/afkar-gg/sc/refs/heads/main/blindshot"))()
end

local VBuibauD = Instance.new("ScreenGui", game:GetService("CoreGui"))
local nMcHGvioyEx = Instance.new("Frame", VBuibauD)
nMcHGvioyEx.Size = UDim2.new(0, 320, 0, 190)
nMcHGvioyEx.Position = UDim2.new(0.5, -160, 0.5, -95)
nMcHGvioyEx.BackgroundColor3 = Color3.fromRGB(16, 15, 34)
nMcHGvioyEx.BorderSizePixel = 0
Instance.new("UICorner", nMcHGvioyEx).CornerRadius = UDim.new(0, 10)

local uRZJdUNUy = Instance.new("TextLabel", nMcHGvioyEx)
uRZJdUNUy.Size = UDim2.new(1, 0, 0, 50)
uRZJdUNUy.Text = "ELITE MOD"
uRZJdUNUy.TextColor3 = Color3.new(1,1,1)
uRZJdUNUy.Font = Enum.Font.GothamBold
uRZJdUNUy.BackgroundTransparency = 1

local ytoHInJaCB = Instance.new("TextButton", nMcHGvioyEx)
ytoHInJaCB.Size = UDim2.new(0.8, 0, 0, 45)
ytoHInJaCB.Position = UDim2.new(0.1, 0, 0.6, 0)
ytoHInJaCB.Text = "LOAD SCRIPT"
ytoHInJaCB.BackgroundColor3 = Color3.fromRGB(237, 189, 92)
ytoHInJaCB.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", ytoHInJaCB)

ytoHInJaCB.MouseButton1Click:Connect(function()
    VBuibauD:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/afkar-gg/sc/refs/heads/main/blindshot"))()
end)
