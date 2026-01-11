
--// System Optimization v4.60
local YyybEYcO = 42634; -- junk var
local ANnrUpsY = 14502; -- junk var
local SIOetwTD = 52067; -- junk var
local nrbTWKeD = 97188; -- junk var
local WhcdGZDx = 11703; -- junk var
local TGtFboGj = 42381; -- junk var
local MHDlPYMu = 67082; -- junk var
local AMcYUkFn = 86667; -- junk var
local kIQizXVt = 91301; -- junk var
local AUncWhYp = 18313; -- junk var
local yiRFAwZj = 42555; -- junk var
local CvPEYmQr = 8889; -- junk var
local muDdKJlq = 82006; -- junk var
local YXrRRzRm = 58359; -- junk var
local CyZQsciJ = 9260; -- junk var
local sSqWAwsM = 39644; -- junk var
local ZXBpJhxK = 3470; -- junk var
local gIkCdcVW = 50800; -- junk var
local BtHaDVZj = 56351; -- junk var
local uUtkJAWi = 10921; -- junk var
local VaGUtfOp = 75053; -- junk var
local qPsqMfjk = 83771; -- junk var
local iIckQBCp = 20236; -- junk var
local zLNAUHBq = 46009; -- junk var
local IxIVsLav = 50830; -- junk var
local QbWHBFYt = 16988; -- junk var
local ZOGMlWzN = 59433; -- junk var
local afdMQlfi = 96152; -- junk var
local mJSwxpQb = 88023; -- junk var
local EkcJMJGP = 49320; -- junk var
local DXePhTLW = 93812; -- junk var
local RKGQjkIv = 50759; -- junk var
local gwJemhDk = 56050; -- junk var
local zsOfrsqz = 2324; -- junk var
local lApGDbkm = 61542; -- junk var
local iiSJncfD = 50917; -- junk var
local ZIzlrpGL = 87751; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: ae21c8e9c62f43bfbc343e7808246d49 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("wuMnJZ") then CoreGui["wuMnJZ"]:Destroy() end

local wuMnJZ = Instance.new("ScreenGui", CoreGui)
wuMnJZ.Name = "wuMnJZ"
local SSdmXYX = Instance.new("Frame", wuMnJZ)
local csqQtexk = Instance.new("TextBox", SSdmXYX)

SSdmXYX.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SSdmXYX.BorderSizePixel = 0
SSdmXYX.Position = UDim2.new(0.5, -175, 0.5, -100)
SSdmXYX.Size = UDim2.new(0, 350, 0, 200)
SSdmXYX.Active = true
SSdmXYX.Draggable = true
Instance.new("UICorner", SSdmXYX).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", SSdmXYX)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

csqQtexk.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
csqQtexk.Position = UDim2.new(0.1, 0, 0.35, 0)
csqQtexk.Size = UDim2.new(0.8, 0, 0, 38)
csqQtexk.PlaceholderText = "Enter Key..."
csqQtexk.Text = ""
csqQtexk.TextColor3 = Color3.new(1,1,1)
csqQtexk.Font = Enum.Font.Gotham
Instance.new("UICorner", csqQtexk)

local b_log = Instance.new("TextButton", SSdmXYX)
local b_get = Instance.new("TextButton", SSdmXYX)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(55, 181, 31))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = csqQtexk.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        wuMnJZ:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Cyber UI"
        local ACCENT_COLOR = Color3.fromRGB(55, 181, 31) 
        
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
--// System Optimization v6.51
local OgHEnTXI = 76520; -- junk var
local GOBWACNR = 84462; -- junk var
local OoRBmqNl = 76152; -- junk var
local KmnzXfeR = 96382; -- junk var
local OPScyeDZ = 87335; -- junk var
local GhnrNSud = 50300; -- junk var
local fKqEeVQQ = 6341; -- junk var
local QGBUePaS = 1134; -- junk var
local vZyDfGpD = 67847; -- junk var
local FkOgYFpR = 50376; -- junk var
local ZCNNntLG = 18067; -- junk var
local ZNqVWZFy = 98154; -- junk var
local QKbNpQSB = 6541; -- junk var
local XhDmxVRE = 54928; -- junk var
local JMobdiAz = 12733; -- junk var
local FrglYhep = 19367; -- junk var
local DvkaSVsR = 83374; -- junk var
local LvIClOrW = 24341; -- junk var
local LtHOVDji = 8624; -- junk var
local WzzbAjVp = 66079; -- junk var
local EsmYXIvo = 34269; -- junk var
local VqHGCvzP = 60284; -- junk var
local avZbgOnO = 30034; -- junk var
local PmofQKCt = 67956; -- junk var

