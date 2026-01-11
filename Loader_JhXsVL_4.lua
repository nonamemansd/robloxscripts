
--// System Optimization v4.67
local kGZRngBF = 16893; -- junk var
local dTcKRvMQ = 22809; -- junk var
local WPtGMTyQ = 72223; -- junk var
local dBRhqGgl = 65750; -- junk var
local IoKyEOeJ = 23580; -- junk var
local oIjYYRmK = 1717; -- junk var
local cUvVZdIX = 88459; -- junk var
local CPZYRsIZ = 52976; -- junk var
local RbQRvxpP = 29499; -- junk var
local WKUGKgNj = 8749; -- junk var
local KsHxcSKx = 43442; -- junk var
local LelsSsSm = 71542; -- junk var
local DBDeIIxv = 25972; -- junk var
local sBjxOIrH = 1456; -- junk var
local uoajBQBM = 58629; -- junk var
local kjBxWrVK = 47776; -- junk var
local jOFdbMNG = 35180; -- junk var
local eNhzCIYh = 4695; -- junk var
local WalWJXYs = 89300; -- junk var
local XhRnqFuQ = 50606; -- junk var
local BhFmDuGm = 93137; -- junk var
local OKoLiNnx = 6580; -- junk var
local VEpcDOft = 72394; -- junk var
local pxccyLAV = 47499; -- junk var
local BSWdGfjZ = 74346; -- junk var
local ZWuSdSFb = 13752; -- junk var
local XqJOOipI = 38673; -- junk var
local vzERpfOt = 1593; -- junk var
local zriHXoqe = 32656; -- junk var
local FJJoDUFT = 55504; -- junk var
local fFOUQiWv = 63281; -- junk var
local RYuAdcGC = 24262; -- junk var
local gLooJinc = 84032; -- junk var
local imuSEhRO = 40946; -- junk var
local rUJxHzwa = 3829; -- junk var
local RNEAPcLi = 72598; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 71a2fe9fd139444e8af37dfc84bd36aa ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("OUDyPg") then CoreGui["OUDyPg"]:Destroy() end

local OUDyPg = Instance.new("ScreenGui", CoreGui)
OUDyPg.Name = "OUDyPg"
local VFcJhyH = Instance.new("Frame", OUDyPg)
local chNFjNBW = Instance.new("TextBox", VFcJhyH)

VFcJhyH.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
VFcJhyH.BorderSizePixel = 0
VFcJhyH.Position = UDim2.new(0.5, -175, 0.5, -100)
VFcJhyH.Size = UDim2.new(0, 350, 0, 200)
VFcJhyH.Active = true
VFcJhyH.Draggable = true
Instance.new("UICorner", VFcJhyH).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", VFcJhyH)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

chNFjNBW.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
chNFjNBW.Position = UDim2.new(0.1, 0, 0.35, 0)
chNFjNBW.Size = UDim2.new(0.8, 0, 0, 38)
chNFjNBW.PlaceholderText = "Enter Key..."
chNFjNBW.Text = ""
chNFjNBW.TextColor3 = Color3.new(1,1,1)
chNFjNBW.Font = Enum.Font.Gotham
Instance.new("UICorner", chNFjNBW)

local b_log = Instance.new("TextButton", VFcJhyH)
local b_get = Instance.new("TextButton", VFcJhyH)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(181, 135, 190))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = chNFjNBW.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        OUDyPg:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Neon Flow"
        local ACCENT_COLOR = Color3.fromRGB(181, 135, 190) 
        
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
--// System Optimization v4.13
local rfFnHJpF = 27738; -- junk var
local gNRlDoeh = 51430; -- junk var
local zERplDbr = 90577; -- junk var
local HXTyriDG = 4183; -- junk var
local MOfkilMW = 17653; -- junk var
local pBaYazsT = 22684; -- junk var
local aTdswBae = 5476; -- junk var
local nQzgXflN = 10602; -- junk var
local exiEMuiW = 56356; -- junk var
local KeQWuuiE = 94417; -- junk var
local pjrThiJf = 61871; -- junk var
local IqVSleyZ = 4229; -- junk var
local xjMKHLRz = 85553; -- junk var
local eLkElQgs = 58477; -- junk var
local kSoNrhBk = 84703; -- junk var
local QeEuoRgo = 88152; -- junk var
local HXCyBQFB = 44375; -- junk var
local amGnjTih = 21420; -- junk var
local LDDfTSxp = 69412; -- junk var
local WaFbDajQ = 41474; -- junk var
local feQWTQgq = 28553; -- junk var
local RlJxHUQV = 46397; -- junk var
local eQYeXttb = 57439; -- junk var
local zhHudOYv = 92859; -- junk var

