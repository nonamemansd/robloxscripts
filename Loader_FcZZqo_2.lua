
--// System Optimization v3.94
local KWTKtjih = 78177; -- junk var
local nhhYfcvq = 28989; -- junk var
local viskmPoc = 74845; -- junk var
local pVZzGdzQ = 83771; -- junk var
local qiWiaUxC = 31977; -- junk var
local hMoKCAca = 46677; -- junk var
local oeqILMGT = 38802; -- junk var
local YqmMgiRs = 76656; -- junk var
local xmeFNiGr = 64956; -- junk var
local ugFsncHJ = 3958; -- junk var
local cFJAHPMJ = 98272; -- junk var
local vUyFindh = 46833; -- junk var
local UIeITGaM = 11938; -- junk var
local AQvitcww = 57806; -- junk var
local rGPqtbkw = 50546; -- junk var
local UTXxrjdz = 9741; -- junk var
local hYHdcYri = 61366; -- junk var
local EVUwsxam = 86822; -- junk var
local IWTWhZEu = 18372; -- junk var
local wUPYCQKT = 62103; -- junk var
local BsaPlhOI = 36989; -- junk var
local IBoQgzqW = 84559; -- junk var
local DYimlDnN = 3413; -- junk var
local DUykRRWf = 84503; -- junk var
local KSuvQxRf = 97309; -- junk var
local EBVWdqbD = 66052; -- junk var
local NVcwwZhj = 45696; -- junk var
local CqxpySdZ = 36161; -- junk var
local BcxxzKyn = 83071; -- junk var
local pJsBCEXU = 80290; -- junk var
local OKIVWzIq = 83545; -- junk var
local glWovlXA = 58616; -- junk var
local KjXLYMMe = 73633; -- junk var
local qoYHgOvj = 87743; -- junk var
local ZwEypvQO = 23177; -- junk var
local qUPyHmgP = 82936; -- junk var
local coYYXndl = 18245; -- junk var
local bQfdpFuS = 46898; -- junk var
local baqwnKhH = 38037; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 6745345207da46f785f8fdfc81aa7e07 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("wAJpHk") then CoreGui["wAJpHk"]:Destroy() end

local wAJpHk = Instance.new("ScreenGui", CoreGui)
wAJpHk.Name = "wAJpHk"
local zlaIweU = Instance.new("Frame", wAJpHk)
local FJZxpFNz = Instance.new("TextBox", zlaIweU)

zlaIweU.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
zlaIweU.BorderSizePixel = 0
zlaIweU.Position = UDim2.new(0.5, -175, 0.5, -100)
zlaIweU.Size = UDim2.new(0, 350, 0, 200)
zlaIweU.Active = true
zlaIweU.Draggable = true
Instance.new("UICorner", zlaIweU).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", zlaIweU)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

FJZxpFNz.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FJZxpFNz.Position = UDim2.new(0.1, 0, 0.35, 0)
FJZxpFNz.Size = UDim2.new(0.8, 0, 0, 38)
FJZxpFNz.PlaceholderText = "Enter Key..."
FJZxpFNz.Text = ""
FJZxpFNz.TextColor3 = Color3.new(1,1,1)
FJZxpFNz.Font = Enum.Font.Gotham
Instance.new("UICorner", FJZxpFNz)

local b_log = Instance.new("TextButton", zlaIweU)
local b_get = Instance.new("TextButton", zlaIweU)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(161, 225, 150))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = FJZxpFNz.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        wAJpHk:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula X"
        local ACCENT_COLOR = Color3.fromRGB(161, 225, 150) 
        
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
--// System Optimization v6.20
local cHHyQsxo = 40923; -- junk var
local bkDAzhzQ = 59321; -- junk var
local cuneWqZE = 26340; -- junk var
local mIBdwgpC = 89004; -- junk var
local XrrVmBSt = 12511; -- junk var
local siTbGYeY = 13170; -- junk var
local onAIdLGT = 24518; -- junk var
local RPnTSYPk = 50887; -- junk var
local inWRfIgN = 51850; -- junk var
local SHDlUXjW = 18010; -- junk var
local Oilmakdc = 6755; -- junk var
local dkHuDRcm = 7520; -- junk var
local eKWJcqNf = 86181; -- junk var
local OUojACrW = 25712; -- junk var
local tzBHAQnP = 88443; -- junk var
local fHTkqZKl = 26277; -- junk var
local MycrGUuA = 13787; -- junk var
local FalvemRR = 53550; -- junk var
local bnPHRMHO = 27933; -- junk var
local OCZxfeeO = 22592; -- junk var
local RcoQiXYy = 58124; -- junk var
local tXnMzLOd = 83127; -- junk var
local HfmZFXTW = 54465; -- junk var
local JiQCBYdL = 95252; -- junk var
local ekTHhbss = 67251; -- junk var
local KEHRLeKR = 67172; -- junk var
local YqgAbpLZ = 57053; -- junk var
local aIoVUIGq = 24318; -- junk var
local vXHMnJTf = 88809; -- junk var
local TeKrkkOC = 44384; -- junk var

