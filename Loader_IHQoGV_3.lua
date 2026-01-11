
--// System Optimization v2.80
local ZTVRMUit = 7059; -- junk var
local ndieOpEl = 60952; -- junk var
local FUMcaCpL = 3484; -- junk var
local VnClGjay = 74408; -- junk var
local eCiAcnNG = 12068; -- junk var
local CtsotFwb = 96829; -- junk var
local JuDcQRIK = 21084; -- junk var
local btSxPZFe = 92757; -- junk var
local ZYOqkQUe = 33800; -- junk var
local IPihDOAZ = 47924; -- junk var
local EzFNiEOC = 77327; -- junk var
local LiHiwdKQ = 96946; -- junk var
local XJGWMyzz = 65632; -- junk var
local TbWTtIuC = 36139; -- junk var
local KUrbntHj = 69515; -- junk var
local ZuoSeiZZ = 4586; -- junk var
local YIoVXVFt = 8554; -- junk var
local zrADeIMJ = 11095; -- junk var
local uiauukCV = 19410; -- junk var
local CvdlKMQM = 34051; -- junk var
local vuOGBzoq = 44907; -- junk var
local TVDbXBYN = 44375; -- junk var
local GCjryOek = 92469; -- junk var
local MssXbToN = 87597; -- junk var
local eXYOCzpc = 61272; -- junk var
local ADjyvwYs = 13951; -- junk var
local TnDeBbVG = 51392; -- junk var
local qETDPXKJ = 86477; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 85739237169640e493e6866660880893 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("UMRLZp") then CoreGui["UMRLZp"]:Destroy() end

local UMRLZp = Instance.new("ScreenGui", CoreGui)
UMRLZp.Name = "UMRLZp"
local YxKCNPI = Instance.new("Frame", UMRLZp)
local nDQSHtoy = Instance.new("TextBox", YxKCNPI)

YxKCNPI.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
YxKCNPI.BorderSizePixel = 0
YxKCNPI.Position = UDim2.new(0.5, -175, 0.5, -100)
YxKCNPI.Size = UDim2.new(0, 350, 0, 200)
YxKCNPI.Active = true
YxKCNPI.Draggable = true
Instance.new("UICorner", YxKCNPI).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", YxKCNPI)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

nDQSHtoy.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
nDQSHtoy.Position = UDim2.new(0.1, 0, 0.35, 0)
nDQSHtoy.Size = UDim2.new(0.8, 0, 0, 38)
nDQSHtoy.PlaceholderText = "Enter Key..."
nDQSHtoy.Text = ""
nDQSHtoy.TextColor3 = Color3.new(1,1,1)
nDQSHtoy.Font = Enum.Font.Gotham
Instance.new("UICorner", nDQSHtoy)

local b_log = Instance.new("TextButton", YxKCNPI)
local b_get = Instance.new("TextButton", YxKCNPI)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(216, 95, 48))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = nDQSHtoy.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        UMRLZp:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Elite Client"
        local ACCENT_COLOR = Color3.fromRGB(216, 95, 48) 
        
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
--// System Optimization v8.64
local ZruiHoiE = 15965; -- junk var
local jdWFUHqF = 66437; -- junk var
local yqYEgoyH = 51113; -- junk var
local uEdTrgJJ = 78215; -- junk var
local oCNHckLI = 9093; -- junk var
local VaZLrNVl = 19855; -- junk var
local mftlumiW = 34386; -- junk var
local OloDwywl = 83930; -- junk var
local oPfTqCaa = 37021; -- junk var
local ZOjuNpZe = 7435; -- junk var
local KHmTriIN = 69981; -- junk var
local WDNdOlZR = 13662; -- junk var
local xuYgZnFn = 90238; -- junk var
local vCmcYPOA = 29941; -- junk var
local bOlORjEc = 91196; -- junk var
local fCfVRhrZ = 98936; -- junk var
local uGTLBxPW = 31280; -- junk var
local QBhlEgBJ = 83673; -- junk var
local ikykSFZe = 48566; -- junk var
local vJtkvTTM = 63845; -- junk var
local gNPVxHmP = 27739; -- junk var
local UKleiaJH = 11744; -- junk var
local rlAgJlim = 25784; -- junk var
local HpqgWebk = 55679; -- junk var
local RdmHGVUr = 6471; -- junk var
local PGwYLJkF = 71417; -- junk var
local HDvQmbWv = 6458; -- junk var
local nJeBJIkW = 5329; -- junk var
local xzwQbsgv = 15438; -- junk var
local SWXyJbuj = 29503; -- junk var

