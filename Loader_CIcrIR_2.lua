
--// System Optimization v9.45
local jzuNsrGn = 41359; -- junk var
local DiYiEpZi = 64843; -- junk var
local DXisUzgz = 69784; -- junk var
local geaVuunx = 11948; -- junk var
local eFlmIBMi = 88293; -- junk var
local oazQgQOb = 11181; -- junk var
local WcRRvFrh = 72729; -- junk var
local ahlAtYTK = 26044; -- junk var
local bbiOHGVv = 82173; -- junk var
local bzJYLwXq = 57667; -- junk var
local xQFBZdty = 26916; -- junk var
local TunLiSXX = 56777; -- junk var
local JBFfEeKP = 39473; -- junk var
local OFAvfdTE = 15202; -- junk var
local jtBSIGnj = 50490; -- junk var
local bnpOeiFQ = 20572; -- junk var
local oqhAlGam = 62499; -- junk var
local ioVbxXNz = 77171; -- junk var
local kLhHTUfM = 21329; -- junk var
local gAyxNXNk = 68873; -- junk var
local kAlpWJkE = 94401; -- junk var
local JfyZBNvX = 54685; -- junk var
local cQgoBAfo = 70244; -- junk var
local LMGeNRFK = 25866; -- junk var
local sOmrRMSJ = 49628; -- junk var
local YFeRBPbp = 92792; -- junk var
local btqkmkaG = 90848; -- junk var
local KbPsCdYG = 3778; -- junk var
local LKqcmauO = 11966; -- junk var
local SxxAmwTO = 11016; -- junk var
local BhOodtdp = 54517; -- junk var
local hauxNLoM = 57467; -- junk var
local OnvhCFTZ = 61583; -- junk var
local tMvKsgmK = 19271; -- junk var
local LxxDIYjh = 76591; -- junk var
local WoyPMHQv = 99825; -- junk var
local KLyVgJxq = 86383; -- junk var
local GXslyfZa = 54453; -- junk var
local QBcRuVRP = 71849; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 5957297c7b1b4932a006408bdea2ebcc ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("JdDLuS") then CoreGui["JdDLuS"]:Destroy() end

local JdDLuS = Instance.new("ScreenGui", CoreGui)
JdDLuS.Name = "JdDLuS"
local dKkFsvg = Instance.new("Frame", JdDLuS)
local QKzrlZGK = Instance.new("TextBox", dKkFsvg)

dKkFsvg.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
dKkFsvg.BorderSizePixel = 0
dKkFsvg.Position = UDim2.new(0.5, -175, 0.5, -100)
dKkFsvg.Size = UDim2.new(0, 350, 0, 200)
dKkFsvg.Active = true
dKkFsvg.Draggable = true
Instance.new("UICorner", dKkFsvg).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", dKkFsvg)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

QKzrlZGK.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
QKzrlZGK.Position = UDim2.new(0.1, 0, 0.35, 0)
QKzrlZGK.Size = UDim2.new(0.8, 0, 0, 38)
QKzrlZGK.PlaceholderText = "Enter Key..."
QKzrlZGK.Text = ""
QKzrlZGK.TextColor3 = Color3.new(1,1,1)
QKzrlZGK.Font = Enum.Font.Gotham
Instance.new("UICorner", QKzrlZGK)

local b_log = Instance.new("TextButton", dKkFsvg)
local b_get = Instance.new("TextButton", dKkFsvg)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(175, 181, 155))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-hub.net/2628650/0C1MYVfEK7Ic")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = QKzrlZGK.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        JdDLuS:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Hub"
        local ACCENT_COLOR = Color3.fromRGB(175, 181, 155) 
        
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
--// System Optimization v3.94
local yamwzhQY = 65978; -- junk var
local eolgfLhn = 54834; -- junk var
local TDjpXiOn = 90053; -- junk var
local FEmdfLMh = 97748; -- junk var
local tIRSkXeu = 27302; -- junk var
local jZNwbnun = 54175; -- junk var
local oLcjcwkC = 68740; -- junk var
local wfHxnUFx = 27099; -- junk var
local LwlzSYqe = 91576; -- junk var
local QzFDcwBg = 18818; -- junk var
local HHkujKIP = 509; -- junk var
local XJklMdcy = 97423; -- junk var
local edIfEpAu = 75864; -- junk var
local jMGAdGJq = 81558; -- junk var
local QfbphHxV = 33281; -- junk var
local VtQciAsx = 91121; -- junk var
local Pxhaavby = 40571; -- junk var
local clzCrFEU = 97666; -- junk var
local LgKwQILH = 1569; -- junk var
local SBqKCkRQ = 68047; -- junk var
local kJdtFZOu = 81956; -- junk var
local bCExCGcl = 45212; -- junk var

