
--// System Optimization v4.81
local JUTgYKQY = 95485; -- junk var
local MvZjEujM = 64024; -- junk var
local VcuxSjBT = 3795; -- junk var
local YqClJRFI = 28281; -- junk var
local MCHmIUPY = 95124; -- junk var
local NipvBVOq = 59623; -- junk var
local ZVMicXpJ = 47736; -- junk var
local fAJHXvWa = 65926; -- junk var
local ABnZZgVm = 91995; -- junk var
local Tpsvkylp = 44359; -- junk var
local npmvHHWC = 62454; -- junk var
local kWuXgddz = 14897; -- junk var
local gXKfYafZ = 8936; -- junk var
local ZZfnFdjf = 17137; -- junk var
local ENlnmnoF = 55289; -- junk var
local GucTIzGs = 60354; -- junk var
local EtxlklXV = 49871; -- junk var
local knSyvqFS = 54815; -- junk var
local KHueBwtB = 68337; -- junk var
local TaGzmtgo = 48038; -- junk var
local xyuyFxQz = 84018; -- junk var
local gzFyxKLv = 8844; -- junk var
local tSQBapUh = 48376; -- junk var
local GvohgIdT = 32204; -- junk var
local VXuIJvoQ = 10044; -- junk var
local NKUdgIAs = 94769; -- junk var
local XEHPOnRW = 5140; -- junk var
local gVSrQUZb = 49901; -- junk var
local SWAVodsQ = 30624; -- junk var
local hnCUgeyC = 1151; -- junk var
local qkDRhjqK = 29459; -- junk var
local cYBimvyu = 32011; -- junk var
local YESuqnrt = 32050; -- junk var
local ewgoyocO = 67508; -- junk var
local aTaLlHoN = 74985; -- junk var
local WSZOdGPa = 48816; -- junk var
local tEJWsumZ = 49476; -- junk var
local JlgBMOKT = 97105; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 283c6c7de8904a01a6c1c3cefffb17a0 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("rpGEaU") then CoreGui["rpGEaU"]:Destroy() end

local rpGEaU = Instance.new("ScreenGui", CoreGui)
rpGEaU.Name = "rpGEaU"
local MNQaLFj = Instance.new("Frame", rpGEaU)
local IcmQkKRF = Instance.new("TextBox", MNQaLFj)

MNQaLFj.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MNQaLFj.BorderSizePixel = 0
MNQaLFj.Position = UDim2.new(0.5, -175, 0.5, -100)
MNQaLFj.Size = UDim2.new(0, 350, 0, 200)
MNQaLFj.Active = true
MNQaLFj.Draggable = true
Instance.new("UICorner", MNQaLFj).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", MNQaLFj)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

IcmQkKRF.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
IcmQkKRF.Position = UDim2.new(0.1, 0, 0.35, 0)
IcmQkKRF.Size = UDim2.new(0.8, 0, 0, 38)
IcmQkKRF.PlaceholderText = "Enter Key..."
IcmQkKRF.Text = ""
IcmQkKRF.TextColor3 = Color3.new(1,1,1)
IcmQkKRF.Font = Enum.Font.Gotham
Instance.new("UICorner", IcmQkKRF)

local b_log = Instance.new("TextButton", MNQaLFj)
local b_get = Instance.new("TextButton", MNQaLFj)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(195, 160, 161))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = IcmQkKRF.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        rpGEaU:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Flow"
        local ACCENT_COLOR = Color3.fromRGB(195, 160, 161) 
        
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PrestineScripts/Main/refs/heads/main/Loader"))() 
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
--// System Optimization v6.22
local HVRumvTd = 30330; -- junk var
local ITUcJBUX = 49144; -- junk var
local rOxDnmFb = 16588; -- junk var
local lSiihqFb = 96798; -- junk var
local EWcrTAUF = 25132; -- junk var
local xLvUtiey = 49747; -- junk var
local OppbwqMX = 36260; -- junk var
local ymuEXqUp = 2040; -- junk var
local lrPIfQdW = 73395; -- junk var
local uKvIPkbW = 37540; -- junk var
local zlsnBaBx = 89871; -- junk var
local VShAEAUK = 89409; -- junk var
local VtGAwIFf = 9927; -- junk var
local gnGDkDQg = 53080; -- junk var
local ApeqsOuH = 91989; -- junk var
local odKWLagL = 6978; -- junk var
local hsMoZnXR = 82198; -- junk var
local IZxPVGQV = 64694; -- junk var
local MaWEBRTI = 53642; -- junk var
local GWFvqXQD = 79711; -- junk var
local hVOExqPO = 49406; -- junk var
local myChOJZn = 84945; -- junk var
local QcBdWQCl = 76476; -- junk var
local UxdJidPl = 8597; -- junk var
local jxXYKNhF = 54108; -- junk var
local bhiZUdtK = 43501; -- junk var
local sJfdQfBV = 96627; -- junk var
local cQuVpOso = 1534; -- junk var
local fkjvjHqa = 73506; -- junk var
local iVIcBFEe = 20833; -- junk var
local JRvLEmfB = 34622; -- junk var
local CwdjmKlq = 70515; -- junk var
local sdAaEaOu = 2234; -- junk var
local PvfUqUXS = 8023; -- junk var

