
--// System Optimization v3.70
local EozrzJGh = 75029; -- junk var
local MctaOAmc = 94761; -- junk var
local narKmtXT = 74987; -- junk var
local dtOJOPVM = 89367; -- junk var
local tAYNNqGW = 20630; -- junk var
local fFTvEROv = 22375; -- junk var
local WzTAWcEs = 91278; -- junk var
local iUithupD = 35645; -- junk var
local DPpRewba = 34548; -- junk var
local PPOcIIvq = 93419; -- junk var
local ntTAragy = 88705; -- junk var
local gchtapFz = 50711; -- junk var
local SRpwOJLB = 50777; -- junk var
local nsCtCLMh = 75018; -- junk var
local AcEkYoXc = 84190; -- junk var
local OrNASKvt = 63513; -- junk var
local IMoLfKvt = 43929; -- junk var
local bKyNWpbi = 60212; -- junk var
local csbpDYPI = 13651; -- junk var
local MaBjAZqX = 44458; -- junk var
local EVLzAeKm = 20389; -- junk var
local MrCNzwNp = 13616; -- junk var
local lYQVkGJR = 66225; -- junk var
local aipvxTyc = 50741; -- junk var
local trsXHMIC = 62610; -- junk var
local OHEKJrci = 41458; -- junk var
local lRpnNPFd = 86354; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 7c28d3688d0842eabc6c7919dc859dad ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("vWnCTl") then CoreGui["vWnCTl"]:Destroy() end

local vWnCTl = Instance.new("ScreenGui", CoreGui)
vWnCTl.Name = "vWnCTl"
local CNMmUhi = Instance.new("Frame", vWnCTl)
local TmZqGykF = Instance.new("TextBox", CNMmUhi)

CNMmUhi.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CNMmUhi.BorderSizePixel = 0
CNMmUhi.Position = UDim2.new(0.5, -175, 0.5, -100)
CNMmUhi.Size = UDim2.new(0, 350, 0, 200)
CNMmUhi.Active = true
CNMmUhi.Draggable = true
Instance.new("UICorner", CNMmUhi).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", CNMmUhi)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

TmZqGykF.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TmZqGykF.Position = UDim2.new(0.1, 0, 0.35, 0)
TmZqGykF.Size = UDim2.new(0.8, 0, 0, 38)
TmZqGykF.PlaceholderText = "Enter Key..."
TmZqGykF.Text = ""
TmZqGykF.TextColor3 = Color3.new(1,1,1)
TmZqGykF.Font = Enum.Font.Gotham
Instance.new("UICorner", TmZqGykF)

local b_log = Instance.new("TextButton", CNMmUhi)
local b_get = Instance.new("TextButton", CNMmUhi)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(106, 130, 205))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = TmZqGykF.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        vWnCTl:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Loader"
        local ACCENT_COLOR = Color3.fromRGB(106, 130, 205) 
        
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
--// System Optimization v6.88
local mAcSkubT = 57499; -- junk var
local sTMpKGrh = 70785; -- junk var
local gYFLcSCy = 71509; -- junk var
local uyzFtyxO = 35730; -- junk var
local nGTECyBG = 86281; -- junk var
local QcdYXpUw = 36753; -- junk var
local hQOaGvEq = 99706; -- junk var
local odCqMJaK = 89024; -- junk var
local lPyBoovF = 51164; -- junk var
local qytKoqqB = 84194; -- junk var
local UUgvhmUr = 2330; -- junk var
local HIDagVmm = 25843; -- junk var
local uBeRRUju = 51611; -- junk var
local LvTxzvJs = 30488; -- junk var
local iivDgKkX = 25901; -- junk var
local aHaBNmmT = 86427; -- junk var
local vTndZzsh = 6807; -- junk var
local BUROFVcl = 50379; -- junk var
local rAzNiBer = 26427; -- junk var
local NEgmDQsK = 74450; -- junk var
local OdJEUzOy = 71520; -- junk var
local EGOQTbjV = 54462; -- junk var
local YXbDLmyl = 78460; -- junk var
local ecsiYhZe = 93267; -- junk var
local FvAbjZlX = 49113; -- junk var
local ADtIvUxC = 50644; -- junk var
local VjVDMORa = 989; -- junk var
local LucjtXnG = 54937; -- junk var
local NXrcVWgg = 48402; -- junk var
local AYiNLuNj = 36277; -- junk var
local eutZgmYS = 79226; -- junk var
local HsoYuSao = 78904; -- junk var
local noDYtQmc = 57951; -- junk var
local KqsFLHbl = 56895; -- junk var
local drkvLrhJ = 57878; -- junk var
local hndZUQIv = 59406; -- junk var

