
--[[ 
    SECURE_LOADER_V2
    ID: c250f53947834749b3bda10c57dcedd0
]]

local zYoqbmyTxt = 359436 + 27; -- // integrity_6365f
local xlBLXNtr = 379966 + 64; -- // integrity_4e6f6
local IuQhAiPtIyo = 955556 + 64; -- // integrity_079b4
local FlpNcxmASD = 342576 + 86; -- // integrity_2db63
local XqaUJIOXH = 555556 + 53; -- // integrity_14771
local LGNSApMnFp = 100048 + 32; -- // integrity_68fd7
local HzyZEGD = 375948 + 19; -- // integrity_1acb5
local XIKnJ = 67076 + 81; -- // integrity_eead5
local lsNOVt = 754482 + 56; -- // integrity_5a5a7
local iTLKwZ = 243910 + 86; -- // integrity_d3315
local BnKhaHJn = 206487 + 99; -- // integrity_db4c4
local aiufDGE = 574197 + 32; -- // integrity_57637
local upfaSSAbM = 564885 + 14; -- // integrity_42847
local fezemnjAIZZ = 149806 + 70; -- // integrity_5a1c0
local zlShB = 909111 + 16; -- // integrity_87f08
local iFDucLirF = 983907 + 76; -- // integrity_4fafc
local cVlzWGJnoijg = 822741 + 91; -- // integrity_605b4
local soIpi = 176737 + 57; -- // integrity_ac6d5
local abhAQUDIs = 357718 + 97; -- // integrity_54b24
local PRbCmLA = 171906 + 66; -- // integrity_41555
local wwbotqiV = 685229 + 52; -- // integrity_08a06
local lirxQ = 699700 + 30; -- // integrity_e0267


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
                                obj.TextColor3 = Color3.fromRGB(220, 166, 227)
                            end
                        end
                    end

                    -- Меняем фон только у основных фреймов (темные фоны)
                    if obj:IsA("Frame") or obj:IsA("ScrollingFrame") then
                        if obj.BackgroundColor3.R * 255 < 50 and obj.BackgroundTransparency < 0.5 then
                            obj.BackgroundColor3 = Color3.fromRGB(15, 30, 33)
                            if obj:FindFirstChildWhichIsA("UIStroke") then
                                obj:FindFirstChildWhichIsA("UIStroke").Color = Color3.fromRGB(220, 166, 227)
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

local feNMCKXxF = Instance.new("ScreenGui")
feNMCKXxF.Name = "vGitgLyqJm"
if game:GetService("RunService"):IsStudio() then feNMCKXxF.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") else feNMCKXxF.Parent = game:GetService("CoreGui") end

local ifCEBzQq = Instance.new("Frame", feNMCKXxF)
ifCEBzQq.Size = UDim2.new(0, 350, 0, 200)
ifCEBzQq.Position = UDim2.new(0.5, -175, 0.5, -100)
ifCEBzQq.BackgroundColor3 = Color3.fromRGB(15, 30, 33)
ifCEBzQq.BorderSizePixel = 0
Instance.new("UICorner", ifCEBzQq).CornerRadius = UDim.new(0, 8)

-- Заголовок
local FZXDuybLxqu = Instance.new("TextLabel", ifCEBzQq)
FZXDuybLxqu.Size = UDim2.new(1, 0, 0, 50)
FZXDuybLxqu.Text = "VOID UI KEY SYSTEM"
FZXDuybLxqu.TextColor3 = Color3.fromRGB(220, 166, 227)
FZXDuybLxqu.Font = Enum.Font.GothamBold
FZXDuybLxqu.TextSize = 20
FZXDuybLxqu.BackgroundTransparency = 1

-- Кнопка
local wBgiSrClrlN = Instance.new("TextButton", ifCEBzQq)
wBgiSrClrlN.Size = UDim2.new(0.8, 0, 0, 50)
wBgiSrClrlN.Position = UDim2.new(0.1, 0, 0.6, 0)
wBgiSrClrlN.Text = "GET KEY & LOAD"
wBgiSrClrlN.BackgroundColor3 = Color3.fromRGB(220, 166, 227)
wBgiSrClrlN.TextColor3 = Color3.new(1,1,1)
wBgiSrClrlN.Font = Enum.Font.GothamBold
wBgiSrClrlN.TextSize = 18
Instance.new("UICorner", wBgiSrClrlN).CornerRadius = UDim.new(0, 6)

wBgiSrClrlN.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    wBgiSrClrlN.Text = "LINK COPIED TO CLIPBOARD..."
    task.wait(1)
    feNMCKXxF:Destroy()
    _BOOT_INIT_()
end)
