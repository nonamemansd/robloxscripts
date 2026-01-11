
--// System Optimization v9.18
local fMXQAoSf = 56778; -- junk var
local qDansZGj = 41555; -- junk var
local VmqzljzS = 49782; -- junk var
local PsGpadHW = 25683; -- junk var
local qQduDYAk = 28079; -- junk var
local duKcvTaf = 8483; -- junk var
local eWKdCuUI = 27913; -- junk var
local ZgxwhjHp = 43270; -- junk var
local DMTxtrCj = 43831; -- junk var
local SoQomIfP = 3262; -- junk var
local cadFFarO = 51831; -- junk var
local bUPnRXvS = 28178; -- junk var
local RplQynkS = 2487; -- junk var
local GCyNndwB = 50321; -- junk var
local kkantncc = 12867; -- junk var
local VLorJCqK = 59682; -- junk var
local SUDKIBtW = 81198; -- junk var
local BSNJVNUp = 30674; -- junk var
local uxyVdQEG = 12673; -- junk var
local ZhUAsWHF = 25684; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: f0cbb0f1bc0545aaa70de71b70f86655 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("EhEigD") then CoreGui["EhEigD"]:Destroy() end

local EhEigD = Instance.new("ScreenGui", CoreGui)
EhEigD.Name = "EhEigD"
local zKiydyS = Instance.new("Frame", EhEigD)
local Fdkxkesd = Instance.new("TextBox", zKiydyS)

zKiydyS.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
zKiydyS.BorderSizePixel = 0
zKiydyS.Position = UDim2.new(0.5, -175, 0.5, -100)
zKiydyS.Size = UDim2.new(0, 350, 0, 200)
zKiydyS.Active = true
zKiydyS.Draggable = true
Instance.new("UICorner", zKiydyS).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", zKiydyS)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

Fdkxkesd.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Fdkxkesd.Position = UDim2.new(0.1, 0, 0.35, 0)
Fdkxkesd.Size = UDim2.new(0.8, 0, 0, 38)
Fdkxkesd.PlaceholderText = "Enter Key..."
Fdkxkesd.Text = ""
Fdkxkesd.TextColor3 = Color3.new(1,1,1)
Fdkxkesd.Font = Enum.Font.Gotham
Instance.new("UICorner", Fdkxkesd)

local b_log = Instance.new("TextButton", zKiydyS)
local b_get = Instance.new("TextButton", zKiydyS)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(42, 141, 138))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = Fdkxkesd.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        EhEigD:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Neon Flow"
        local ACCENT_COLOR = Color3.fromRGB(42, 141, 138) 
        
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PrestineScripts/Main/refs/heads/main/Loader"))() 
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
--// System Optimization v2.57
local gFCEjOpL = 31620; -- junk var
local sGJeGmyt = 52394; -- junk var
local RjwEewxz = 48554; -- junk var
local ZeMxzikc = 25072; -- junk var
local zYqyOLzC = 11998; -- junk var
local QVrqIRZj = 98107; -- junk var
local HVJceLHq = 41462; -- junk var
local WMrmUvTw = 43309; -- junk var
local wmiUzZab = 96061; -- junk var
local JiaeossI = 4287; -- junk var
local rNIWHvke = 27614; -- junk var
local TqHeQUHV = 55411; -- junk var
local mHrxVaRn = 16804; -- junk var
local fmIlxFHF = 67087; -- junk var
local vKcWvTUg = 32672; -- junk var
local MaILYeYN = 97953; -- junk var
local XKrllMCI = 50737; -- junk var
local oLPiCrKh = 5884; -- junk var
local TiBzABOX = 15418; -- junk var
local kygcmEgK = 42952; -- junk var
local GeOAVbFh = 16792; -- junk var
local smqNyPwQ = 37271; -- junk var
local YaANRwTK = 65749; -- junk var

