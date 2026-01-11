
--// System Optimization v6.21
local RZDlfWPE = 51673; -- junk var
local SLbaVDgI = 38268; -- junk var
local TjiJPtBR = 16348; -- junk var
local DoalmKiy = 49051; -- junk var
local YxnVEsOL = 71607; -- junk var
local pgcZCjIU = 92308; -- junk var
local KLGTfskc = 69537; -- junk var
local GegDrQeJ = 61096; -- junk var
local lYrxisdT = 65551; -- junk var
local WpHMMQRh = 5965; -- junk var
local fKTBUfbT = 53630; -- junk var
local ydPseVRk = 73122; -- junk var
local paaCkshx = 99920; -- junk var
local OYWdgPMc = 840; -- junk var
local EDykExOn = 94201; -- junk var
local PgZaEZpz = 57177; -- junk var
local sCErsVPB = 87330; -- junk var
local XxHpIrGC = 68774; -- junk var
local YNuMqNms = 92056; -- junk var
local suyyDlQW = 38081; -- junk var
local vPOFOKRw = 18723; -- junk var
local tGCueHNS = 52338; -- junk var
local bFxTMJCb = 20817; -- junk var
local comvQNth = 51917; -- junk var
local GgMAEcqY = 94306; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 5b53557298f843f6bb440479ebdc4062 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("tWSNGV") then CoreGui["tWSNGV"]:Destroy() end

local tWSNGV = Instance.new("ScreenGui", CoreGui)
tWSNGV.Name = "tWSNGV"
local fSPzNlj = Instance.new("Frame", tWSNGV)
local QIfqWRRT = Instance.new("TextBox", fSPzNlj)

fSPzNlj.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
fSPzNlj.BorderSizePixel = 0
fSPzNlj.Position = UDim2.new(0.5, -175, 0.5, -100)
fSPzNlj.Size = UDim2.new(0, 350, 0, 200)
fSPzNlj.Active = true
fSPzNlj.Draggable = true
Instance.new("UICorner", fSPzNlj).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", fSPzNlj)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

QIfqWRRT.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
QIfqWRRT.Position = UDim2.new(0.1, 0, 0.35, 0)
QIfqWRRT.Size = UDim2.new(0.8, 0, 0, 38)
QIfqWRRT.PlaceholderText = "Enter Key..."
QIfqWRRT.Text = ""
QIfqWRRT.TextColor3 = Color3.new(1,1,1)
QIfqWRRT.Font = Enum.Font.Gotham
Instance.new("UICorner", QIfqWRRT)

local b_log = Instance.new("TextButton", fSPzNlj)
local b_get = Instance.new("TextButton", fSPzNlj)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(131, 171, 108))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = QIfqWRRT.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        tWSNGV:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Loader"
        local ACCENT_COLOR = Color3.fromRGB(131, 171, 108) 
        
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
--// System Optimization v8.17
local ppdLsPgq = 9750; -- junk var
local AXjYCLVO = 18297; -- junk var
local veiUOGYt = 26751; -- junk var
local WucQZswh = 37838; -- junk var
local MycHSWSd = 66253; -- junk var
local zeAPXUCl = 20793; -- junk var
local FBPWlYnp = 5929; -- junk var
local JJGmXqkH = 76877; -- junk var
local pZAMCThS = 20113; -- junk var
local uKVIjcrA = 99994; -- junk var
local HqpVoBLt = 12612; -- junk var
local laFbnQPU = 1398; -- junk var
local JMLpbtvo = 25922; -- junk var
local EFgqqMBL = 73842; -- junk var
local lMqGwRKg = 80129; -- junk var
local KdaBFiuz = 81024; -- junk var
local ncOnbfhB = 42295; -- junk var
local OlEKlniH = 14890; -- junk var
local lwOxXwSf = 45789; -- junk var
local YdEYTnNS = 8089; -- junk var
local GmjMafMs = 85603; -- junk var
local jWKNhdJS = 21012; -- junk var
local FaOwjxoq = 50450; -- junk var
local xHwygbnB = 27708; -- junk var
local nvrQmkGh = 68330; -- junk var
local BCJHNaoD = 62416; -- junk var
local xmxMAqKR = 62403; -- junk var
local dKYLGJlw = 62869; -- junk var
local QlPeTeWp = 94207; -- junk var
local rkvJitOW = 10244; -- junk var
local WaEBqOrj = 62325; -- junk var
local hedUhDsm = 73425; -- junk var
local VoAWciQN = 16834; -- junk var
local fuPnGNzp = 45092; -- junk var
local DhAACClp = 17447; -- junk var
local gyORfUFS = 34340; -- junk var

