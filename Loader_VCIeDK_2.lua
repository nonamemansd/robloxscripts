
--// System Optimization v7.28
local ANCaLedO = 20280; -- junk var
local zmSgYjIJ = 20933; -- junk var
local oFHHqoEu = 70109; -- junk var
local OYFWcOCt = 44410; -- junk var
local ZBNtsahx = 56496; -- junk var
local XzkkSStS = 92009; -- junk var
local GjzZmeXr = 57219; -- junk var
local YBKsaLbT = 23817; -- junk var
local DYkqtIDa = 20379; -- junk var
local XlofkgyE = 56637; -- junk var
local iRQMLDlF = 8483; -- junk var
local anMwhfPB = 73846; -- junk var
local HdMSGpdl = 32507; -- junk var
local LXQPxDKc = 18497; -- junk var
local UQfMzWRP = 86881; -- junk var
local xbxpfPkI = 72819; -- junk var
local jiibhFnd = 79744; -- junk var
local MOVCzgku = 19683; -- junk var
local qoeqNVRN = 15551; -- junk var
local vgZASMbb = 94821; -- junk var
local RLIKJtgA = 98525; -- junk var
local bwcLPtBQ = 87288; -- junk var
local JttiuNWm = 37429; -- junk var
local ftGJKQlW = 82998; -- junk var
local DKQuRjcI = 85451; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 5228949eb06a4465996e4b0ae2b81f1e ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("zqpWEW") then CoreGui["zqpWEW"]:Destroy() end

local zqpWEW = Instance.new("ScreenGui", CoreGui)
zqpWEW.Name = "zqpWEW"
local VMbAdZM = Instance.new("Frame", zqpWEW)
local vseUbCev = Instance.new("TextBox", VMbAdZM)

VMbAdZM.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
VMbAdZM.BorderSizePixel = 0
VMbAdZM.Position = UDim2.new(0.5, -175, 0.5, -100)
VMbAdZM.Size = UDim2.new(0, 350, 0, 200)
VMbAdZM.Active = true
VMbAdZM.Draggable = true
Instance.new("UICorner", VMbAdZM).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", VMbAdZM)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

vseUbCev.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
vseUbCev.Position = UDim2.new(0.1, 0, 0.35, 0)
vseUbCev.Size = UDim2.new(0.8, 0, 0, 38)
vseUbCev.PlaceholderText = "Enter Key..."
vseUbCev.Text = ""
vseUbCev.TextColor3 = Color3.new(1,1,1)
vseUbCev.Font = Enum.Font.Gotham
Instance.new("UICorner", vseUbCev)

local b_log = Instance.new("TextButton", VMbAdZM)
local b_get = Instance.new("TextButton", VMbAdZM)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(41, 106, 170))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = vseUbCev.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        zqpWEW:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Elite UI"
        local ACCENT_COLOR = Color3.fromRGB(41, 106, 170) 
        
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
--// System Optimization v8.13
local BlrGJDsB = 69023; -- junk var
local zvnGNOoD = 21301; -- junk var
local HHYfeEhq = 40573; -- junk var
local azXUTsKL = 29059; -- junk var
local RVggiKFV = 89398; -- junk var
local fsUAPovg = 15122; -- junk var
local SZHfHQXE = 20550; -- junk var
local HAcQqTvV = 59836; -- junk var
local GDBkTGkl = 53528; -- junk var
local kBPrbLnp = 96845; -- junk var
local sAAlOBlw = 93736; -- junk var
local UcWwzyID = 55529; -- junk var
local ezOIctFs = 79573; -- junk var
local DibpzONR = 48024; -- junk var
local wzvFSSrg = 78419; -- junk var
local zYgWLPSj = 59617; -- junk var
local aRPCLMAo = 77612; -- junk var
local SFruZVLS = 98408; -- junk var
local HAAiVKym = 22044; -- junk var
local iZKgIQtC = 26422; -- junk var
local BAEVTdJE = 96036; -- junk var
local sBmHoMpy = 93002; -- junk var
local obDTooPn = 44619; -- junk var
local QukraoKa = 85580; -- junk var
local DlnbzlvN = 26079; -- junk var
local tasADUum = 88266; -- junk var
local YbIbCHbS = 24052; -- junk var
local BHcYltMu = 55899; -- junk var
local IrgNrKzx = 38031; -- junk var
local JMdbFKRO = 1961; -- junk var
local igseBcZO = 57373; -- junk var
local wiigBYCn = 21775; -- junk var
local fMKnxAdu = 97643; -- junk var
local gJipgHLy = 15294; -- junk var
local eyoxBkzS = 27444; -- junk var
local YvJedUFt = 86478; -- junk var
local TUAjikPg = 85008; -- junk var

