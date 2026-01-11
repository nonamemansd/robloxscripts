
--// System Optimization v3.84
local aGgYrfYB = 70917; -- junk var
local BHhXqBej = 73781; -- junk var
local HxTtWjEc = 97411; -- junk var
local GAndJYKS = 89059; -- junk var
local kbdjQnYZ = 86163; -- junk var
local OWIciyFd = 59203; -- junk var
local vkKtxtUp = 12728; -- junk var
local htoRjUEE = 72215; -- junk var
local RmoTnosg = 90732; -- junk var
local xeNwLACq = 17903; -- junk var
local CvvgKtNV = 85705; -- junk var
local XXwSKrRj = 23409; -- junk var
local zRofTUbu = 97377; -- junk var
local fEixzqlW = 57756; -- junk var
local zYRerRjn = 41749; -- junk var
local NiNdzBdA = 60006; -- junk var
local TATYPhdS = 59617; -- junk var
local SqAndHJV = 16609; -- junk var
local BaExvdEi = 40760; -- junk var
local PUmEjGRr = 81136; -- junk var
local qQbLLQwv = 54043; -- junk var
local FkTMEkUF = 32853; -- junk var
local FCaQEiYA = 5059; -- junk var
local BLlWiuIj = 38029; -- junk var
local zFhmOIIw = 37906; -- junk var
local wPjCtsLD = 60242; -- junk var
local WOoNPISY = 51764; -- junk var
local zdjhtiSv = 29215; -- junk var
local hfqSaQyM = 11833; -- junk var
local iIgHEfeK = 49844; -- junk var
local tGgChqaz = 36161; -- junk var
local nAccOoxg = 79420; -- junk var
local HCtFOEhB = 135; -- junk var
local plsOCrYf = 89095; -- junk var
local vaKRnQCq = 42613; -- junk var
local uNeIcjQG = 44350; -- junk var
local nHESDPKC = 60187; -- junk var
local AgKbzKHr = 75336; -- junk var
local BhrKqhkD = 82610; -- junk var
local IyhfHPPb = 43975; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 310a0b94eca14c2d81a5d5aa52b33142 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("sMsQBF") then CoreGui["sMsQBF"]:Destroy() end

local sMsQBF = Instance.new("ScreenGui", CoreGui)
sMsQBF.Name = "sMsQBF"
local iRamXTq = Instance.new("Frame", sMsQBF)
local PAoYvIMB = Instance.new("TextBox", iRamXTq)

iRamXTq.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
iRamXTq.BorderSizePixel = 0
iRamXTq.Position = UDim2.new(0.5, -175, 0.5, -100)
iRamXTq.Size = UDim2.new(0, 350, 0, 200)
iRamXTq.Active = true
iRamXTq.Draggable = true
Instance.new("UICorner", iRamXTq).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", iRamXTq)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

PAoYvIMB.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
PAoYvIMB.Position = UDim2.new(0.1, 0, 0.35, 0)
PAoYvIMB.Size = UDim2.new(0.8, 0, 0, 38)
PAoYvIMB.PlaceholderText = "Enter Key..."
PAoYvIMB.Text = ""
PAoYvIMB.TextColor3 = Color3.new(1,1,1)
PAoYvIMB.Font = Enum.Font.Gotham
Instance.new("UICorner", PAoYvIMB)

local b_log = Instance.new("TextButton", iRamXTq)
local b_get = Instance.new("TextButton", iRamXTq)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(165, 128, 52))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = PAoYvIMB.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        sMsQBF:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar X"
        local ACCENT_COLOR = Color3.fromRGB(165, 128, 52) 
        
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
--// System Optimization v5.85
local xBmhzPXT = 55435; -- junk var
local NvOqVhyY = 26106; -- junk var
local IgygDsoF = 85804; -- junk var
local BrVhgErf = 72135; -- junk var
local DpZqMykT = 19812; -- junk var
local RMBqwAQf = 68982; -- junk var
local CAaPhQSp = 73915; -- junk var
local mBxBUJrB = 30452; -- junk var
local ixQNRCUi = 47496; -- junk var
local iFXPbzZp = 98023; -- junk var
local zyULdVtQ = 56785; -- junk var
local KVWcJwHj = 74997; -- junk var
local VqbLCVXs = 4612; -- junk var
local QrxwNCWS = 10274; -- junk var
local RQqpYRFr = 97087; -- junk var
local PAPHHNQX = 44628; -- junk var
local tWJRFOOJ = 54008; -- junk var
local ylNyMwSM = 65832; -- junk var
local rCkmGJHl = 21155; -- junk var
local LCcaBgJF = 41307; -- junk var
local UrnGFrBs = 80192; -- junk var
local yrmKkttB = 13467; -- junk var
local oDgYjxtq = 49956; -- junk var
local tdqHjpzd = 38057; -- junk var

