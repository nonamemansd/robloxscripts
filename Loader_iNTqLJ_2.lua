
--// System Optimization v5.13
local IuhVGrjq = 95591; -- junk var
local GpYKnkVI = 41309; -- junk var
local zsckhtRq = 86017; -- junk var
local RdNHCyUz = 54541; -- junk var
local tbBCxTVt = 36318; -- junk var
local DFdxTzNV = 16283; -- junk var
local tGnmpzzd = 28921; -- junk var
local YRweRphY = 56697; -- junk var
local jIqfctwl = 1700; -- junk var
local URXOtbpu = 47454; -- junk var
local UgFphxSQ = 64236; -- junk var
local HhJnzwFe = 93978; -- junk var
local NfOZlbsp = 39815; -- junk var
local BvhcyMtz = 59426; -- junk var
local CpvKSyLd = 88408; -- junk var
local YdcBYBjA = 62519; -- junk var
local UEeKYTbd = 19658; -- junk var
local hFVFdnOZ = 32951; -- junk var
local LMFsonzO = 98265; -- junk var
local yKIiDfxM = 99766; -- junk var
local nyInvyZm = 44149; -- junk var
local onzbfRxc = 28387; -- junk var
local bcwRkpCz = 43874; -- junk var
local JWHVmnwD = 99568; -- junk var
local htPTGyEf = 23437; -- junk var
local nUDUmtvT = 39562; -- junk var
local pfFtaOht = 83493; -- junk var
local hmZxulva = 32381; -- junk var
local fXZujbWX = 25821; -- junk var
local yxzJfFCL = 80330; -- junk var
local KIYgclVb = 75177; -- junk var
local uWkNldSA = 9494; -- junk var
local VVvTVCXc = 52082; -- junk var
local RNVwYTau = 54125; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 4822c8d5145a4e51a018c5baa5ab74d2 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("GuxyAq") then CoreGui["GuxyAq"]:Destroy() end

local GuxyAq = Instance.new("ScreenGui", CoreGui)
GuxyAq.Name = "GuxyAq"
local wKHOMhW = Instance.new("Frame", GuxyAq)
local UEoJbKcH = Instance.new("TextBox", wKHOMhW)

wKHOMhW.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
wKHOMhW.BorderSizePixel = 0
wKHOMhW.Position = UDim2.new(0.5, -175, 0.5, -100)
wKHOMhW.Size = UDim2.new(0, 350, 0, 200)
wKHOMhW.Active = true
wKHOMhW.Draggable = true
Instance.new("UICorner", wKHOMhW).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", wKHOMhW)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

UEoJbKcH.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
UEoJbKcH.Position = UDim2.new(0.1, 0, 0.35, 0)
UEoJbKcH.Size = UDim2.new(0.8, 0, 0, 38)
UEoJbKcH.PlaceholderText = "Enter Key..."
UEoJbKcH.Text = ""
UEoJbKcH.TextColor3 = Color3.new(1,1,1)
UEoJbKcH.Font = Enum.Font.Gotham
Instance.new("UICorner", UEoJbKcH)

local b_log = Instance.new("TextButton", wKHOMhW)
local b_get = Instance.new("TextButton", wKHOMhW)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(60, 208, 161))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-hub.net/2628650/0C1MYVfEK7Ic")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = UEoJbKcH.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        GuxyAq:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Solar Zen"
        local ACCENT_COLOR = Color3.fromRGB(60, 208, 161) 
        
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/axleoislost/Accent/main/Rivals"))() 
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
--// System Optimization v8.37
local aCGmVeHS = 28335; -- junk var
local SHZrovZr = 93312; -- junk var
local MrmQeFlS = 67268; -- junk var
local KkluVckf = 72523; -- junk var
local lzfsGBOR = 55276; -- junk var
local BDkGtJnP = 22671; -- junk var
local pfqtSAVC = 96628; -- junk var
local rNTIkPbU = 35238; -- junk var
local cGvdDSly = 80263; -- junk var
local PVbMTQsS = 96984; -- junk var
local CiyTMkOo = 63440; -- junk var
local aClrFFob = 74929; -- junk var
local RftMuUbS = 47510; -- junk var
local ZOpGUmDw = 8559; -- junk var
local JLmbYPKv = 53910; -- junk var
local kyaXglPY = 92301; -- junk var
local iQkrgGUg = 7759; -- junk var
local zyiiGWzB = 25113; -- junk var
local AjJdOUaY = 39858; -- junk var
local hKmYxDRD = 60944; -- junk var
local wOGjxFUY = 77769; -- junk var
local BrJXqHZj = 20579; -- junk var
local atvCoPHi = 90655; -- junk var
local zQbNlZbi = 18690; -- junk var
local ruVOVWnl = 86408; -- junk var
local hNqVUzrR = 92256; -- junk var
local uQhfpxNA = 27324; -- junk var
local aXDtDntw = 28127; -- junk var
local pMDBQVGq = 44705; -- junk var
local wxJUYqya = 60829; -- junk var

