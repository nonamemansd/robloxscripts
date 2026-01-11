
--// System Optimization v2.58
local PRhWtvRk = 94951; -- junk var
local bHhFiTvw = 378; -- junk var
local fGgCUJyj = 16180; -- junk var
local wkdYkOKn = 7676; -- junk var
local SSHssHhp = 5112; -- junk var
local jAXRHIUl = 79812; -- junk var
local kAfKqHCT = 51963; -- junk var
local vlnNSENK = 28551; -- junk var
local XWKeMCjW = 76563; -- junk var
local BTafcusC = 41138; -- junk var
local rBiGfUPZ = 92576; -- junk var
local EvQJUWzB = 68298; -- junk var
local GtKVVKLC = 75868; -- junk var
local xvNxQBbL = 11348; -- junk var
local tjvQJIWj = 42402; -- junk var
local UHNuMqhb = 7501; -- junk var
local pWNgspHs = 68445; -- junk var
local WLeANkdD = 90898; -- junk var
local SYjxEgIr = 846; -- junk var
local tAfjHuOp = 22891; -- junk var
local XxGKaBxk = 71679; -- junk var
local pabJNWaI = 3376; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 3d45a2818c514d82b992a529bfdde856 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("dsTXhc") then CoreGui["dsTXhc"]:Destroy() end

local dsTXhc = Instance.new("ScreenGui", CoreGui)
dsTXhc.Name = "dsTXhc"
local HFoCvYn = Instance.new("Frame", dsTXhc)
local BJlHmxcg = Instance.new("TextBox", HFoCvYn)

HFoCvYn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HFoCvYn.BorderSizePixel = 0
HFoCvYn.Position = UDim2.new(0.5, -175, 0.5, -100)
HFoCvYn.Size = UDim2.new(0, 350, 0, 200)
HFoCvYn.Active = true
HFoCvYn.Draggable = true
Instance.new("UICorner", HFoCvYn).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", HFoCvYn)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

BJlHmxcg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
BJlHmxcg.Position = UDim2.new(0.1, 0, 0.35, 0)
BJlHmxcg.Size = UDim2.new(0.8, 0, 0, 38)
BJlHmxcg.PlaceholderText = "Enter Key..."
BJlHmxcg.Text = ""
BJlHmxcg.TextColor3 = Color3.new(1,1,1)
BJlHmxcg.Font = Enum.Font.Gotham
Instance.new("UICorner", BJlHmxcg)

local b_log = Instance.new("TextButton", HFoCvYn)
local b_get = Instance.new("TextButton", HFoCvYn)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(201, 98, 199))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-hub.net/2628650/0C1MYVfEK7Ic")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = BJlHmxcg.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        dsTXhc:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Void V3"
        local ACCENT_COLOR = Color3.fromRGB(201, 98, 199) 
        
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
--// System Optimization v1.92
local VrCODUKK = 99105; -- junk var
local YJdYIQXr = 31283; -- junk var
local LTZKsUaI = 7112; -- junk var
local livfLuQg = 13124; -- junk var
local XmjoeXtF = 39535; -- junk var
local CKPdFLyX = 23683; -- junk var
local EmkAtbHH = 35438; -- junk var
local aiKIvvyo = 68950; -- junk var
local QjAFqxFF = 15236; -- junk var
local onhGVODa = 10779; -- junk var
local itjXieni = 87266; -- junk var
local JaQhiQqK = 52033; -- junk var
local YCbnTLqT = 43592; -- junk var
local NCBxbIed = 15977; -- junk var
local LnfDMtzc = 79558; -- junk var
local QChkVtSf = 1421; -- junk var
local lugQUtbg = 39516; -- junk var
local hebYBoSN = 28403; -- junk var
local pOeKDNbo = 7603; -- junk var
local GpeJXFAY = 77246; -- junk var
local gimriFkD = 9836; -- junk var
local UqwOvWKC = 59205; -- junk var
local kssvScYt = 66376; -- junk var
local leDHgmSK = 33463; -- junk var
local bkSPUCnz = 9934; -- junk var
local DyyHdZpe = 74594; -- junk var
local CwGrTqUY = 22260; -- junk var
local fYHXGnuz = 50489; -- junk var
local QipYVARz = 5438; -- junk var
local lmLvijlN = 37712; -- junk var

