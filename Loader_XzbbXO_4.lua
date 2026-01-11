
--// System Optimization v1.28
local uLAwbIlQ = 67185; -- junk var
local EphYESdd = 41199; -- junk var
local vMmDacUT = 68502; -- junk var
local fmozdooK = 81798; -- junk var
local TLAMGQPd = 18510; -- junk var
local DzGelOyI = 26540; -- junk var
local bUIqPkiK = 53532; -- junk var
local ZRIVQqaG = 97318; -- junk var
local hZGjxHSj = 53523; -- junk var
local zIsBrZJq = 7756; -- junk var
local mRGENuIh = 66601; -- junk var
local cYkgEHiX = 22289; -- junk var
local jPcKjLIt = 79535; -- junk var
local wEqMYlcB = 1941; -- junk var
local gcLoAjFl = 64445; -- junk var
local NzGtdnlF = 69553; -- junk var
local wJZygRak = 15166; -- junk var
local jNVBUQjj = 54866; -- junk var
local iLuexQHv = 3810; -- junk var
local EQZhGZZT = 65411; -- junk var
local fjUTLNHq = 4068; -- junk var
local njcHWdDD = 55299; -- junk var
local DKXhoqUn = 33752; -- junk var
local YpBrGcha = 5534; -- junk var
local KukoOIVE = 81483; -- junk var
local KoDesEiM = 81419; -- junk var
local KhOXZZTr = 45395; -- junk var
local iOSlnePE = 5464; -- junk var
local iollPzqx = 55613; -- junk var
local EWHQvGFU = 28816; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: d8b3c5c01c0f45c2a9c4e7a526ad6dc8 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("bCZXpm") then CoreGui["bCZXpm"]:Destroy() end

local bCZXpm = Instance.new("ScreenGui", CoreGui)
bCZXpm.Name = "bCZXpm"
local mdUjAtF = Instance.new("Frame", bCZXpm)
local kTvQBMRA = Instance.new("TextBox", mdUjAtF)

mdUjAtF.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mdUjAtF.BorderSizePixel = 0
mdUjAtF.Position = UDim2.new(0.5, -175, 0.5, -100)
mdUjAtF.Size = UDim2.new(0, 350, 0, 200)
mdUjAtF.Active = true
mdUjAtF.Draggable = true
Instance.new("UICorner", mdUjAtF).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", mdUjAtF)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

kTvQBMRA.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
kTvQBMRA.Position = UDim2.new(0.1, 0, 0.35, 0)
kTvQBMRA.Size = UDim2.new(0.8, 0, 0, 38)
kTvQBMRA.PlaceholderText = "Enter Key..."
kTvQBMRA.Text = ""
kTvQBMRA.TextColor3 = Color3.new(1,1,1)
kTvQBMRA.Font = Enum.Font.Gotham
Instance.new("UICorner", kTvQBMRA)

local b_log = Instance.new("TextButton", mdUjAtF)
local b_get = Instance.new("TextButton", mdUjAtF)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(98, 171, 74))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = kTvQBMRA.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        bCZXpm:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex UI"
        local ACCENT_COLOR = Color3.fromRGB(98, 171, 74) 
        
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
--// System Optimization v4.91
local SuPgPkeY = 16604; -- junk var
local sdmgaoZJ = 86544; -- junk var
local IJiAvtAa = 15724; -- junk var
local TiwgipdZ = 39500; -- junk var
local slQhsaeV = 84319; -- junk var
local TodsdCTH = 88499; -- junk var
local RrDMDhOv = 38792; -- junk var
local ZUSvCxkz = 80147; -- junk var
local NfKwbJzn = 30611; -- junk var
local szyVrYWh = 5158; -- junk var
local pYXMtgIv = 11894; -- junk var
local GPswqnhm = 92307; -- junk var
local XEDuGZUK = 60757; -- junk var
local bpRRXGWj = 99107; -- junk var
local MirGaKOD = 82651; -- junk var
local RfzCIcUw = 70827; -- junk var
local uktrUOsC = 43024; -- junk var
local wgotdGjM = 29373; -- junk var
local LybAUmRC = 7073; -- junk var
local orMGyUcT = 74386; -- junk var
local HRarxqjS = 30124; -- junk var
local mapmCrRE = 54546; -- junk var
local zARAnGAJ = 90635; -- junk var
local TmAjCarv = 26872; -- junk var
local WUmLPaRK = 96010; -- junk var
local COFtwGBs = 63216; -- junk var
local HrXKfwwH = 3989; -- junk var
local RBujkWDX = 42648; -- junk var
local vVbUitHV = 24658; -- junk var
local LKskLdYX = 44859; -- junk var
local wtomFqFw = 66724; -- junk var
local CPgGZobv = 43231; -- junk var
local lMYwlliG = 44617; -- junk var
local QstFFDpt = 86650; -- junk var
local VWiNXjVz = 3106; -- junk var
local iTYbyHik = 30498; -- junk var
local GeyURzxw = 29089; -- junk var
local dAdnYSTA = 15062; -- junk var

