
--// System Optimization v1.16
local nBjFOJaT = 50989; -- junk var
local xvmFPMII = 66557; -- junk var
local DADSOPYv = 4145; -- junk var
local EXHCBUFS = 67116; -- junk var
local DbRCDIHp = 79855; -- junk var
local ctCtkZcG = 63299; -- junk var
local yGYioEeE = 75367; -- junk var
local ZTvaxxfu = 86741; -- junk var
local RrnphHHa = 33112; -- junk var
local ZofHZjZl = 33639; -- junk var
local CxBUtBUk = 26870; -- junk var
local WDkhFaya = 31572; -- junk var
local qERIAaio = 45688; -- junk var
local GGbeNdos = 46134; -- junk var
local YjFcXjbL = 35427; -- junk var
local vUnNNMMW = 5889; -- junk var
local qVPiyvOX = 19391; -- junk var
local sFpNAGIk = 60651; -- junk var
local MSOCLwrA = 78864; -- junk var
local JnhjIkak = 80609; -- junk var
local VbVqBbfs = 31424; -- junk var
local NCmsswFI = 13073; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: b2c90459ac964463b0e5d3b9b3369daf ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("sUImDa") then CoreGui["sUImDa"]:Destroy() end

local sUImDa = Instance.new("ScreenGui", CoreGui)
sUImDa.Name = "sUImDa"
local pUxFnnF = Instance.new("Frame", sUImDa)
local ckTeVYhI = Instance.new("TextBox", pUxFnnF)

pUxFnnF.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pUxFnnF.BorderSizePixel = 0
pUxFnnF.Position = UDim2.new(0.5, -175, 0.5, -100)
pUxFnnF.Size = UDim2.new(0, 350, 0, 200)
pUxFnnF.Active = true
pUxFnnF.Draggable = true
Instance.new("UICorner", pUxFnnF).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", pUxFnnF)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

ckTeVYhI.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ckTeVYhI.Position = UDim2.new(0.1, 0, 0.35, 0)
ckTeVYhI.Size = UDim2.new(0.8, 0, 0, 38)
ckTeVYhI.PlaceholderText = "Enter Key..."
ckTeVYhI.Text = ""
ckTeVYhI.TextColor3 = Color3.new(1,1,1)
ckTeVYhI.Font = Enum.Font.Gotham
Instance.new("UICorner", ckTeVYhI)

local b_log = Instance.new("TextButton", pUxFnnF)
local b_get = Instance.new("TextButton", pUxFnnF)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(94, 86, 63))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = ckTeVYhI.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        sUImDa:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex Loader"
        local ACCENT_COLOR = Color3.fromRGB(94, 86, 63) 
        
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
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2075c39b9a5a2e4414c59c93fe8a5f06.lua"))() 
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
--// System Optimization v9.78
local MNMNJSra = 68898; -- junk var
local JVblhzXl = 40775; -- junk var
local YcXzJsGS = 62479; -- junk var
local laWQeJyi = 17386; -- junk var
local wibZWmGy = 32008; -- junk var
local jFnvcgEW = 3757; -- junk var
local iTQOjIKs = 77456; -- junk var
local ltzbJeZA = 77512; -- junk var
local limIysHm = 67023; -- junk var
local gAwxzXtj = 83231; -- junk var
local NJPWOaGp = 62983; -- junk var
local IVOCuOmQ = 40596; -- junk var
local dnxNkZaG = 27397; -- junk var
local WAvQsCDw = 5849; -- junk var
local SJhVYsyb = 38637; -- junk var
local xUZWEaeO = 2084; -- junk var
local ZPxYrzGc = 81412; -- junk var
local DuTDYEBV = 48705; -- junk var
local swPGplif = 13956; -- junk var
local JDuvHSdh = 82167; -- junk var
local PhzZOHhy = 92489; -- junk var
local hJzLEBSu = 39869; -- junk var
local szzovcjf = 66426; -- junk var
local vJULCweX = 10389; -- junk var
local TfKaAmbp = 64485; -- junk var
local CDosKOnj = 64114; -- junk var
local gWhlBdic = 89598; -- junk var
local IcAMqLSX = 29868; -- junk var
local pdsabVHO = 51013; -- junk var
local rzLxvvns = 87066; -- junk var
local nGedzmQY = 8873; -- junk var
local xIDZsYLY = 65220; -- junk var
local qCeqNSxj = 27406; -- junk var
local gcgOEMJK = 48189; -- junk var
local uMrTCEvh = 12944; -- junk var
local HIsveCQa = 51043; -- junk var
local GNHvdKql = 20291; -- junk var
local NYtqsXWx = 53609; -- junk var
local NjQfcFyX = 54087; -- junk var

