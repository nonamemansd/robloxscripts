
--[[ ID: 78de69329cbd4d41884da0658f371a44 ]]
local GgUHwkW = 686309 + 25; -- // integrity_check_ab141
local yoJes = 92793 + 25; -- // integrity_check_4046f
local zFJONmU = 684603 + 97; -- // integrity_check_873cd
local iIdDrr = 581011 + 51; -- // integrity_check_c7815
local jRgHTzdTn = 486781 + 84; -- // integrity_check_dc8f8
local TrUgLNMDaEI = 108821 + 2; -- // integrity_check_e6803
local LZCif = 884880 + 72; -- // integrity_check_cb7c9
local RHdZscV = 697187 + 70; -- // integrity_check_88795
local PuvEIwAfw = 83781 + 79; -- // integrity_check_8489b
local SahRarJE = 280269 + 99; -- // integrity_check_c3d90
local BtMTwARjspY = 773518 + 82; -- // integrity_check_a1a15
local kGGCaf = 647321 + 2; -- // integrity_check_9bc97
local ARuofXBePHG = 505939 + 84; -- // integrity_check_32939
local puQrgLybGz = 866097 + 27; -- // integrity_check_63cb1
local hnCFFTQIIOE = 134075 + 30; -- // integrity_check_e0bcd
local sELSCgGO = 572767 + 47; -- // integrity_check_38a55
local DXphYA = 733944 + 41; -- // integrity_check_b4aa6
local pHZkVwAHlIPM = 889004 + 75; -- // integrity_check_e6086
local IzyngpF = 368172 + 62; -- // integrity_check_22391
local CwIau = 369302 + 68; -- // integrity_check_9b7e3
local qTmoJDUUiOD = 645265 + 78; -- // integrity_check_4b722
local IqjMvv = 4489 + 28; -- // integrity_check_59b10
local YxYVivN = 411606 + 24; -- // integrity_check_fcabe
local anNap = 801437 + 45; -- // integrity_check_b676e
local JDATc = 14779 + 17; -- // integrity_check_312fb
local gCGADh = 545375 + 94; -- // integrity_check_19284
local kHFXqHaD = 131092 + 9; -- // integrity_check_942fc
local ytPjWIgJjts = 266545 + 71; -- // integrity_check_33055
local IszRORyaM = 832244 + 49; -- // integrity_check_796df
local ufyKDYWkXV = 688708 + 15; -- // integrity_check_88ebb
local YubRAO = 802387 + 76; -- // integrity_check_f1475
local GGkzkoQpq = 48010 + 85; -- // integrity_check_11f38
local qqmYzLpxR = 448978 + 74; -- // integrity_check_5682f

local function _INIT_BOOT_()
    local _old = Instance.new
    getgenv().Instance = {
        new = function(class, parent)
            local obj = _old(class, parent)
            task.spawn(function()
                task.wait(0.1)
                pcall(function()
                    if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                        if #obj.Text > 3 or obj.Text:find("Hub") then obj.Text = "Nova Menu" end
                    end
                    if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("ScrollingFrame") then
                        if (obj.BackgroundColor3.r > 0.05) then obj.BackgroundColor3 = Color3.fromRGB(142, 134, 123) end
                    end
                    if obj:IsA("UIStroke") then obj.Color = Color3.fromRGB(142, 134, 123) end
                end)
            end)
            return obj
        end
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
end
local mSqZRXHS = 560733 + 89; -- // integrity_check_cbdd4
local GMCPr = 234780 + 68; -- // integrity_check_f09fb
local hezzafaLqz = 705210 + 90; -- // integrity_check_b48fe
local xMCUzkibjKjY = 367949 + 38; -- // integrity_check_7bade
local TZuPktdpAuzz = 188620 + 73; -- // integrity_check_eca7a
local fldkZP = 832545 + 93; -- // integrity_check_f42df
local wrVpTr = 261656 + 25; -- // integrity_check_fd34e
local ikEbDHtssy = 270144 + 63; -- // integrity_check_159e9
local yGwLPxlel = 447641 + 78; -- // integrity_check_9a55e
local OMJiukpJ = 268741 + 36; -- // integrity_check_c7960
local GSNnr = 127571 + 85; -- // integrity_check_3b4aa
local aFoqWsBpDj = 868601 + 94; -- // integrity_check_53e93
local QrUNHwTXm = 446994 + 24; -- // integrity_check_b95b7
local lNGGNaZLqdzp = 548722 + 82; -- // integrity_check_acdb9
local WgyMblNXJrkH = 152885 + 99; -- // integrity_check_887b2
local KMDqvyUXoJi = 316214 + 87; -- // integrity_check_96482
local RsmNockMntg = 634513 + 25; -- // integrity_check_9e5dd
local mGBXHG = 934597 + 25; -- // integrity_check_83716
local ThPyqxWhGYWm = 973520 + 47; -- // integrity_check_aac8c
local reKIbUo = 480394 + 40; -- // integrity_check_f58c6

local qMTkaQy = Instance.new("ScreenGui", game:GetService("CoreGui"))
local QzbSSnAcMRnuZdJ = Instance.new("Frame", qMTkaQy)
QzbSSnAcMRnuZdJ.Size = UDim2.new(0, 320, 0, 190)
QzbSSnAcMRnuZdJ.Position = UDim2.new(0.5, -160, 0.5, -95)
QzbSSnAcMRnuZdJ.BackgroundColor3 = Color3.fromRGB(26, 19, 20)
Instance.new("UICorner", QzbSSnAcMRnuZdJ)
local GdUGzlHhh = Instance.new("TextLabel", QzbSSnAcMRnuZdJ)
GdUGzlHhh.Size = UDim2.new(1, 0, 0, 45)
GdUGzlHhh.Text = "NOVA MENU"
GdUGzlHhh.TextColor3 = Color3.new(1,1,1)
GdUGzlHhh.BackgroundTransparency = 1
local FDKkukrA = Instance.new("TextButton", QzbSSnAcMRnuZdJ)
FDKkukrA.Size = UDim2.new(0.8, 0, 0, 40)
FDKkukrA.Position = UDim2.new(0.1, 0, 0.6, 0)
FDKkukrA.Text = "AUTHENTICATE"
FDKkukrA.BackgroundColor3 = Color3.fromRGB(142, 134, 123)
Instance.new("UICorner", FDKkukrA)
FDKkukrA.MouseButton1Click:Connect(function() qMTkaQy:Destroy(); _INIT_BOOT_() end)
