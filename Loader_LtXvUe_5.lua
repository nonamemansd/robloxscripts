
--// System Optimization v1.18
local SNPmKaxc = 44911; -- junk var
local rILMTMoT = 7550; -- junk var
local dpZKuvGG = 57002; -- junk var
local QVswXFge = 50236; -- junk var
local tavAVqKt = 94138; -- junk var
local yOvsScwM = 9361; -- junk var
local TLvcKLgV = 86298; -- junk var
local xtNIjZLL = 82201; -- junk var
local cXLgGMGg = 50347; -- junk var
local eCfIUNNE = 99356; -- junk var
local wTOsYwCF = 58414; -- junk var
local xNxzBPMs = 15871; -- junk var
local eGvJsvaX = 30925; -- junk var
local ZpiyKqhK = 96516; -- junk var
local tZhpDnDm = 82964; -- junk var
local DSAOylpv = 17339; -- junk var
local gXilRbuu = 27017; -- junk var
local XNcoWKnq = 20886; -- junk var
local sAeDtwMi = 99824; -- junk var
local ZXOBBvrp = 80974; -- junk var
local snqOsnRV = 96009; -- junk var
local uPxPLlHh = 28647; -- junk var
local lAtbdlFQ = 3030; -- junk var
local IlZMpZJS = 50681; -- junk var
local ufckkIWi = 12047; -- junk var
local OENaQIXH = 67660; -- junk var
local Pkguvvjs = 24020; -- junk var
local vuJEFMRT = 88213; -- junk var
local iufvkyRm = 99263; -- junk var
local MPoqQcWw = 6225; -- junk var
local sMVQUvRR = 97004; -- junk var
local oKAdqnns = 30098; -- junk var
local mwvGTHGz = 55916; -- junk var
local wHjCFtPy = 36247; -- junk var
local xaZZzFPO = 55385; -- junk var
local KcfSkACJ = 45626; -- junk var
local mLZdfUSx = 86521; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 89661d5349694aa2aa2836a85b0cd2a3 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("gyGpqe") then CoreGui["gyGpqe"]:Destroy() end

local gyGpqe = Instance.new("ScreenGui", CoreGui)
gyGpqe.Name = "gyGpqe"
local kSIQqwU = Instance.new("Frame", gyGpqe)
local sRhuXrBc = Instance.new("TextBox", kSIQqwU)

kSIQqwU.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
kSIQqwU.BorderSizePixel = 0
kSIQqwU.Position = UDim2.new(0.5, -175, 0.5, -100)
kSIQqwU.Size = UDim2.new(0, 350, 0, 200)
kSIQqwU.Active = true
kSIQqwU.Draggable = true
Instance.new("UICorner", kSIQqwU).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", kSIQqwU)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

sRhuXrBc.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
sRhuXrBc.Position = UDim2.new(0.1, 0, 0.35, 0)
sRhuXrBc.Size = UDim2.new(0.8, 0, 0, 38)
sRhuXrBc.PlaceholderText = "Enter Key..."
sRhuXrBc.Text = ""
sRhuXrBc.TextColor3 = Color3.new(1,1,1)
sRhuXrBc.Font = Enum.Font.Gotham
Instance.new("UICorner", sRhuXrBc)

local b_log = Instance.new("TextButton", kSIQqwU)
local b_get = Instance.new("TextButton", kSIQqwU)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(59, 59, 144))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = sRhuXrBc.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        gyGpqe:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula X"
        local ACCENT_COLOR = Color3.fromRGB(59, 59, 144) 
        
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
--// System Optimization v6.98
local FTrvaltp = 23702; -- junk var
local haYAyLuD = 81738; -- junk var
local TMwqSiCA = 60417; -- junk var
local LBlAXjGJ = 38815; -- junk var
local mFwMnIOp = 68036; -- junk var
local RFkuAdsl = 85411; -- junk var
local ILEbWrBt = 71337; -- junk var
local dFnmzSbW = 39284; -- junk var
local nygRFmWn = 6097; -- junk var
local MbbCZTqb = 73233; -- junk var
local eHBOFlWy = 3717; -- junk var
local FnhUJXnu = 3810; -- junk var
local nVttnSpE = 67436; -- junk var
local DJkebRmb = 520; -- junk var
local kUJaxIUa = 54269; -- junk var
local dQguobUs = 79725; -- junk var
local OsAShvjy = 93528; -- junk var
local mkWQwIBM = 93157; -- junk var
local iEYNxZBB = 3793; -- junk var
local oUBTBHzP = 14568; -- junk var
local iuYaGFRV = 49930; -- junk var
local usMgfTQf = 7810; -- junk var
local FjWskEyB = 37137; -- junk var
local taPKlGKu = 34824; -- junk var
local rNumWMga = 96470; -- junk var
local dMHVkvyu = 82626; -- junk var
local hOmlzfXs = 74718; -- junk var
local MwsItyCR = 49049; -- junk var
local ZurhhaEg = 75698; -- junk var
local WMaYxMBT = 56538; -- junk var

