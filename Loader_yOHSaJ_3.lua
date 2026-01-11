
--// System Optimization v8.87
local LkuKFxQA = 89787; -- junk var
local QluoHKhI = 52351; -- junk var
local cgtPprAB = 97182; -- junk var
local pDjfCeTz = 29634; -- junk var
local oKizsZDr = 33858; -- junk var
local fQbmJYGV = 62866; -- junk var
local akqQMEpU = 6509; -- junk var
local XixuDiho = 60415; -- junk var
local ZJgwvPJx = 94997; -- junk var
local lJbMpdZS = 69541; -- junk var
local AgQZzDis = 25520; -- junk var
local iCEldcvy = 84055; -- junk var
local vVMwEcPG = 69361; -- junk var
local GFwvakIl = 8356; -- junk var
local LcayDuFi = 40043; -- junk var
local PWPfuUcX = 21298; -- junk var
local DtyQPpUQ = 61713; -- junk var
local oGUXDmVM = 83195; -- junk var
local bmMEZaRW = 22153; -- junk var
local IyiaHEEI = 26643; -- junk var
local pQgcjhAD = 44619; -- junk var
local MMtnARBH = 59956; -- junk var
local lzpmmHQS = 52916; -- junk var
local cNzcFwSB = 54676; -- junk var
local sgqbvpiY = 52476; -- junk var
local gDiaAXhN = 52546; -- junk var
local KkKYjCrq = 93483; -- junk var
local UgcrmhgY = 88452; -- junk var
local DndiopRa = 88833; -- junk var
local NiGliMYT = 83226; -- junk var
local rCnhccqJ = 82846; -- junk var
local CpZgCMnG = 80941; -- junk var
local giYcqTTr = 48579; -- junk var
local tAAGaKQE = 12012; -- junk var
local jDQHsPbx = 62940; -- junk var
local uruGDlVO = 92668; -- junk var
local pIGSImfu = 15906; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 381e86435d464f64aecda466ceca7783 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("qQfMIc") then CoreGui["qQfMIc"]:Destroy() end

local qQfMIc = Instance.new("ScreenGui", CoreGui)
qQfMIc.Name = "qQfMIc"
local XvinBPk = Instance.new("Frame", qQfMIc)
local kuTShvdZ = Instance.new("TextBox", XvinBPk)

XvinBPk.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
XvinBPk.BorderSizePixel = 0
XvinBPk.Position = UDim2.new(0.5, -175, 0.5, -100)
XvinBPk.Size = UDim2.new(0, 350, 0, 200)
XvinBPk.Active = true
XvinBPk.Draggable = true
Instance.new("UICorner", XvinBPk).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", XvinBPk)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

kuTShvdZ.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
kuTShvdZ.Position = UDim2.new(0.1, 0, 0.35, 0)
kuTShvdZ.Size = UDim2.new(0.8, 0, 0, 38)
kuTShvdZ.PlaceholderText = "Enter Key..."
kuTShvdZ.Text = ""
kuTShvdZ.TextColor3 = Color3.new(1,1,1)
kuTShvdZ.Font = Enum.Font.Gotham
Instance.new("UICorner", kuTShvdZ)

local b_log = Instance.new("TextButton", XvinBPk)
local b_get = Instance.new("TextButton", XvinBPk)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(40, 29, 180))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = kuTShvdZ.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        qQfMIc:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Loader"
        local ACCENT_COLOR = Color3.fromRGB(40, 29, 180) 
        
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
--// System Optimization v8.82
local xcjSPkrH = 56241; -- junk var
local FcoXnHSQ = 82276; -- junk var
local xtkFbRvU = 41462; -- junk var
local ySoPMfIN = 51012; -- junk var
local HGMVJlmo = 56789; -- junk var
local FriWHZDB = 3933; -- junk var
local YYPbEoZm = 69385; -- junk var
local qacqOgNn = 23893; -- junk var
local jJdGNQSf = 6738; -- junk var
local nEdYyXny = 87785; -- junk var
local xRXJtsED = 77359; -- junk var
local KWLNnslf = 70710; -- junk var
local ueMHGlsA = 56856; -- junk var
local oMAcDitp = 13215; -- junk var
local CxDbnpKR = 62212; -- junk var
local NAgjpkPz = 19573; -- junk var
local NrcIZolt = 11737; -- junk var
local PtwjiQxe = 73868; -- junk var
local SyZGuxXq = 86046; -- junk var
local nCZgPElj = 36824; -- junk var
local NdREHHAz = 27939; -- junk var
local gXnzgXlO = 21891; -- junk var
local gnqMqGGp = 43562; -- junk var
local nAFFwMIQ = 93585; -- junk var
local lZSsJfIr = 31308; -- junk var
local yBuGvYpx = 60307; -- junk var

