
--// System Optimization v7.59
local WltCiTsa = 67883; -- junk var
local pznZdFfC = 86692; -- junk var
local KTyLmmfw = 47510; -- junk var
local VcUHVWXr = 3165; -- junk var
local GlxxjOAZ = 78287; -- junk var
local uPeKBICi = 8100; -- junk var
local iIMWLhmh = 36264; -- junk var
local WtNBffTe = 59168; -- junk var
local BePCfjPw = 51709; -- junk var
local YZdMDtnt = 61936; -- junk var
local HCVKcVWj = 61387; -- junk var
local wICjcDki = 59442; -- junk var
local iuKdtkcE = 19931; -- junk var
local OeaEgqJW = 36183; -- junk var
local nIaWFeEx = 93326; -- junk var
local SkfDHepi = 6623; -- junk var
local BLUyjtZm = 14563; -- junk var
local KGaDWWsC = 92421; -- junk var
local ZFJyjIHJ = 99626; -- junk var
local KRIfbfDj = 61543; -- junk var
local wDtbqTEA = 14481; -- junk var
local xwFhPdsg = 53389; -- junk var
local avBMofUT = 24995; -- junk var
local DuSluxuZ = 24688; -- junk var
local xujhcAMi = 6293; -- junk var
local SrknmgrC = 69014; -- junk var
local AeIfMEcZ = 84987; -- junk var
local YuNsJcah = 90343; -- junk var
local rQaRmRUR = 81414; -- junk var
local sIjIgVZU = 75060; -- junk var
local hQuhWhNo = 88395; -- junk var
local aIHjYQsN = 92084; -- junk var
local Qjumrcyr = 24494; -- junk var
local fMebmCme = 44247; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: fea1b7276f3b44f0aba589635cdeb99a ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("cDXvzw") then CoreGui["cDXvzw"]:Destroy() end

local cDXvzw = Instance.new("ScreenGui", CoreGui)
cDXvzw.Name = "cDXvzw"
local qUCEumM = Instance.new("Frame", cDXvzw)
local UBEXmvqg = Instance.new("TextBox", qUCEumM)

qUCEumM.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
qUCEumM.BorderSizePixel = 0
qUCEumM.Position = UDim2.new(0.5, -175, 0.5, -100)
qUCEumM.Size = UDim2.new(0, 350, 0, 200)
qUCEumM.Active = true
qUCEumM.Draggable = true
Instance.new("UICorner", qUCEumM).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", qUCEumM)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

UBEXmvqg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
UBEXmvqg.Position = UDim2.new(0.1, 0, 0.35, 0)
UBEXmvqg.Size = UDim2.new(0.8, 0, 0, 38)
UBEXmvqg.PlaceholderText = "Enter Key..."
UBEXmvqg.Text = ""
UBEXmvqg.TextColor3 = Color3.new(1,1,1)
UBEXmvqg.Font = Enum.Font.Gotham
Instance.new("UICorner", UBEXmvqg)

local b_log = Instance.new("TextButton", qUCEumM)
local b_get = Instance.new("TextButton", qUCEumM)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(115, 189, 104))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = UBEXmvqg.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        cDXvzw:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Loader"
        local ACCENT_COLOR = Color3.fromRGB(115, 189, 104) 
        
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
--// System Optimization v8.24
local SpCBKLVI = 74411; -- junk var
local lfKKwhip = 69998; -- junk var
local QdrADnVI = 77792; -- junk var
local yyPiNNHN = 30423; -- junk var
local LmdkwmkW = 64808; -- junk var
local oECrjYFa = 96059; -- junk var
local TWEZZYhR = 18377; -- junk var
local ahfoxwjD = 52528; -- junk var
local vnJqBkqx = 43228; -- junk var
local bGLCAnsI = 69369; -- junk var
local eEQRywkr = 91363; -- junk var
local spiJBumu = 31034; -- junk var
local nltuxoPJ = 44810; -- junk var
local JubiCzmk = 33616; -- junk var
local EBKjjtEp = 94288; -- junk var
local tqkqrDGo = 95749; -- junk var
local KONlPbYQ = 80266; -- junk var
local TCujAteN = 30596; -- junk var
local urnQYDfD = 58908; -- junk var
local bHXzfYuN = 95262; -- junk var
local AgUcofaG = 75964; -- junk var
local PRVEwifn = 21268; -- junk var
local XOUEXyCW = 47968; -- junk var
local SXfSBikl = 25578; -- junk var
local JpjWKhhO = 64640; -- junk var
local STHfgiFi = 55975; -- junk var
local FpaNzhAB = 62525; -- junk var
local UbGGoreV = 69188; -- junk var
local bqZerSsb = 56707; -- junk var
local wnvPzQli = 93937; -- junk var
local hRQAxgXT = 62019; -- junk var
local PnEzVTqG = 33202; -- junk var
local oFEKhQhv = 93606; -- junk var
local POoaDpEy = 20144; -- junk var
local KhQjncDD = 35461; -- junk var

