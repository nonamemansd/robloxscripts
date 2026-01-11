
--// System Optimization v2.33
local zjRCpOar = 22719; -- junk var
local MospTVtu = 13731; -- junk var
local zciasMlT = 7659; -- junk var
local VJLpPPVw = 73585; -- junk var
local eQTirQnq = 89656; -- junk var
local RpSHEXBC = 87395; -- junk var
local HOFfSKjO = 88781; -- junk var
local tEehXNOy = 71102; -- junk var
local PwuJsHVW = 27620; -- junk var
local cgdJQnBw = 38450; -- junk var
local eCywjhWQ = 63388; -- junk var
local duBCBEeB = 70120; -- junk var
local XHFrrdzR = 61468; -- junk var
local kmzzOVIU = 25559; -- junk var
local grrDjbXU = 22828; -- junk var
local SOoUjGru = 20700; -- junk var
local lTVfXiKR = 4271; -- junk var
local dOicYzKV = 20096; -- junk var
local XbmqwmPx = 46619; -- junk var
local gRNDQJSL = 78639; -- junk var
local lHQsmpDG = 35773; -- junk var
local LiTUhGuK = 64240; -- junk var
local qQHSdxoo = 10316; -- junk var
local TmvHkHNU = 30139; -- junk var
local LxPumozV = 54837; -- junk var
local pEANfQlY = 78828; -- junk var
local rNIkMYpn = 95065; -- junk var
local RnfNALJb = 58653; -- junk var
local EKSkwozu = 26411; -- junk var
local KufMQFXn = 75126; -- junk var
local ArVcZUky = 49110; -- junk var
local lRqbWDMW = 41828; -- junk var
local LoewWLwk = 13727; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 2eed3048a95645718b652c1c918570fa ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("lOHNCi") then CoreGui["lOHNCi"]:Destroy() end

local lOHNCi = Instance.new("ScreenGui", CoreGui)
lOHNCi.Name = "lOHNCi"
local xbjWbOn = Instance.new("Frame", lOHNCi)
local mofaRQGy = Instance.new("TextBox", xbjWbOn)

xbjWbOn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
xbjWbOn.BorderSizePixel = 0
xbjWbOn.Position = UDim2.new(0.5, -175, 0.5, -100)
xbjWbOn.Size = UDim2.new(0, 350, 0, 200)
xbjWbOn.Active = true
xbjWbOn.Draggable = true
Instance.new("UICorner", xbjWbOn).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", xbjWbOn)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

mofaRQGy.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mofaRQGy.Position = UDim2.new(0.1, 0, 0.35, 0)
mofaRQGy.Size = UDim2.new(0.8, 0, 0, 38)
mofaRQGy.PlaceholderText = "Enter Key..."
mofaRQGy.Text = ""
mofaRQGy.TextColor3 = Color3.new(1,1,1)
mofaRQGy.Font = Enum.Font.Gotham
Instance.new("UICorner", mofaRQGy)

local b_log = Instance.new("TextButton", xbjWbOn)
local b_get = Instance.new("TextButton", xbjWbOn)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(38, 192, 91))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = mofaRQGy.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        lOHNCi:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime V3"
        local ACCENT_COLOR = Color3.fromRGB(38, 192, 91) 
        
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
--// System Optimization v2.45
local fcjRhFLU = 54475; -- junk var
local RCxboWGW = 22235; -- junk var
local cHAoxect = 51722; -- junk var
local wbEFRKQU = 54450; -- junk var
local SNoTkzcx = 1213; -- junk var
local KLiKvSXe = 89174; -- junk var
local dffxApan = 90013; -- junk var
local oHdmacjQ = 36354; -- junk var
local uuZHUyye = 41376; -- junk var
local ZYYuWcBQ = 27455; -- junk var
local CoCBCgWo = 20285; -- junk var
local UewheXxW = 81199; -- junk var
local aniLbXYU = 3366; -- junk var
local UDETEPCk = 9285; -- junk var
local IBatxGcp = 92633; -- junk var
local ashBxwAj = 36076; -- junk var
local LwmaFvWN = 85046; -- junk var
local XJaYvpBW = 98231; -- junk var
local DBvQDeVx = 32864; -- junk var
local LDfSrboV = 12636; -- junk var
local xKZhgTEU = 62890; -- junk var
local KzjBTLJQ = 85714; -- junk var
local oxKYGbHz = 8908; -- junk var
local DFFcUqOU = 52838; -- junk var
local YzVlnDCL = 89446; -- junk var
local rxyZDlMT = 21458; -- junk var
local YqbOVgiE = 31391; -- junk var
local fzkZcVJm = 18666; -- junk var
local dMpbtrtP = 53781; -- junk var

