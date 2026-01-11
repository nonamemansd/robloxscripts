
--// System Optimization v7.46
local RNCINars = 22315; -- junk var
local cpTCwxaU = 24932; -- junk var
local TtvITvqR = 18756; -- junk var
local rDsQlhTT = 83124; -- junk var
local XasVuGfn = 48350; -- junk var
local AuByOLuO = 98683; -- junk var
local aPwVoyUS = 34380; -- junk var
local vnyyXCig = 71073; -- junk var
local ZuLGPfet = 61474; -- junk var
local KixZZLqn = 67848; -- junk var
local kBoetoWY = 64659; -- junk var
local cIcnAkdw = 92596; -- junk var
local ttLbHeWX = 96207; -- junk var
local unJwVyQZ = 30175; -- junk var
local xfStrWoP = 60197; -- junk var
local TbWHxKqV = 93027; -- junk var
local ONzhgdlE = 77305; -- junk var
local UwddePME = 46287; -- junk var
local oSDWmSZw = 54589; -- junk var
local PAiSwxIl = 81069; -- junk var
local CVRYIRvr = 69190; -- junk var
local bDWUBGPy = 58281; -- junk var
local xKpVidOA = 85356; -- junk var
local enJslmNL = 30311; -- junk var
local CjAplihm = 3420; -- junk var
local uZmPhsCj = 86312; -- junk var
local kzbPxBit = 74587; -- junk var
local TJtvCSbp = 10570; -- junk var
local MLoyKrbh = 70491; -- junk var
local VdxYNCeW = 13298; -- junk var
local dFtQHwuE = 53518; -- junk var
local ubtJbhvd = 58970; -- junk var
local UfxvCDZF = 49553; -- junk var
local UtJbxani = 87646; -- junk var
local MqcxrijB = 57933; -- junk var
local YuoceZLL = 86688; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: d99d715fd774451ba62b9b83c7077cb4 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("AuKIiZ") then CoreGui["AuKIiZ"]:Destroy() end

local AuKIiZ = Instance.new("ScreenGui", CoreGui)
AuKIiZ.Name = "AuKIiZ"
local qEgWiLP = Instance.new("Frame", AuKIiZ)
local bOVIoQYg = Instance.new("TextBox", qEgWiLP)

qEgWiLP.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
qEgWiLP.BorderSizePixel = 0
qEgWiLP.Position = UDim2.new(0.5, -175, 0.5, -100)
qEgWiLP.Size = UDim2.new(0, 350, 0, 200)
qEgWiLP.Active = true
qEgWiLP.Draggable = true
Instance.new("UICorner", qEgWiLP).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", qEgWiLP)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

bOVIoQYg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
bOVIoQYg.Position = UDim2.new(0.1, 0, 0.35, 0)
bOVIoQYg.Size = UDim2.new(0.8, 0, 0, 38)
bOVIoQYg.PlaceholderText = "Enter Key..."
bOVIoQYg.Text = ""
bOVIoQYg.TextColor3 = Color3.new(1,1,1)
bOVIoQYg.Font = Enum.Font.Gotham
Instance.new("UICorner", bOVIoQYg)

local b_log = Instance.new("TextButton", qEgWiLP)
local b_get = Instance.new("TextButton", qEgWiLP)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(131, 154, 90))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = bOVIoQYg.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        AuKIiZ:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void X"
        local ACCENT_COLOR = Color3.fromRGB(131, 154, 90) 
        
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
--// System Optimization v5.83
local ZBcxTenY = 98302; -- junk var
local caYRioZH = 60738; -- junk var
local pSTvAzxY = 85437; -- junk var
local dsBpRZXQ = 47350; -- junk var
local fVceWKTm = 95698; -- junk var
local wHQqeKId = 36856; -- junk var
local YQbAHuaz = 72683; -- junk var
local eDUxhApG = 83995; -- junk var
local cbZIuzCf = 49309; -- junk var
local jIcCRntu = 95388; -- junk var
local AzrFloFU = 33508; -- junk var
local frEsmcRo = 84082; -- junk var
local PLidQqDI = 68061; -- junk var
local CILLqtSg = 51225; -- junk var
local aVLXjerC = 72684; -- junk var
local YRgpxNtV = 35622; -- junk var
local PAvBFmmm = 53343; -- junk var
local alVftudV = 23208; -- junk var
local joyDNiTG = 81318; -- junk var
local zYcNSZAn = 42791; -- junk var
local ShqUJVyQ = 21720; -- junk var
local QVbIyajh = 56490; -- junk var
local rbYzKtfK = 3934; -- junk var
local fvIUIPdR = 67096; -- junk var
local hCRfLWiz = 67141; -- junk var
local YCrwJauF = 9828; -- junk var
local VeVIfWrL = 92522; -- junk var
local GFDvCySK = 59890; -- junk var
local pMEIneBs = 57638; -- junk var
local ckiRtByd = 78336; -- junk var
local CPbxbyWC = 62355; -- junk var
local WhrxJgww = 32530; -- junk var
local yCzCYpbW = 14809; -- junk var
local XbVbAyDA = 16021; -- junk var
local jSWCWcQY = 31746; -- junk var
local vvXauFsO = 24864; -- junk var
local ECOcpBNQ = 65324; -- junk var
local iSQrKrPD = 34513; -- junk var
local BgEApyOs = 54279; -- junk var
local xycpLcrH = 27122; -- junk var

