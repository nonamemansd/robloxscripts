
--// System Optimization v2.64
local xLQYFGye = 64335; -- junk var
local lUnmncIh = 23112; -- junk var
local ZWAyFMlT = 95882; -- junk var
local YrvxxTrj = 82947; -- junk var
local qSYvGxse = 94792; -- junk var
local uvKWkNDF = 14352; -- junk var
local QgVauvVp = 38280; -- junk var
local dHClqSNs = 86866; -- junk var
local UTkkpfDH = 72669; -- junk var
local NQzzlcHj = 44035; -- junk var
local EMOKxcva = 44880; -- junk var
local prhkYKBA = 6414; -- junk var
local ZFrtMuzg = 80136; -- junk var
local CfIUVNFD = 94578; -- junk var
local HnWOsMzm = 82138; -- junk var
local fMpXGzzO = 96593; -- junk var
local EgPqPiND = 68824; -- junk var
local WcXepkyE = 91269; -- junk var
local zkguTsNq = 45585; -- junk var
local wMJkDzmq = 49968; -- junk var
local XHloBOQl = 24191; -- junk var
local OyRsbGhG = 35040; -- junk var
local HGUvMwCr = 99617; -- junk var
local WTIQYDXO = 12829; -- junk var
local OCyyOBjN = 45988; -- junk var
local ByCYeqQr = 54144; -- junk var
local WuFWhyQR = 21107; -- junk var
local FDdeNtIu = 45295; -- junk var
local iFyvYqBa = 79880; -- junk var
local aEiLmAmc = 65919; -- junk var
local NgoSNtdj = 23458; -- junk var
local GFAdETUJ = 96850; -- junk var
local LLfpnwMh = 86727; -- junk var
local nftnqBwq = 45136; -- junk var
local gMxqQxqm = 39953; -- junk var
local GVIvvVCq = 56412; -- junk var
local nDlbBmOC = 37657; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 5545f0cf22f54ebeb08d1f070a876498 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("QxihOs") then CoreGui["QxihOs"]:Destroy() end

local QxihOs = Instance.new("ScreenGui", CoreGui)
QxihOs.Name = "QxihOs"
local LNPvOzl = Instance.new("Frame", QxihOs)
local RorkMPou = Instance.new("TextBox", LNPvOzl)

LNPvOzl.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
LNPvOzl.BorderSizePixel = 0
LNPvOzl.Position = UDim2.new(0.5, -175, 0.5, -100)
LNPvOzl.Size = UDim2.new(0, 350, 0, 200)
LNPvOzl.Active = true
LNPvOzl.Draggable = true
Instance.new("UICorner", LNPvOzl).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", LNPvOzl)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

RorkMPou.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
RorkMPou.Position = UDim2.new(0.1, 0, 0.35, 0)
RorkMPou.Size = UDim2.new(0.8, 0, 0, 38)
RorkMPou.PlaceholderText = "Enter Key..."
RorkMPou.Text = ""
RorkMPou.TextColor3 = Color3.new(1,1,1)
RorkMPou.Font = Enum.Font.Gotham
Instance.new("UICorner", RorkMPou)

local b_log = Instance.new("TextButton", LNPvOzl)
local b_get = Instance.new("TextButton", LNPvOzl)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(212, 103, 41))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = RorkMPou.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        QxihOs:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Neon Hub"
        local ACCENT_COLOR = Color3.fromRGB(212, 103, 41) 
        
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
--// System Optimization v2.93
local DOyfeBEy = 93507; -- junk var
local muSYHdeJ = 87800; -- junk var
local NroHSxva = 94463; -- junk var
local QWhjnyXm = 73003; -- junk var
local rNDZVGeU = 45786; -- junk var
local yhUuixtK = 53754; -- junk var
local SzpsepuG = 27905; -- junk var
local bohhVMIS = 17113; -- junk var
local SLVFwdvt = 64731; -- junk var
local sHpoJgVu = 40010; -- junk var
local rSrHkfzR = 59009; -- junk var
local AMlLRMTR = 4923; -- junk var
local RcjiAFUb = 52154; -- junk var
local yXCyEsnW = 85972; -- junk var
local QYEfzvzP = 7546; -- junk var
local IFhjuOYT = 28950; -- junk var
local eXmRSiiz = 86768; -- junk var
local HLtApaqi = 13908; -- junk var
local XiRRpNGa = 8162; -- junk var
local EwqkeSdB = 40599; -- junk var
local mjOQPwHQ = 40859; -- junk var
local pInXROkr = 15788; -- junk var
local yCzvPGeP = 97507; -- junk var

