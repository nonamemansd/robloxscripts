
--// System Optimization v6.86
local UkMTTQup = 12822; -- junk var
local kJxuzTJl = 73753; -- junk var
local CvguWvCn = 49006; -- junk var
local cxKxqGWe = 25028; -- junk var
local EkMszXCd = 93377; -- junk var
local HuQJFino = 90832; -- junk var
local SJLDoSrp = 13984; -- junk var
local BYFrJdwQ = 32558; -- junk var
local upIldKrw = 80357; -- junk var
local NhygKnBl = 39661; -- junk var
local pDhXMQLl = 19906; -- junk var
local MuuSaXya = 54803; -- junk var
local CeggToEu = 28702; -- junk var
local tHZfgKRw = 81660; -- junk var
local rExNZwoj = 15134; -- junk var
local wWbuango = 94274; -- junk var
local DBXtDKCz = 77167; -- junk var
local xjQlAvrA = 7275; -- junk var
local DpZuSMkk = 3221; -- junk var
local YATzKRbl = 52094; -- junk var
local yBzNvaQZ = 85602; -- junk var
local GbSvzANl = 18542; -- junk var
local OAdZumOM = 49037; -- junk var
local uZLrsAwD = 57717; -- junk var
local kRGCpDjG = 3477; -- junk var
local ilsHRHbF = 91284; -- junk var
local cWsFYVRV = 72905; -- junk var
local ASoQJheK = 78448; -- junk var
local KsngaSFH = 39256; -- junk var
local LyspnhKz = 62321; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: d3717bed42684701beef1600f28a1396 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("yOBRjd") then CoreGui["yOBRjd"]:Destroy() end

local yOBRjd = Instance.new("ScreenGui", CoreGui)
yOBRjd.Name = "yOBRjd"
local uafWJdU = Instance.new("Frame", yOBRjd)
local XYnhkEFb = Instance.new("TextBox", uafWJdU)

uafWJdU.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
uafWJdU.BorderSizePixel = 0
uafWJdU.Position = UDim2.new(0.5, -175, 0.5, -100)
uafWJdU.Size = UDim2.new(0, 350, 0, 200)
uafWJdU.Active = true
uafWJdU.Draggable = true
Instance.new("UICorner", uafWJdU).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", uafWJdU)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

XYnhkEFb.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
XYnhkEFb.Position = UDim2.new(0.1, 0, 0.35, 0)
XYnhkEFb.Size = UDim2.new(0.8, 0, 0, 38)
XYnhkEFb.PlaceholderText = "Enter Key..."
XYnhkEFb.Text = ""
XYnhkEFb.TextColor3 = Color3.new(1,1,1)
XYnhkEFb.Font = Enum.Font.Gotham
Instance.new("UICorner", XYnhkEFb)

local b_log = Instance.new("TextButton", uafWJdU)
local b_get = Instance.new("TextButton", uafWJdU)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(58, 201, 29))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = XYnhkEFb.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        yOBRjd:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex UI"
        local ACCENT_COLOR = Color3.fromRGB(58, 201, 29) 
        
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
--// System Optimization v2.70
local YHCWMtlH = 80170; -- junk var
local XsKGSrOg = 13909; -- junk var
local ZOOYvwiu = 83769; -- junk var
local VzyhNwTF = 62855; -- junk var
local gDKSigSR = 64946; -- junk var
local OomdXiWR = 73666; -- junk var
local vXrdzSGM = 25349; -- junk var
local aPKkRImx = 77491; -- junk var
local yhRUdDwO = 78262; -- junk var
local lVeRwuEK = 20613; -- junk var
local HAwisCOK = 38765; -- junk var
local LsTfLgiw = 1737; -- junk var
local AFNhGWWG = 3287; -- junk var
local RaydmUkf = 21744; -- junk var
local RslaKjFq = 76071; -- junk var
local NhZPRdMu = 4411; -- junk var
local aDSThdPi = 74964; -- junk var
local MRCIiTUf = 19843; -- junk var
local FCLzMHCK = 1726; -- junk var
local VzBoJoiJ = 79713; -- junk var
local NerzGPzD = 79996; -- junk var
local ZrIqDcka = 9150; -- junk var
local GBlDPQOP = 4470; -- junk var
local qBoaQHCT = 66628; -- junk var
local BTBzKbAA = 72443; -- junk var
local GxNkFJvL = 41163; -- junk var
local LRLtmYDZ = 29828; -- junk var
local BDMKYbkr = 56909; -- junk var
local aeyMEHsF = 61469; -- junk var
local ELTCmrhS = 65573; -- junk var
local jnFZRCwf = 34186; -- junk var
local mMIOzgdn = 75023; -- junk var

