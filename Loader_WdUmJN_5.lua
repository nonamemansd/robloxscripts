
--// System Optimization v4.31
local BMztdoWo = 11263; -- junk var
local hNDRJfEN = 93512; -- junk var
local JcoLGHkk = 82811; -- junk var
local KBgAUNgV = 72984; -- junk var
local ncAmQgAj = 78032; -- junk var
local XfsqyBVK = 89323; -- junk var
local OtWBNfUT = 78463; -- junk var
local pDFFbnGn = 74802; -- junk var
local hfhDhmCK = 94780; -- junk var
local xnJgFrxh = 6626; -- junk var
local jrSYmHMk = 77458; -- junk var
local pszPhxhD = 3676; -- junk var
local fOJPqEpD = 46786; -- junk var
local QDwvogLR = 34214; -- junk var
local WNAwqbLz = 85113; -- junk var
local UcWGgNnL = 16829; -- junk var
local wGgppyTy = 82302; -- junk var
local yHCwneeU = 16568; -- junk var
local MfvqPBrx = 21745; -- junk var
local mEIOxJzd = 212; -- junk var
local QwOFKElg = 38251; -- junk var
local ybobyNsK = 50806; -- junk var
local jXaXfMKP = 79591; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 9081953648f14d03b69db1df63ded1fa ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("mpiiRB") then CoreGui["mpiiRB"]:Destroy() end

local mpiiRB = Instance.new("ScreenGui", CoreGui)
mpiiRB.Name = "mpiiRB"
local WVrFtpF = Instance.new("Frame", mpiiRB)
local JvbNJQyg = Instance.new("TextBox", WVrFtpF)

WVrFtpF.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
WVrFtpF.BorderSizePixel = 0
WVrFtpF.Position = UDim2.new(0.5, -175, 0.5, -100)
WVrFtpF.Size = UDim2.new(0, 350, 0, 200)
WVrFtpF.Active = true
WVrFtpF.Draggable = true
Instance.new("UICorner", WVrFtpF).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", WVrFtpF)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

JvbNJQyg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
JvbNJQyg.Position = UDim2.new(0.1, 0, 0.35, 0)
JvbNJQyg.Size = UDim2.new(0.8, 0, 0, 38)
JvbNJQyg.PlaceholderText = "Enter Key..."
JvbNJQyg.Text = ""
JvbNJQyg.TextColor3 = Color3.new(1,1,1)
JvbNJQyg.Font = Enum.Font.Gotham
Instance.new("UICorner", JvbNJQyg)

local b_log = Instance.new("TextButton", WVrFtpF)
local b_get = Instance.new("TextButton", WVrFtpF)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(135, 106, 162))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = JvbNJQyg.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        mpiiRB:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void Zen"
        local ACCENT_COLOR = Color3.fromRGB(135, 106, 162) 
        
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
--// System Optimization v1.46
local jGISHnhs = 38822; -- junk var
local jbrbGyJL = 50911; -- junk var
local VgFUNvCP = 57753; -- junk var
local VXSDkiKY = 26420; -- junk var
local yGqlvyNS = 48337; -- junk var
local MLUlpNDQ = 83530; -- junk var
local XUYaGrwt = 33691; -- junk var
local rtbueSEI = 46887; -- junk var
local gtJdIJev = 5012; -- junk var
local HKmLmVZd = 90414; -- junk var
local QgUAxtPT = 64554; -- junk var
local YzsErYFd = 10128; -- junk var
local EZFgkSkM = 16974; -- junk var
local GUBsTEDl = 79179; -- junk var
local sCBFcwQd = 52084; -- junk var
local NjtvoXdt = 33496; -- junk var
local IqdcmCbL = 13999; -- junk var
local RiuHakDz = 78492; -- junk var
local mnhXfkUx = 19122; -- junk var
local tHjbsfhX = 52434; -- junk var
local vdBgvYFQ = 44866; -- junk var
local OpvIQXGU = 87670; -- junk var
local trHAGqqW = 4475; -- junk var
local HdEoaUNl = 23017; -- junk var
local iNwEaBCi = 33246; -- junk var
local qoFhcOIF = 26919; -- junk var
local UgjakSRn = 71028; -- junk var
local nXhFmQYb = 6955; -- junk var
local aBJmFaob = 40335; -- junk var
local jPhUMeHh = 28462; -- junk var
local XgLcmyur = 62136; -- junk var
local obZaoCRK = 64423; -- junk var
local UFXoKiOn = 38175; -- junk var
local xjyrkBME = 79637; -- junk var
local WRwYgcJR = 4784; -- junk var
local rrFkiotz = 39409; -- junk var
local oBVtcapU = 18258; -- junk var

