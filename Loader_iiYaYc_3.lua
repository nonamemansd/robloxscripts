
--// System Optimization v8.59
local WgMYvIVf = 310; -- junk var
local hNLVeTuF = 46273; -- junk var
local nsqRedHM = 83524; -- junk var
local pqTRMeMa = 62265; -- junk var
local ckMQgraN = 29115; -- junk var
local YBHKNQKc = 76987; -- junk var
local ogvTWWbA = 77506; -- junk var
local TQgjWpon = 5398; -- junk var
local XFURznTX = 6404; -- junk var
local GAYfDvWw = 19080; -- junk var
local rHzuktNW = 92644; -- junk var
local byYxecUn = 80895; -- junk var
local zptRsETj = 62950; -- junk var
local YAuqKrup = 34520; -- junk var
local CKcYqMBF = 52806; -- junk var
local voGaXOvH = 99592; -- junk var
local BRwvGtrG = 82662; -- junk var
local gDkvdEWs = 4976; -- junk var
local hPbiUsiu = 19037; -- junk var
local ezezDUWQ = 16477; -- junk var
local KjmdqqNL = 14103; -- junk var
local XDeRlGho = 13590; -- junk var
local AWuXWiqY = 22065; -- junk var
local SEWizIar = 18395; -- junk var
local psmJTnkW = 49105; -- junk var
local hzWKJxfF = 96730; -- junk var
local qZKkBFMU = 19461; -- junk var
local UexdmUPV = 97165; -- junk var
local DxrXtxvC = 16404; -- junk var
local dMbScioa = 11644; -- junk var
local WdlBpoTe = 99957; -- junk var
local qKIPyPOT = 38883; -- junk var
local fbQnVyNw = 43714; -- junk var
local VgWFhqpv = 99364; -- junk var
local UbuTFCSy = 51586; -- junk var
local FZYRxRec = 28132; -- junk var
local XdXEcxEU = 88884; -- junk var
local MMSTgaUs = 18641; -- junk var
local cVxVFRuc = 1078; -- junk var
local DBZpnVYI = 5608; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 197edd27e47245beba5678549b9e080f ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("qyXybI") then CoreGui["qyXybI"]:Destroy() end

local qyXybI = Instance.new("ScreenGui", CoreGui)
qyXybI.Name = "qyXybI"
local pDAFDqo = Instance.new("Frame", qyXybI)
local DWBkUDEZ = Instance.new("TextBox", pDAFDqo)

pDAFDqo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pDAFDqo.BorderSizePixel = 0
pDAFDqo.Position = UDim2.new(0.5, -175, 0.5, -100)
pDAFDqo.Size = UDim2.new(0, 350, 0, 200)
pDAFDqo.Active = true
pDAFDqo.Draggable = true
Instance.new("UICorner", pDAFDqo).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", pDAFDqo)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

DWBkUDEZ.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
DWBkUDEZ.Position = UDim2.new(0.1, 0, 0.35, 0)
DWBkUDEZ.Size = UDim2.new(0.8, 0, 0, 38)
DWBkUDEZ.PlaceholderText = "Enter Key..."
DWBkUDEZ.Text = ""
DWBkUDEZ.TextColor3 = Color3.new(1,1,1)
DWBkUDEZ.Font = Enum.Font.Gotham
Instance.new("UICorner", DWBkUDEZ)

local b_log = Instance.new("TextButton", pDAFDqo)
local b_get = Instance.new("TextButton", pDAFDqo)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(106, 78, 217))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = DWBkUDEZ.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        qyXybI:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Flow"
        local ACCENT_COLOR = Color3.fromRGB(106, 78, 217) 
        
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
--// System Optimization v6.61
local AzRSZXoH = 12655; -- junk var
local GXwHceTp = 57504; -- junk var
local MDXBDmLc = 7685; -- junk var
local FDaPlFPd = 61722; -- junk var
local gxoxqkHX = 35767; -- junk var
local yynxqMYZ = 85791; -- junk var
local HiNQDXZF = 3819; -- junk var
local APCJtYLV = 86209; -- junk var
local bXyChNHQ = 22984; -- junk var
local MUYniCVk = 79429; -- junk var
local wccnzVPB = 19392; -- junk var
local xCERKquK = 27028; -- junk var
local LtfcVeVl = 10989; -- junk var
local HjDBIXOq = 99923; -- junk var
local eTTMiBNz = 45120; -- junk var
local czBBYAGC = 6846; -- junk var
local rCwbIGjB = 18858; -- junk var
local BokTdioo = 82401; -- junk var
local nBMBqNIS = 6359; -- junk var
local fEMALkpf = 85688; -- junk var
local QgOWgWJX = 97995; -- junk var
local SJeukjvx = 10906; -- junk var
local OWGpSsDH = 98834; -- junk var
local WJQtptgV = 26524; -- junk var
local XqFTLlsh = 73618; -- junk var
local xVpsbLDp = 53470; -- junk var

