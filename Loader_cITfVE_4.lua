
--// System Optimization v8.34
local YoHRGjBV = 77424; -- junk var
local AZYVSHDc = 79335; -- junk var
local mDoTjOhs = 18033; -- junk var
local vYYjuUeN = 8416; -- junk var
local BptRBUcQ = 58768; -- junk var
local BucoaBuH = 76920; -- junk var
local XzmcQQcg = 54316; -- junk var
local uAgzaQUy = 90388; -- junk var
local htRaiOJC = 83915; -- junk var
local dygqFOXX = 38126; -- junk var
local rEWQZjqh = 36685; -- junk var
local mbSTTmDO = 51378; -- junk var
local fbqJqWbV = 20773; -- junk var
local ScfJPFMX = 80649; -- junk var
local XRMhupse = 86457; -- junk var
local upAliILz = 53315; -- junk var
local tbfaDLbl = 8469; -- junk var
local sOfnYkBj = 68199; -- junk var
local MueOlZzP = 99049; -- junk var
local nlSUAgvr = 33178; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 468c570345964ee3b63ae1520117ccc4 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("uUEzCs") then CoreGui["uUEzCs"]:Destroy() end

local uUEzCs = Instance.new("ScreenGui", CoreGui)
uUEzCs.Name = "uUEzCs"
local DMbvYRD = Instance.new("Frame", uUEzCs)
local RSAtjnlK = Instance.new("TextBox", DMbvYRD)

DMbvYRD.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
DMbvYRD.BorderSizePixel = 0
DMbvYRD.Position = UDim2.new(0.5, -175, 0.5, -100)
DMbvYRD.Size = UDim2.new(0, 350, 0, 200)
DMbvYRD.Active = true
DMbvYRD.Draggable = true
Instance.new("UICorner", DMbvYRD).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", DMbvYRD)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

RSAtjnlK.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
RSAtjnlK.Position = UDim2.new(0.1, 0, 0.35, 0)
RSAtjnlK.Size = UDim2.new(0.8, 0, 0, 38)
RSAtjnlK.PlaceholderText = "Enter Key..."
RSAtjnlK.Text = ""
RSAtjnlK.TextColor3 = Color3.new(1,1,1)
RSAtjnlK.Font = Enum.Font.Gotham
Instance.new("UICorner", RSAtjnlK)

local b_log = Instance.new("TextButton", DMbvYRD)
local b_get = Instance.new("TextButton", DMbvYRD)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(122, 83, 66))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = RSAtjnlK.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        uUEzCs:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex Hub"
        local ACCENT_COLOR = Color3.fromRGB(122, 83, 66) 
        
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
--// System Optimization v7.88
local DRpWkkcT = 58609; -- junk var
local zlxKVJNo = 57125; -- junk var
local PVibnyvG = 16487; -- junk var
local bwAQFUHS = 11932; -- junk var
local UgjDLLkr = 33894; -- junk var
local YfOMUoPR = 97613; -- junk var
local NFvAGhSg = 91784; -- junk var
local RjUNAzQq = 2194; -- junk var
local GDtLrPEC = 4249; -- junk var
local AXaRcpeV = 6695; -- junk var
local XvzUoMvw = 42352; -- junk var
local lAMdVXYW = 95113; -- junk var
local abbVKfGl = 32391; -- junk var
local oxLhTegJ = 69815; -- junk var
local lzReSPtt = 61153; -- junk var
local znJnidAq = 27831; -- junk var
local XyvkdzBG = 68026; -- junk var
local kvfYxWqL = 74363; -- junk var
local qKpgeKwg = 73676; -- junk var
local ZVTNuxeP = 37393; -- junk var
local hbHtGmua = 73137; -- junk var
local eWzKbBNG = 6593; -- junk var
local DSEkirko = 90613; -- junk var
local sZbjScci = 65397; -- junk var
local GomOcmax = 95244; -- junk var
local vwzgVrqy = 75261; -- junk var
local xteqWUsI = 95969; -- junk var
local SqvkDEcQ = 58127; -- junk var

