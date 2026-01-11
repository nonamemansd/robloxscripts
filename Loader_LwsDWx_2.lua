
--// System Optimization v6.48
local xRbsDpCR = 74948; -- junk var
local mddWOMeD = 53476; -- junk var
local PMHWpEVL = 23404; -- junk var
local ituOUHVP = 89124; -- junk var
local bcxsICKO = 12286; -- junk var
local BqFDigGb = 98819; -- junk var
local KFxSdUoo = 62180; -- junk var
local NrZmrpwJ = 38486; -- junk var
local tybPkobr = 49324; -- junk var
local HYBUyjPI = 94790; -- junk var
local rmqXfVIC = 64805; -- junk var
local UHLCQBhY = 1010; -- junk var
local RaXlKpVZ = 55688; -- junk var
local MmsRfaVv = 24268; -- junk var
local FkxZVyXe = 32686; -- junk var
local dGyXJdXs = 30451; -- junk var
local HcjETmcn = 94048; -- junk var
local MrQLCQXx = 22027; -- junk var
local kDAjaQYp = 94711; -- junk var
local dEaOCGIP = 78292; -- junk var
local sCkVJFCG = 14597; -- junk var
local PFWnMJlZ = 12428; -- junk var
local KTLdmmRp = 22691; -- junk var
local xJtleUkc = 95921; -- junk var
local pwuZgLrz = 53493; -- junk var
local tqpqrwjy = 30669; -- junk var
local dORKGQgK = 91400; -- junk var
local xzAYWemf = 29311; -- junk var
local MNWeBdsn = 91308; -- junk var
local NKBkESiB = 59044; -- junk var
local gfypBBJl = 44737; -- junk var
local RFwcdkWp = 72011; -- junk var
local XigNpDYU = 59970; -- junk var
local TldDRvpo = 30263; -- junk var
local yYtyxkmW = 52580; -- junk var
local DzUGpPUE = 28320; -- junk var
local cGqQFJju = 27355; -- junk var
local InPhemHv = 23377; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: aa6f677a1bdb43b0827ee3052de97242 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("XeTydi") then CoreGui["XeTydi"]:Destroy() end

local XeTydi = Instance.new("ScreenGui", CoreGui)
XeTydi.Name = "XeTydi"
local bVWqVGR = Instance.new("Frame", XeTydi)
local WdbrPrbR = Instance.new("TextBox", bVWqVGR)

bVWqVGR.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
bVWqVGR.BorderSizePixel = 0
bVWqVGR.Position = UDim2.new(0.5, -175, 0.5, -100)
bVWqVGR.Size = UDim2.new(0, 350, 0, 200)
bVWqVGR.Active = true
bVWqVGR.Draggable = true
Instance.new("UICorner", bVWqVGR).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", bVWqVGR)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

WdbrPrbR.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WdbrPrbR.Position = UDim2.new(0.1, 0, 0.35, 0)
WdbrPrbR.Size = UDim2.new(0.8, 0, 0, 38)
WdbrPrbR.PlaceholderText = "Enter Key..."
WdbrPrbR.Text = ""
WdbrPrbR.TextColor3 = Color3.new(1,1,1)
WdbrPrbR.Font = Enum.Font.Gotham
Instance.new("UICorner", WdbrPrbR)

local b_log = Instance.new("TextButton", bVWqVGR)
local b_get = Instance.new("TextButton", bVWqVGR)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(174, 133, 140))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = WdbrPrbR.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        XeTydi:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Elite V3"
        local ACCENT_COLOR = Color3.fromRGB(174, 133, 140) 
        
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
--// System Optimization v3.40
local PuOOhFXn = 99267; -- junk var
local RrXSmPMs = 32664; -- junk var
local ZhAkcXVH = 73337; -- junk var
local tusowbwf = 83244; -- junk var
local NgpHYKZA = 70787; -- junk var
local LwxNcLqf = 55195; -- junk var
local CYjrFxSW = 34732; -- junk var
local WsrsoEjf = 12673; -- junk var
local twHckvsZ = 93059; -- junk var
local wZevbuyz = 63831; -- junk var
local bFoXwXoO = 43690; -- junk var
local nKHHgKei = 8917; -- junk var
local aPxyQdXO = 44822; -- junk var
local JrHSbNbG = 75201; -- junk var
local XtIKxDUw = 29360; -- junk var
local udQsdudx = 59023; -- junk var
local shorFhKy = 50466; -- junk var
local fLCnyzkx = 98993; -- junk var
local yUGLEcRz = 9402; -- junk var
local bYBtJrTC = 64188; -- junk var
local FsBReIym = 88679; -- junk var
local bKoGmJIo = 62021; -- junk var
local NnfoLjih = 38694; -- junk var
local GYfWglCh = 20597; -- junk var

