
--[[ ID: 541a512740294cc09197ac6cea71adf6 ]]
local sJtAHWMDJ = 201653 + 28; -- // integrity_check_f2e97
local gqOZOAWvBx = 214752 + 33; -- // integrity_check_a6f22
local JAqEQKm = 204109 + 7; -- // integrity_check_7df8d
local ybFoqa = 19049 + 80; -- // integrity_check_aac15
local ZVGjurSgfX = 936459 + 67; -- // integrity_check_dd19b
local NHuEjifyzFe = 524953 + 21; -- // integrity_check_98df7
local zqgXzUJ = 523849 + 1; -- // integrity_check_0ee91
local fyhsdVB = 337778 + 60; -- // integrity_check_823e8
local qgDXv = 981601 + 61; -- // integrity_check_d6b59
local sANBJ = 233760 + 70; -- // integrity_check_8c788
local kvHABmGChBi = 458334 + 38; -- // integrity_check_d7c00
local puPNGcam = 640171 + 85; -- // integrity_check_32c3b
local dgTeBrbum = 410136 + 80; -- // integrity_check_ef889
local JeZuo = 43743 + 3; -- // integrity_check_8ed58
local OmVATtHyE = 174969 + 22; -- // integrity_check_bb37d
local ZxlLwjrU = 556666 + 24; -- // integrity_check_9bad7
local GLcUDfkzgA = 808233 + 41; -- // integrity_check_8db19
local lOKhhiwdU = 742613 + 5; -- // integrity_check_132b7
local JvQiNUiIsF = 817036 + 92; -- // integrity_check_5e258
local lMiKs = 372358 + 21; -- // integrity_check_087e1
local QDFLTIycSloh = 297129 + 29; -- // integrity_check_e2454
local NVQvxP = 118304 + 19; -- // integrity_check_b2cd3
local RIlObPbxur = 894739 + 94; -- // integrity_check_b9bf4
local gEaDJO = 582632 + 6; -- // integrity_check_f514b
local mWwtLjk = 87009 + 7; -- // integrity_check_1856e
local vThNaF = 268618 + 24; -- // integrity_check_071f1
local TTENYG = 209658 + 40; -- // integrity_check_ba796
local HAeCasK = 624487 + 85; -- // integrity_check_93902
local syPfXpL = 609146 + 42; -- // integrity_check_32768
local LbehDyH = 581630 + 37; -- // integrity_check_18a6d
local vlDGQAIPjyN = 481933 + 20; -- // integrity_check_fa1f5
local cYLTu = 468825 + 38; -- // integrity_check_288cb
local bUgZAVxrpLbW = 17069 + 42; -- // integrity_check_f879f
local TAqoEeYeAeB = 861354 + 14; -- // integrity_check_b17ed

local function _INIT_BOOT_()
    local _old = Instance.new
    getgenv().Instance = {
        new = function(class, parent)
            local obj = _old(class, parent)
            task.spawn(function()
                task.wait(0.1)
                pcall(function()
                    if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                        if #obj.Text > 3 or obj.Text:find("Hub") then obj.Text = "Aura Mod" end
                    end
                    if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("ScrollingFrame") then
                        if (obj.BackgroundColor3.r > 0.05) then obj.BackgroundColor3 = Color3.fromRGB(139, 179, 184) end
                    end
                    if obj:IsA("UIStroke") then obj.Color = Color3.fromRGB(139, 179, 184) end
                end)
            end)
            return obj
        end
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))()
end
local kwFsMMaoAy = 481272 + 14; -- // integrity_check_8bb25
local zkWUDlB = 280249 + 62; -- // integrity_check_ffd76
local rkvXsKNyQeD = 798571 + 1; -- // integrity_check_5b5a8
local JdPjPejzRF = 670549 + 91; -- // integrity_check_ce702
local vJreuPvLb = 186197 + 10; -- // integrity_check_70ed0
local OfApHqsDY = 743361 + 10; -- // integrity_check_77f5d
local QPIzOlDFpI = 59512 + 28; -- // integrity_check_c19e4
local fzCpQdKGZT = 841983 + 63; -- // integrity_check_e5501
local NVSnvfQ = 278683 + 14; -- // integrity_check_eac56
local fWcMNAQY = 107301 + 51; -- // integrity_check_b459b
local hqkMCer = 488641 + 91; -- // integrity_check_d7bf7
local RqGaG = 943068 + 41; -- // integrity_check_fcd11
local IxGMfJfvelu = 11817 + 34; -- // integrity_check_ac33e
local ZRsgiaKoix = 74408 + 51; -- // integrity_check_60d8f
local xPVfCBIKYyW = 230916 + 28; -- // integrity_check_25598
local wiJFbyCeCK = 755636 + 15; -- // integrity_check_fab2e
local bMVbrJ = 226128 + 90; -- // integrity_check_60c6f
local bUYkjzV = 690614 + 56; -- // integrity_check_f860e
local ZyDlaVT = 609121 + 56; -- // integrity_check_be1a7
local fMCFIxNIcom = 673362 + 27; -- // integrity_check_66cad
local YFymJsGA = 332386 + 74; -- // integrity_check_363f6
local NDvfCosAiA = 862952 + 35; -- // integrity_check_69bcd
local ihHYK = 507567 + 59; -- // integrity_check_970cf

local drvWitkKB = Instance.new("ScreenGui", game:GetService("CoreGui"))
local uKAYHlYGV = Instance.new("Frame", drvWitkKB)
uKAYHlYGV.Size = UDim2.new(0, 320, 0, 190)
uKAYHlYGV.Position = UDim2.new(0.5, -160, 0.5, -95)
uKAYHlYGV.BackgroundColor3 = Color3.fromRGB(21, 16, 35)
Instance.new("UICorner", uKAYHlYGV)
local ZgxMEmJ = Instance.new("TextLabel", uKAYHlYGV)
ZgxMEmJ.Size = UDim2.new(1, 0, 0, 45)
ZgxMEmJ.Text = "AURA MOD"
ZgxMEmJ.TextColor3 = Color3.new(1,1,1)
ZgxMEmJ.BackgroundTransparency = 1
local mAPQvaVwR = Instance.new("TextButton", uKAYHlYGV)
mAPQvaVwR.Size = UDim2.new(0.8, 0, 0, 40)
mAPQvaVwR.Position = UDim2.new(0.1, 0, 0.6, 0)
mAPQvaVwR.Text = "AUTHENTICATE"
mAPQvaVwR.BackgroundColor3 = Color3.fromRGB(139, 179, 184)
Instance.new("UICorner", mAPQvaVwR)
mAPQvaVwR.MouseButton1Click:Connect(function() drvWitkKB:Destroy(); _INIT_BOOT_() end)
