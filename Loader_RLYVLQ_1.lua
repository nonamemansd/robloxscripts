
--// System Optimization v8.43
local KFYfuCDR = 43293; -- junk var
local mSVzDZBb = 87889; -- junk var
local IPcPOUEK = 30435; -- junk var
local uQxUqhKn = 42948; -- junk var
local YnJWvuKP = 66746; -- junk var
local BNQRfkxC = 23970; -- junk var
local YxILxXCF = 83431; -- junk var
local AFtQbDks = 36017; -- junk var
local CUKwJddQ = 69472; -- junk var
local zHDcbjos = 5763; -- junk var
local tRggxrHn = 15358; -- junk var
local zwkMEAun = 66669; -- junk var
local fcQXPXAK = 37044; -- junk var
local YRsFnhEP = 63950; -- junk var
local MRfkyAQO = 95036; -- junk var
local LkAcobBT = 2156; -- junk var
local KcGtqFmB = 10427; -- junk var
local IRlmSTsk = 61774; -- junk var
local TSAUMhJv = 35489; -- junk var
local GtIydJMk = 94849; -- junk var
local sbwoweAo = 63446; -- junk var
local JBXikwTq = 75419; -- junk var
local BUnToItv = 17533; -- junk var
local zKXnCCFM = 7183; -- junk var
local Doblrejq = 15927; -- junk var
local RrxGtvvt = 11347; -- junk var
local GdDxycKE = 87717; -- junk var
local rVCcwOWU = 75520; -- junk var
local fLFOMDxf = 56752; -- junk var
local fNWlvOjY = 68545; -- junk var
local cZeQllAx = 54188; -- junk var
local mGzBfZKK = 66142; -- junk var
local vbaaibSa = 75656; -- junk var
local QbXRuIjZ = 36019; -- junk var
local EkxDREpV = 51078; -- junk var
local hpyXvEZS = 95121; -- junk var
local BVaqpurt = 43192; -- junk var
local kofgsfKv = 71947; -- junk var
local gYInBmVN = 29441; -- junk var
local natPsvoT = 60618; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 2e6d60480b164e2a82cf5913f5102733 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("Dajcau") then CoreGui["Dajcau"]:Destroy() end

local Dajcau = Instance.new("ScreenGui", CoreGui)
Dajcau.Name = "Dajcau"
local HRneUja = Instance.new("Frame", Dajcau)
local jKFjRdqT = Instance.new("TextBox", HRneUja)

HRneUja.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HRneUja.BorderSizePixel = 0
HRneUja.Position = UDim2.new(0.5, -175, 0.5, -100)
HRneUja.Size = UDim2.new(0, 350, 0, 200)
HRneUja.Active = true
HRneUja.Draggable = true
Instance.new("UICorner", HRneUja).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", HRneUja)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

jKFjRdqT.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
jKFjRdqT.Position = UDim2.new(0.1, 0, 0.35, 0)
jKFjRdqT.Size = UDim2.new(0.8, 0, 0, 38)
jKFjRdqT.PlaceholderText = "Enter Key..."
jKFjRdqT.Text = ""
jKFjRdqT.TextColor3 = Color3.new(1,1,1)
jKFjRdqT.Font = Enum.Font.Gotham
Instance.new("UICorner", jKFjRdqT)

local b_log = Instance.new("TextButton", HRneUja)
local b_get = Instance.new("TextButton", HRneUja)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(111, 176, 86))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = jKFjRdqT.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        Dajcau:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Cyber Software"
        local ACCENT_COLOR = Color3.fromRGB(111, 176, 86) 
        
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
--// System Optimization v4.74
local cuBVBQlP = 76032; -- junk var
local HDvIiNMh = 1651; -- junk var
local DJsbkWxb = 97661; -- junk var
local sthgIfAO = 26072; -- junk var
local CIkpPXIJ = 13976; -- junk var
local EdtbpSOL = 33140; -- junk var
local wjoUyshd = 89799; -- junk var
local zwgeAGwP = 21973; -- junk var
local eEiugCaS = 92765; -- junk var
local PmmDmmee = 92728; -- junk var
local xbvEdCGS = 63199; -- junk var
local gLsgyBfD = 46255; -- junk var
local zXcLhFnK = 56859; -- junk var
local PBnevBpz = 2316; -- junk var
local JdBZDZvc = 19555; -- junk var
local xRdDxmAr = 40375; -- junk var
local mURwtOax = 77444; -- junk var
local aZZmaCuW = 72275; -- junk var
local WbczFjdC = 34447; -- junk var
local bmDvtLzu = 38619; -- junk var
local dBCKAOuq = 56705; -- junk var
local nuMCTMyf = 67792; -- junk var
local rhLhkqqz = 50617; -- junk var
local jjTRKrLN = 93015; -- junk var
local jCtdApyz = 71928; -- junk var
local BxjRqZYf = 3301; -- junk var
local MPccpOKs = 44629; -- junk var
local CHLVPiMW = 28794; -- junk var
local LKAnazrM = 64469; -- junk var
local VhkCCRnG = 48318; -- junk var
local fexCoPkM = 46930; -- junk var
local DKTaqnFY = 91548; -- junk var
local OBorxGRM = 6807; -- junk var
local ItZyOxvz = 4156; -- junk var
local ImmQkWwa = 28893; -- junk var
local xLIwZVgW = 45805; -- junk var
local ycSUMLpR = 16014; -- junk var
local PFYKfvLK = 75791; -- junk var
local jiLCaMZH = 16702; -- junk var
local dBRJrwni = 89896; -- junk var

