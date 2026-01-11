
--[[ 
    SECURE_LOADER_V2
    ID: 2ff5ca8a8cb343768b7264474a5b44ba
]]

local YhdleFknVJ = 383793 + 38; -- // integrity_7a36f
local KORevV = 917301 + 22; -- // integrity_69545
local ZwiPzVJaIYvR = 757723 + 86; -- // integrity_dfcd8
local xWnZV = 659236 + 17; -- // integrity_1160d
local hBoSLGcYhT = 5485 + 84; -- // integrity_19665
local UuhJKhy = 403725 + 35; -- // integrity_5bd90
local HCpZOvunNwpj = 398908 + 51; -- // integrity_6f0b0
local TUcZNkRztCUH = 221510 + 60; -- // integrity_0cdc0
local JqTfrn = 698678 + 82; -- // integrity_50019
local ISnrjnCZ = 362342 + 28; -- // integrity_6b963
local OtWXnRny = 742185 + 5; -- // integrity_e4f31
local uVWfDTUXbsmM = 35710 + 49; -- // integrity_91bf9
local HgyBiTof = 37430 + 33; -- // integrity_612da
local XzNXXZWDUD = 401912 + 25; -- // integrity_65029
local mwKWO = 999087 + 53; -- // integrity_04fcd
local iHFjfV = 628897 + 94; -- // integrity_bf8a3
local tDQQMfbYHLO = 155332 + 68; -- // integrity_19d4d
local WeNPAiKTw = 748825 + 15; -- // integrity_fb442
local hjiExyMJua = 80814 + 10; -- // integrity_825ac
local wmwrdW = 661108 + 55; -- // integrity_bb50a
local bFcXEWOL = 947741 + 75; -- // integrity_21847
local qjeiyzTW = 201970 + 89; -- // integrity_78c83
local jZfBPSAsJ = 605279 + 95; -- // integrity_9652a


local function _BOOT_INIT_()
    -- Безопасный перехват GUI (Только цвета и заголовки)
    local _old = Instance.new
    getgenv().Instance = {
        new = function(class, parent)
            local obj = _old(class, parent)
            task.spawn(function()
                pcall(function()
                    -- Ждем применения свойств скриптом
                    task.wait(0.05) 
                    
                    -- Меняем только ГЛАВНЫЕ заголовки (фильтр по размеру текста или имени)
                    if obj:IsA("TextLabel") then
                        if (obj.TextSize > 14 and #obj.Text > 5) or obj.Name:lower():find("title") or obj.Name:lower():find("header") then
                            -- Не меняем если это цифры или короткие слова
                            if not tonumber(obj.Text) and obj.Text ~= "Ok" and obj.Text ~= "Yes" then
                                obj.TextColor3 = Color3.fromRGB(239, 156, 220)
                            end
                        end
                    end

                    -- Меняем фон только у основных фреймов (темные фоны)
                    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
                        if obj.BackgroundColor3.R * 255 < 50 and obj.BackgroundTransparency < 0.5 then
                            obj.BackgroundColor3 = Color3.fromRGB(18, 30, 34)
                            if obj:FindFirstChildWhichIsA("UIStroke") then
                                obj:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(239, 156, 220)
                            end
                        end
                    end
                end)
            end)
            return obj
        end
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notzanocoddz4/BobHub/main/Place/BlindShot.lua"))()
end

local LkrNtOj = Instance.new("ScreenGui")
LkrNtOj.Name = "udHDtChdcg"
if game:GetService("RunService"):IsStudio() then LkrNtOj.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") else LkrNtOj.Parent = game:GetService("CoreGui") end

local fVaXPMefQzTetrH = Instance.new("Frame", LkrNtOj)
fVaXPMefQzTetrH.Size = UDim2.new(0, 350, 0, 200)
fVaXPMefQzTetrH.Position = UDim2.new(0.5, -175, 0.5, -100)
fVaXPMefQzTetrH.BackgroundColor3 = Color3.fromRGB(18, 30, 34)
fVaXPMefQzTetrH.BorderSizePixel = 0
Instance.new("UICorner", fVaXPMefQzTetrH).CornerRadius = UDim.new(0, 8)

-- Заголовок
local LIkOWMlwePBqKaZ = Instance.new("TextLabel", fVaXPMefQzTetrH)
LIkOWMlwePBqKaZ.Size = UDim2.new(1, 0, 0, 50)
LIkOWMlwePBqKaZ.Text = "VORTEX BYTE KEY SYSTEM"
LIkOWMlwePBqKaZ.TextColor3 = Color3.fromRGB(239, 156, 220)
LIkOWMlwePBqKaZ.Font = Enum.Font.GothamBold
LIkOWMlwePBqKaZ.TextSize = 20
LIkOWMlwePBqKaZ.BackgroundTransparency = 1

-- Кнопка
local ahVuDSwnIFArmz = Instance.new("TextButton", fVaXPMefQzTetrH)
ahVuDSwnIFArmz.Size = UDim2.new(0.8, 0, 0, 50)
ahVuDSwnIFArmz.Position = UDim2.new(0.1, 0, 0.6, 0)
ahVuDSwnIFArmz.Text = "GET KEY & LOAD"
ahVuDSwnIFArmz.BackgroundColor3 = Color3.fromRGB(239, 156, 220)
ahVuDSwnIFArmz.TextColor3 = Color3.new(1,1,1)
ahVuDSwnIFArmz.Font = Enum.Font.GothamBold
ahVuDSwnIFArmz.TextSize = 18
Instance.new("UICorner", ahVuDSwnIFArmz).CornerRadius = UDim.new(0, 6)

ahVuDSwnIFArmz.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    ahVuDSwnIFArmz.Text = "LINK COPIED TO CLIPBOARD..."
    task.wait(1)
    LkrNtOj:Destroy()
    _BOOT_INIT_()
end)
