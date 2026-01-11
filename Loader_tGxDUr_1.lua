
--// System Optimization v4.37
local ZbOHjePv = 19367; -- junk var
local idMafWAK = 78987; -- junk var
local dbpbEqNH = 69536; -- junk var
local XQgDuLPr = 28713; -- junk var
local DpQYutpV = 65996; -- junk var
local EQgLrcGR = 18013; -- junk var
local HHgvwskM = 87262; -- junk var
local SkjbQHTd = 8181; -- junk var
local CVDKBDVf = 54103; -- junk var
local iKFgnCUc = 12650; -- junk var
local VwXjopkY = 52405; -- junk var
local Wczuujzm = 91654; -- junk var
local VogOYlUY = 92257; -- junk var
local TmzPNlds = 15394; -- junk var
local wEwTPQIj = 50251; -- junk var
local qZhKzrYL = 23909; -- junk var
local kFODSonr = 72456; -- junk var
local eHVTfvyZ = 77597; -- junk var
local jTAwFrVk = 81398; -- junk var
local kOBiTjzh = 82345; -- junk var
local JbMddQbm = 35018; -- junk var
local QFvAJvvq = 20756; -- junk var
local lQhBIRHd = 37056; -- junk var
local QBgFBkCc = 2001; -- junk var
local WwBTWPVH = 13979; -- junk var
local LNBqllBV = 37127; -- junk var
local TJozzZEZ = 88958; -- junk var
local ECoqtNJO = 13535; -- junk var
local kZyAntxH = 99842; -- junk var
local XvoinxQu = 87870; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 252a8d2ea0e04b3894a9a5e4a299ef3b ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("hCActt") then CoreGui["hCActt"]:Destroy() end

local hCActt = Instance.new("ScreenGui", CoreGui)
hCActt.Name = "hCActt"
local MZQdqkX = Instance.new("Frame", hCActt)
local iKgFgEhK = Instance.new("TextBox", MZQdqkX)

MZQdqkX.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MZQdqkX.BorderSizePixel = 0
MZQdqkX.Position = UDim2.new(0.5, -175, 0.5, -100)
MZQdqkX.Size = UDim2.new(0, 350, 0, 200)
MZQdqkX.Active = true
MZQdqkX.Draggable = true
Instance.new("UICorner", MZQdqkX).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", MZQdqkX)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

iKgFgEhK.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
iKgFgEhK.Position = UDim2.new(0.1, 0, 0.35, 0)
iKgFgEhK.Size = UDim2.new(0.8, 0, 0, 38)
iKgFgEhK.PlaceholderText = "Enter Key..."
iKgFgEhK.Text = ""
iKgFgEhK.TextColor3 = Color3.new(1,1,1)
iKgFgEhK.Font = Enum.Font.Gotham
Instance.new("UICorner", iKgFgEhK)

local b_log = Instance.new("TextButton", MZQdqkX)
local b_get = Instance.new("TextButton", MZQdqkX)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(149, 43, 130))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = iKgFgEhK.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        hCActt:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula Client"
        local ACCENT_COLOR = Color3.fromRGB(149, 43, 130) 
        
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/notzanocoddz4/BobHub/main/Place/BlindShot.lua"))() 
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
--// System Optimization v7.56
local lfVlsFKb = 99972; -- junk var
local gstMZDMe = 81304; -- junk var
local YquTLGLr = 6015; -- junk var
local XxTMUHZd = 56153; -- junk var
local GIPsglYF = 36678; -- junk var
local RWJgAeDa = 92783; -- junk var
local flKMLtLU = 31632; -- junk var
local NBoUUZwm = 15561; -- junk var
local kmxgvEqO = 58614; -- junk var
local jvwAJOdt = 19530; -- junk var
local ZCIpUZtE = 75489; -- junk var
local LvSDnWrr = 87597; -- junk var
local uOOoSXXK = 30412; -- junk var
local cNYnGZLM = 17500; -- junk var
local fnqEwMSJ = 32276; -- junk var
local lEvURBaL = 23965; -- junk var
local HNxXbGAy = 63120; -- junk var
local eslTzgIO = 73208; -- junk var
local wOiPzbjI = 66923; -- junk var
local XkmnWuet = 19828; -- junk var
local SqLuPTcY = 64201; -- junk var
local DvTuACdo = 35881; -- junk var
local xdfxKcYC = 77965; -- junk var
local IOHGEXEw = 11309; -- junk var
local jyjkcFPJ = 68288; -- junk var
local AfvqhIqt = 90841; -- junk var
local sPwJtNap = 23334; -- junk var

