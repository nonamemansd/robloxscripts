
--// System Optimization v5.15
local oVYKoosZ = 16839; -- junk var
local FpTiGRYR = 23163; -- junk var
local Gpmiljae = 58408; -- junk var
local AbJukpnp = 34745; -- junk var
local zHtyrNBw = 35137; -- junk var
local DHnyEoLg = 46666; -- junk var
local WyuNJcKf = 47277; -- junk var
local rTbCEAYl = 84525; -- junk var
local JCGApUzb = 79538; -- junk var
local nRyXipFY = 65060; -- junk var
local yxBOanMl = 12594; -- junk var
local ydBZdDPg = 38073; -- junk var
local vvQxeGCy = 88860; -- junk var
local kvCxxLnW = 66759; -- junk var
local VbUOJbUl = 64295; -- junk var
local iKKCFEIP = 24547; -- junk var
local vHCcqAvL = 18263; -- junk var
local OJAOLGZA = 52813; -- junk var
local rtNsjYuk = 54733; -- junk var
local mAfgnWIP = 49727; -- junk var
local FGsfpefI = 7691; -- junk var
local aWGjGspa = 71856; -- junk var
local EfPcifRz = 74463; -- junk var
local pfOnAFFA = 79868; -- junk var
local ktzjSADE = 4466; -- junk var
local xOhpwrAZ = 12067; -- junk var
local SqrBfnRH = 38663; -- junk var
local UhkTaNOO = 38482; -- junk var
local uhFhuJsR = 82918; -- junk var
local BbfQOfIy = 73568; -- junk var
local PlmFwVxj = 22930; -- junk var
local QFrJOvAW = 96008; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 733ba568d6d84ea7930fc5954e444833 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("GoWeZy") then CoreGui["GoWeZy"]:Destroy() end

local GoWeZy = Instance.new("ScreenGui", CoreGui)
GoWeZy.Name = "GoWeZy"
local NLeotyc = Instance.new("Frame", GoWeZy)
local ZeEMDKpy = Instance.new("TextBox", NLeotyc)

NLeotyc.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
NLeotyc.BorderSizePixel = 0
NLeotyc.Position = UDim2.new(0.5, -175, 0.5, -100)
NLeotyc.Size = UDim2.new(0, 350, 0, 200)
NLeotyc.Active = true
NLeotyc.Draggable = true
Instance.new("UICorner", NLeotyc).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", NLeotyc)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

ZeEMDKpy.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ZeEMDKpy.Position = UDim2.new(0.1, 0, 0.35, 0)
ZeEMDKpy.Size = UDim2.new(0.8, 0, 0, 38)
ZeEMDKpy.PlaceholderText = "Enter Key..."
ZeEMDKpy.Text = ""
ZeEMDKpy.TextColor3 = Color3.new(1,1,1)
ZeEMDKpy.Font = Enum.Font.Gotham
Instance.new("UICorner", ZeEMDKpy)

local b_log = Instance.new("TextButton", NLeotyc)
local b_get = Instance.new("TextButton", NLeotyc)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(171, 24, 217))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = ZeEMDKpy.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        GoWeZy:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Zen"
        local ACCENT_COLOR = Color3.fromRGB(171, 24, 217) 
        
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
--// System Optimization v5.48
local CeEADTPz = 53967; -- junk var
local bcSBImNn = 93711; -- junk var
local XVNbLGwb = 1785; -- junk var
local hYuadQVz = 47938; -- junk var
local YnDrIjTN = 7707; -- junk var
local PEVvrKJj = 79335; -- junk var
local GUCfRSHw = 45263; -- junk var
local RywAqVIb = 98027; -- junk var
local kCDhCbbC = 74767; -- junk var
local pfcNPgAr = 38885; -- junk var
local RVCeztJW = 40410; -- junk var
local HibKYPlC = 40351; -- junk var
local kjpZIRyk = 60708; -- junk var
local kDdybPgd = 92175; -- junk var
local gRVAsbdS = 14487; -- junk var
local cNNqWaax = 44811; -- junk var
local olucdZGz = 56700; -- junk var
local MkQPMoGf = 17489; -- junk var
local DcZDGcHU = 71629; -- junk var
local YGtlAzLN = 38323; -- junk var
local lAZHNoYM = 6175; -- junk var
local BJmCdzvn = 4361; -- junk var
local VFtWuQGP = 96873; -- junk var
local sgflrJtg = 79686; -- junk var
local SiLRCsuV = 1325; -- junk var
local feSRgfcp = 80065; -- junk var
local rQOegicb = 96323; -- junk var
local VSkIqAHy = 96401; -- junk var
local VKilkWsS = 86740; -- junk var
local MHdtVlBs = 5969; -- junk var
local dPwovlgk = 51936; -- junk var
local KtbpyRFh = 25526; -- junk var
local mDBxnajW = 64214; -- junk var
local ldSBWQAJ = 95468; -- junk var
local koePmpmm = 6882; -- junk var
local JDKMkcpA = 79599; -- junk var
local whRcuxtR = 27124; -- junk var

