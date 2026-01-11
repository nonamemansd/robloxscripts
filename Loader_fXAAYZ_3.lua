
--// System Optimization v2.72
local CIAhAzVP = 45655; -- junk var
local rbZvIuts = 63912; -- junk var
local WyDCkyzR = 36570; -- junk var
local XRJhvIiQ = 6834; -- junk var
local iIjAcpsN = 86480; -- junk var
local jfcglVMe = 88374; -- junk var
local TVPSsbdk = 89922; -- junk var
local sJcqJkOH = 49825; -- junk var
local DATChjSp = 89195; -- junk var
local qicciviZ = 21979; -- junk var
local osqkmkKJ = 59420; -- junk var
local xYznBlPr = 68020; -- junk var
local cxeYnCju = 85784; -- junk var
local QsXQzcgH = 94152; -- junk var
local GdeKRELW = 15409; -- junk var
local diNMtyeX = 75123; -- junk var
local aXDUUolU = 67523; -- junk var
local WDVEWiPN = 82802; -- junk var
local APylNZrj = 94645; -- junk var
local xUDYnQtw = 45383; -- junk var
local iZIddlPc = 78346; -- junk var
local CjDojgdz = 50781; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 3e0e71154f8d429489bab25c36f3355f ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("uqqlAk") then CoreGui["uqqlAk"]:Destroy() end

local uqqlAk = Instance.new("ScreenGui", CoreGui)
uqqlAk.Name = "uqqlAk"
local clSCLmn = Instance.new("Frame", uqqlAk)
local VFYoPdjQ = Instance.new("TextBox", clSCLmn)

clSCLmn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
clSCLmn.BorderSizePixel = 0
clSCLmn.Position = UDim2.new(0.5, -175, 0.5, -100)
clSCLmn.Size = UDim2.new(0, 350, 0, 200)
clSCLmn.Active = true
clSCLmn.Draggable = true
Instance.new("UICorner", clSCLmn).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", clSCLmn)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

VFYoPdjQ.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
VFYoPdjQ.Position = UDim2.new(0.1, 0, 0.35, 0)
VFYoPdjQ.Size = UDim2.new(0.8, 0, 0, 38)
VFYoPdjQ.PlaceholderText = "Enter Key..."
VFYoPdjQ.Text = ""
VFYoPdjQ.TextColor3 = Color3.new(1,1,1)
VFYoPdjQ.Font = Enum.Font.Gotham
Instance.new("UICorner", VFYoPdjQ)

local b_log = Instance.new("TextButton", clSCLmn)
local b_get = Instance.new("TextButton", clSCLmn)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(152, 120, 48))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = VFYoPdjQ.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        uqqlAk:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Neon Loader"
        local ACCENT_COLOR = Color3.fromRGB(152, 120, 48) 
        
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
--// System Optimization v9.98
local kXETUuVC = 83889; -- junk var
local HFQbIIiG = 96280; -- junk var
local FKvsahuB = 38921; -- junk var
local XxZcueyn = 45790; -- junk var
local vzhgfKGw = 29525; -- junk var
local VDFPVTfE = 9369; -- junk var
local dlOVlOuW = 73553; -- junk var
local JoXgqPoG = 88908; -- junk var
local CJuWUiZC = 62093; -- junk var
local QBvRjnjF = 65804; -- junk var
local zjKSIiUC = 83582; -- junk var
local bjwhAVOf = 56781; -- junk var
local INKNkxex = 93600; -- junk var
local hBzdZSrO = 34375; -- junk var
local xSNZjiDl = 3548; -- junk var
local yWCmcOYZ = 99972; -- junk var
local YMXfYzOy = 62914; -- junk var
local TYgembDt = 35476; -- junk var
local XGjIJmjb = 88276; -- junk var
local lqXTmhow = 39878; -- junk var
local YqZUlYAL = 13371; -- junk var
local CgCYSjZc = 64750; -- junk var
local luAfaSld = 92484; -- junk var
local fOzcitTZ = 49942; -- junk var
local TzSzmVBc = 84963; -- junk var
local lnjzUadL = 57779; -- junk var
local MqfKXPsR = 19415; -- junk var
local RhEalNoN = 70600; -- junk var
local DfmOInjk = 71516; -- junk var
local xicfxBUr = 70498; -- junk var
local yrMMEGUu = 66632; -- junk var
local JzVMinXg = 16838; -- junk var
local HcHFAwOa = 14031; -- junk var
local HxMfFfdd = 50725; -- junk var
local gLZFdnmf = 72292; -- junk var
local KuyXvZmC = 27763; -- junk var
local IRnjhboL = 43751; -- junk var

