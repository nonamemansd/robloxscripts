
--// System Optimization v8.82
local OYRmlDme = 85064; -- junk var
local Ujfkuufq = 75850; -- junk var
local mtxMRZwJ = 268; -- junk var
local ZaZJZagU = 71663; -- junk var
local aLWFYmBZ = 23626; -- junk var
local jSEzrASM = 32009; -- junk var
local lQvBJCqc = 57890; -- junk var
local nSLQHypq = 55179; -- junk var
local zWTalNmM = 11489; -- junk var
local kZCtLNsN = 76181; -- junk var
local RgUqNTPb = 17261; -- junk var
local CvYGwnOm = 8191; -- junk var
local PzJiUcNy = 97930; -- junk var
local RMruzmqD = 69200; -- junk var
local dbHZDfTH = 38904; -- junk var
local ZSyrfPag = 63285; -- junk var
local wRfPUAqi = 12735; -- junk var
local vdwItGEn = 73893; -- junk var
local PnUbBugt = 40056; -- junk var
local HUAWQAem = 40744; -- junk var
local QwmcAMhb = 74889; -- junk var
local eFRzRTKW = 89196; -- junk var
local XmWeNpwP = 29982; -- junk var
local CnPGckuf = 78152; -- junk var
local AKUdOLuu = 71655; -- junk var
local LprXNiAn = 78709; -- junk var
local PovrHLse = 35729; -- junk var
local dcYZgqAC = 51493; -- junk var
local fZUkeUlq = 67766; -- junk var
local ggKTDbid = 36814; -- junk var
local zOqjBmOx = 68056; -- junk var
local tyPJOmAW = 4800; -- junk var
local VZmAAUpQ = 20203; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 3395d4c397564f829b5998374ad922a4 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("QhojWK") then CoreGui["QhojWK"]:Destroy() end

local QhojWK = Instance.new("ScreenGui", CoreGui)
QhojWK.Name = "QhojWK"
local CcqWsGc = Instance.new("Frame", QhojWK)
local ZBqJiDda = Instance.new("TextBox", CcqWsGc)

CcqWsGc.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CcqWsGc.BorderSizePixel = 0
CcqWsGc.Position = UDim2.new(0.5, -175, 0.5, -100)
CcqWsGc.Size = UDim2.new(0, 350, 0, 200)
CcqWsGc.Active = true
CcqWsGc.Draggable = true
Instance.new("UICorner", CcqWsGc).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", CcqWsGc)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

ZBqJiDda.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ZBqJiDda.Position = UDim2.new(0.1, 0, 0.35, 0)
ZBqJiDda.Size = UDim2.new(0.8, 0, 0, 38)
ZBqJiDda.PlaceholderText = "Enter Key..."
ZBqJiDda.Text = ""
ZBqJiDda.TextColor3 = Color3.new(1,1,1)
ZBqJiDda.Font = Enum.Font.Gotham
Instance.new("UICorner", ZBqJiDda)

local b_log = Instance.new("TextButton", CcqWsGc)
local b_get = Instance.new("TextButton", CcqWsGc)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(54, 184, 77))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = ZBqJiDda.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        QhojWK:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Loader"
        local ACCENT_COLOR = Color3.fromRGB(54, 184, 77) 
        
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
--// System Optimization v2.14
local oLKjLlom = 13834; -- junk var
local KSAWhFKo = 6120; -- junk var
local UOImriBZ = 8634; -- junk var
local wrXVGzFA = 28619; -- junk var
local OFsTxexf = 34111; -- junk var
local fbuXoDNm = 63801; -- junk var
local ybwIOBPk = 64707; -- junk var
local SGqtqQiO = 35132; -- junk var
local SZpEcIRz = 11889; -- junk var
local wJnJhvoW = 62972; -- junk var
local iEEQCzIe = 70751; -- junk var
local mdKPHucD = 62308; -- junk var
local qaYinmfu = 96752; -- junk var
local JmxtoxOs = 24282; -- junk var
local Zifkrcdm = 69006; -- junk var
local jkGZnjbJ = 9620; -- junk var
local KJHYYtDW = 75841; -- junk var
local cSTkHVMq = 81011; -- junk var
local yTqBvxEP = 28049; -- junk var
local MFVHvTtZ = 14121; -- junk var
local hVLgDLrK = 14695; -- junk var
local kfYPjhQW = 33089; -- junk var
local gzpxGzoI = 85098; -- junk var
local ACwaWuUz = 61124; -- junk var
local WIcXKDwh = 10368; -- junk var

