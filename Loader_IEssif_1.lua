
--// System Optimization v8.83
local XmVYqXOB = 45773; -- junk var
local sEXuoGTg = 73138; -- junk var
local WCxWtlJq = 27541; -- junk var
local MVVzWIKV = 67867; -- junk var
local VIlFndMJ = 33193; -- junk var
local CHQstuFX = 11665; -- junk var
local vLTaErTu = 29149; -- junk var
local GnMlWxzq = 51940; -- junk var
local sFycFSwd = 45246; -- junk var
local RDDMUriC = 79286; -- junk var
local ozwSnZRh = 92813; -- junk var
local kcTDlNxj = 69713; -- junk var
local RGcxWKCx = 52350; -- junk var
local jElswaWG = 9422; -- junk var
local gmeFKeXv = 3826; -- junk var
local ZrjpohdY = 62658; -- junk var
local pMNJsGuI = 85153; -- junk var
local jJnVKmES = 92177; -- junk var
local hwqZUoba = 53148; -- junk var
local PoRagxUU = 64691; -- junk var
local KmjhgNBm = 61660; -- junk var
local rtPwFVdw = 77354; -- junk var
local eGNCmQbX = 81795; -- junk var
local IrtoXHag = 39936; -- junk var
local kBcWFVUH = 85267; -- junk var
local DYmWXqRK = 19306; -- junk var
local qIbAqmFQ = 27648; -- junk var
local dZukWJKZ = 57325; -- junk var
local elsljXTU = 66977; -- junk var
local YBaWeHzS = 4872; -- junk var
local LgUKjULg = 43768; -- junk var
local TJIoPzYl = 50344; -- junk var
local oHKHMHbK = 13475; -- junk var
local EOhMwchq = 85648; -- junk var
local diFLqMSe = 42167; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 04168c45bfe042d6b1a310f1b57a24e2 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("LLkNYj") then CoreGui["LLkNYj"]:Destroy() end

local LLkNYj = Instance.new("ScreenGui", CoreGui)
LLkNYj.Name = "LLkNYj"
local fvnfYKz = Instance.new("Frame", LLkNYj)
local nnaaJQNG = Instance.new("TextBox", fvnfYKz)

fvnfYKz.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
fvnfYKz.BorderSizePixel = 0
fvnfYKz.Position = UDim2.new(0.5, -175, 0.5, -100)
fvnfYKz.Size = UDim2.new(0, 350, 0, 200)
fvnfYKz.Active = true
fvnfYKz.Draggable = true
Instance.new("UICorner", fvnfYKz).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", fvnfYKz)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

nnaaJQNG.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
nnaaJQNG.Position = UDim2.new(0.1, 0, 0.35, 0)
nnaaJQNG.Size = UDim2.new(0.8, 0, 0, 38)
nnaaJQNG.PlaceholderText = "Enter Key..."
nnaaJQNG.Text = ""
nnaaJQNG.TextColor3 = Color3.new(1,1,1)
nnaaJQNG.Font = Enum.Font.Gotham
Instance.new("UICorner", nnaaJQNG)

local b_log = Instance.new("TextButton", fvnfYKz)
local b_get = Instance.new("TextButton", fvnfYKz)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(134, 54, 108))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-hub.net/2628650/0C1MYVfEK7Ic")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = nnaaJQNG.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        LLkNYj:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex X"
        local ACCENT_COLOR = Color3.fromRGB(134, 54, 108) 
        
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
--// System Optimization v3.12
local WFKLYnvQ = 59849; -- junk var
local mxJEhgmG = 36348; -- junk var
local OktFjCRS = 15065; -- junk var
local wOJzaUIl = 14131; -- junk var
local dkyAYOpM = 64442; -- junk var
local ZqcYYWRb = 22190; -- junk var
local LcSyLEcN = 24127; -- junk var
local dRbPHOcm = 19285; -- junk var
local SWrzeaHV = 22604; -- junk var
local XuBvFjkd = 41165; -- junk var
local gJpHPQsZ = 72503; -- junk var
local abtxloYK = 1040; -- junk var
local ixdBXyPf = 53083; -- junk var
local LGUVxwLB = 18960; -- junk var
local NpfvFcvR = 75496; -- junk var
local DIRWhJgk = 43699; -- junk var
local AjxBdCKt = 34673; -- junk var
local WxArwVVD = 85394; -- junk var
local YWQilRzC = 78361; -- junk var
local brBzJKPb = 36543; -- junk var
local GLbEfLWH = 91107; -- junk var
local SnuYNEGi = 62534; -- junk var
local JxXxWfqN = 58125; -- junk var
local RYKFcTCU = 30526; -- junk var
local myskoqwt = 49230; -- junk var
local IUSsWNkb = 12112; -- junk var
local pKKmjLAh = 6290; -- junk var
local YeryAlha = 10419; -- junk var
local FPclfmTk = 70302; -- junk var
local xjDcwIvl = 64385; -- junk var
local IcqbEhwq = 98022; -- junk var
local IusjxLZb = 98016; -- junk var
local xurcJDfV = 21105; -- junk var
local iJGNMCLv = 70541; -- junk var
local DtJTSelQ = 73221; -- junk var
local JucFuWCM = 93098; -- junk var
local BfTYCRHU = 34815; -- junk var
local qcIAgxUV = 18126; -- junk var
local SuSRMZkx = 44715; -- junk var
local HjjvVrck = 46067; -- junk var

