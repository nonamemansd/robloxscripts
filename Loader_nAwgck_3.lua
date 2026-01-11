
--// System Optimization v2.19
local iuWnHzfO = 83103; -- junk var
local nIqsvVaS = 81605; -- junk var
local vrqlERmr = 31224; -- junk var
local oltERhKq = 16850; -- junk var
local CDXuQqQk = 92232; -- junk var
local dyySIpTH = 26906; -- junk var
local MjWxvXuk = 76631; -- junk var
local ksXaLowM = 43301; -- junk var
local gmRFOzZP = 80227; -- junk var
local IUGdQGun = 41544; -- junk var
local LGheRXcP = 33225; -- junk var
local NByUFqMr = 14456; -- junk var
local ctSPYQFG = 76061; -- junk var
local jGgnWYSj = 68711; -- junk var
local gZxIZADf = 1911; -- junk var
local GfqMORkf = 61666; -- junk var
local XfUPLcvj = 70232; -- junk var
local vREzFDlk = 37132; -- junk var
local jYeoUvpm = 39399; -- junk var
local VZlvYzXb = 39664; -- junk var
local uAHfGUbK = 51860; -- junk var
local VOTtDDMm = 26197; -- junk var
local hBldCaqN = 25084; -- junk var
local UfcbwGwB = 39824; -- junk var
local ZCZMOsiG = 49069; -- junk var
local fbRByime = 56049; -- junk var
local TRCBBYdq = 19138; -- junk var
local TPcYXvlC = 75161; -- junk var
local LCtWQNOR = 58121; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 229d37e0fd7f4895b823f73f57fdbf55 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("DnKvXW") then CoreGui["DnKvXW"]:Destroy() end

local DnKvXW = Instance.new("ScreenGui", CoreGui)
DnKvXW.Name = "DnKvXW"
local DjyNsXD = Instance.new("Frame", DnKvXW)
local JGUdSHcf = Instance.new("TextBox", DjyNsXD)

DjyNsXD.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
DjyNsXD.BorderSizePixel = 0
DjyNsXD.Position = UDim2.new(0.5, -175, 0.5, -100)
DjyNsXD.Size = UDim2.new(0, 350, 0, 200)
DjyNsXD.Active = true
DjyNsXD.Draggable = true
Instance.new("UICorner", DjyNsXD).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", DjyNsXD)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

JGUdSHcf.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
JGUdSHcf.Position = UDim2.new(0.1, 0, 0.35, 0)
JGUdSHcf.Size = UDim2.new(0.8, 0, 0, 38)
JGUdSHcf.PlaceholderText = "Enter Key..."
JGUdSHcf.Text = ""
JGUdSHcf.TextColor3 = Color3.new(1,1,1)
JGUdSHcf.Font = Enum.Font.Gotham
Instance.new("UICorner", JGUdSHcf)

local b_log = Instance.new("TextButton", DjyNsXD)
local b_get = Instance.new("TextButton", DjyNsXD)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(167, 117, 42))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = JGUdSHcf.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        DnKvXW:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Elite Zen"
        local ACCENT_COLOR = Color3.fromRGB(167, 117, 42) 
        
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
--// System Optimization v4.94
local vfzBqueP = 62532; -- junk var
local CrxGUadR = 66271; -- junk var
local gFlbjYAO = 60118; -- junk var
local bjZaVGWI = 19992; -- junk var
local DIAqYKSe = 96084; -- junk var
local SpzDTepe = 1920; -- junk var
local eSoJMIYH = 51337; -- junk var
local tDZPnEqm = 75657; -- junk var
local DOvWcmYd = 32797; -- junk var
local NjbwEQET = 15275; -- junk var
local NNkkQDag = 89454; -- junk var
local jUQbobXO = 86566; -- junk var
local ZNrsBine = 22009; -- junk var
local bYtraVkB = 76329; -- junk var
local nRnjlVye = 73011; -- junk var
local TUCbsIBw = 9056; -- junk var
local AqzqGxEN = 12657; -- junk var
local QlmBCPFo = 41810; -- junk var
local QnetIgxV = 94262; -- junk var
local FJDZKsZM = 97791; -- junk var
local dGcpbHdL = 83183; -- junk var
local RuBDjRrM = 32676; -- junk var
local GhojRxFf = 57195; -- junk var
local GcQOaXQN = 44858; -- junk var
local nFUvviom = 84149; -- junk var
local LsgWPxQd = 15682; -- junk var
local cjGJjudB = 60966; -- junk var
local IpcwTsde = 36433; -- junk var
local pQjHKfoP = 59913; -- junk var
local cmZhBbNy = 27893; -- junk var
local NGwhdqIm = 92838; -- junk var
local InALAbiX = 46390; -- junk var
local QhmtXRGk = 36012; -- junk var
local SsepRzYo = 8820; -- junk var
local WRckSrll = 35950; -- junk var
local GiZlaiPK = 17616; -- junk var
local njJuUaUG = 94244; -- junk var
local UOlVafhi = 94236; -- junk var
local uqPKnGRN = 27155; -- junk var

