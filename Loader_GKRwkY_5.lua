
--// System Optimization v7.82
local qVnFtECx = 33661; -- junk var
local tUoFLFNI = 19146; -- junk var
local aPPSXkzC = 70158; -- junk var
local UUenppxC = 66951; -- junk var
local MjTzlZCC = 61071; -- junk var
local jYYdOBLw = 21917; -- junk var
local YBQkXJRZ = 4266; -- junk var
local hovjYVuL = 82683; -- junk var
local tLsgvRvQ = 91012; -- junk var
local woKxztaD = 19115; -- junk var
local XjjnKYxK = 81814; -- junk var
local xsRqrcSR = 19478; -- junk var
local BKOWsHll = 67264; -- junk var
local dUzjXOGJ = 40108; -- junk var
local LGylRhvw = 93301; -- junk var
local GoVXnnlj = 98803; -- junk var
local AiHwKMpE = 73994; -- junk var
local GaWjtwZX = 38529; -- junk var
local ZgABdfpe = 80787; -- junk var
local EAFsRqAf = 83176; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: d5369efc28834da4ae0d4a715b9bc288 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MytRrU") then CoreGui["MytRrU"]:Destroy() end

local MytRrU = Instance.new("ScreenGui", CoreGui)
MytRrU.Name = "MytRrU"
local qpRRJOI = Instance.new("Frame", MytRrU)
local vorvCWGZ = Instance.new("TextBox", qpRRJOI)

qpRRJOI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
qpRRJOI.BorderSizePixel = 0
qpRRJOI.Position = UDim2.new(0.5, -175, 0.5, -100)
qpRRJOI.Size = UDim2.new(0, 350, 0, 200)
qpRRJOI.Active = true
qpRRJOI.Draggable = true
Instance.new("UICorner", qpRRJOI).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", qpRRJOI)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

vorvCWGZ.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
vorvCWGZ.Position = UDim2.new(0.1, 0, 0.35, 0)
vorvCWGZ.Size = UDim2.new(0.8, 0, 0, 38)
vorvCWGZ.PlaceholderText = "Enter Key..."
vorvCWGZ.Text = ""
vorvCWGZ.TextColor3 = Color3.new(1,1,1)
vorvCWGZ.Font = Enum.Font.Gotham
Instance.new("UICorner", vorvCWGZ)

local b_log = Instance.new("TextButton", qpRRJOI)
local b_get = Instance.new("TextButton", qpRRJOI)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(187, 190, 40))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = vorvCWGZ.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        MytRrU:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula X"
        local ACCENT_COLOR = Color3.fromRGB(187, 190, 40) 
        
        local oldInstanceNew = Instance.new
        
        local function newInstanceHook(class, parent)
            local obj = oldInstanceNew(class, parent)
            task.spawn(function()
                task.wait() 
                -- 1. Подмена текста
                if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                    if #obj.Text > 3 or obj.Text:find("Hub") then
                        if obj.Size.Y.Offset > 15 or obj.Name:find("Title") then
                            obj.Text = MY_NAME
                        end
                    end
                end
                -- 2. Подмена цвета
                if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("ScrollingFrame") then
                    local c = obj.BackgroundColor3
                    if (c.r > 0.1 or c.g > 0.1 or c.b > 0.1) and (c.r < 0.9) then
                        obj.BackgroundColor3 = ACCENT_COLOR
                    end
                end
                -- 3. Подмена обводки
                if obj:IsA("UIStroke") then
                    obj.Color = ACCENT_COLOR
                end
            end)
            return obj
        end
        
        if getgenv then
            getgenv().Instance = {new = newInstanceHook}
        end
        
        -- Запуск целевого скрипта
        local success, err = pcall(function() 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/blackowl1231/Z3US/refs/heads/main/main.lua"))() 
        end)
        if not success then warn("Script Load Error: " .. tostring(err)) end
        -- === [ LAMPERUZ UNIQUEIZER END ] ===
    
    else
        b_log.Text = "WRONG"
        task.wait(1)
        b_log.Text = "LOGIN"
    end
end)

    end)
    if not s then warn("Loader Error: " .. tostring(e)) end
end)
--// MAIN EXECUTION END
--// System Optimization v7.68
local vTasxsru = 36197; -- junk var
local KioNTxax = 27032; -- junk var
local bokDrZMp = 29312; -- junk var
local uOlhmCzj = 91638; -- junk var
local vKPeegDJ = 28455; -- junk var
local QgPVtdGD = 66418; -- junk var
local PFrgvOkJ = 74621; -- junk var
local TaPVyYzb = 95295; -- junk var
local kCOGTQqJ = 56599; -- junk var
local VZnArtRs = 16404; -- junk var
local UTxSsjqF = 61352; -- junk var
local yoEXMOhH = 86266; -- junk var
local wcdeWSZb = 26915; -- junk var
local AuoTjjLw = 30108; -- junk var
local FtRIgUGo = 90870; -- junk var
local RRzzSGTP = 52930; -- junk var
local hLCAgZqj = 46216; -- junk var
local VxOVipGX = 75860; -- junk var
local tkTxQPEo = 40894; -- junk var
local gmZReKEx = 77107; -- junk var
local EEZAHDqP = 81886; -- junk var
local tOinVxEa = 4788; -- junk var
local spBwrjXJ = 62461; -- junk var
local HGBdniYd = 45466; -- junk var
local ZLpSgHgS = 77302; -- junk var
local TyycMTKo = 75711; -- junk var

