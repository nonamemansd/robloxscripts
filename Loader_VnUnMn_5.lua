
--// System Optimization v5.88
local ZSOxLhyM = 2679; -- junk var
local wFOWQzVQ = 33307; -- junk var
local EUeGjZMO = 14589; -- junk var
local JpatIFBl = 70770; -- junk var
local cUZQEpgZ = 36811; -- junk var
local feogEkAv = 76926; -- junk var
local oAHpXTfv = 25843; -- junk var
local RgWbaqYC = 98369; -- junk var
local IJHFhtCf = 98486; -- junk var
local znYnRJjq = 95659; -- junk var
local ZlXXczCx = 39364; -- junk var
local YcmWAUqW = 8649; -- junk var
local IiUkdSnU = 41097; -- junk var
local KHgTbsbL = 87150; -- junk var
local MNbMmguO = 55932; -- junk var
local XVOalQvZ = 25968; -- junk var
local wKmvHkOT = 88457; -- junk var
local vqehReom = 19028; -- junk var
local EcLpkkFu = 67037; -- junk var
local WIzACdFI = 12468; -- junk var
local AxqWhoZH = 53234; -- junk var
local VOWuyuUv = 79224; -- junk var
local naiOXJfl = 97110; -- junk var
local tYQxzbGf = 20891; -- junk var
local YfcypBfH = 98762; -- junk var
local CWILqnBM = 86282; -- junk var
local roCBaECA = 67889; -- junk var
local NvIYKsyS = 17532; -- junk var
local bjjzpZPi = 17813; -- junk var
local eFwIMZfy = 50229; -- junk var
local QGKcelOQ = 88711; -- junk var
local KqqizINN = 10388; -- junk var
local twLoemVh = 53533; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: a967733a824e4478b0c1dff9c181cdb7 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("jMQgZR") then CoreGui["jMQgZR"]:Destroy() end

local jMQgZR = Instance.new("ScreenGui", CoreGui)
jMQgZR.Name = "jMQgZR"
local dihhcZY = Instance.new("Frame", jMQgZR)
local CmmydIjr = Instance.new("TextBox", dihhcZY)

dihhcZY.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
dihhcZY.BorderSizePixel = 0
dihhcZY.Position = UDim2.new(0.5, -175, 0.5, -100)
dihhcZY.Size = UDim2.new(0, 350, 0, 200)
dihhcZY.Active = true
dihhcZY.Draggable = true
Instance.new("UICorner", dihhcZY).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", dihhcZY)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

CmmydIjr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CmmydIjr.Position = UDim2.new(0.1, 0, 0.35, 0)
CmmydIjr.Size = UDim2.new(0.8, 0, 0, 38)
CmmydIjr.PlaceholderText = "Enter Key..."
CmmydIjr.Text = ""
CmmydIjr.TextColor3 = Color3.new(1,1,1)
CmmydIjr.Font = Enum.Font.Gotham
Instance.new("UICorner", CmmydIjr)

local b_log = Instance.new("TextButton", dihhcZY)
local b_get = Instance.new("TextButton", dihhcZY)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(92, 44, 117))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = CmmydIjr.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        jMQgZR:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime Zen"
        local ACCENT_COLOR = Color3.fromRGB(92, 44, 117) 
        
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
--// System Optimization v1.63
local rmoorafB = 42094; -- junk var
local fHXpKahu = 46991; -- junk var
local BylYqJVI = 94448; -- junk var
local uWTxgkyj = 7454; -- junk var
local FnNFSluC = 35420; -- junk var
local KeyWAlrx = 37059; -- junk var
local YsSynmJR = 76002; -- junk var
local fkQQuRSj = 79811; -- junk var
local dAJZbvBc = 27208; -- junk var
local GESMRPXU = 93669; -- junk var
local uGVQblKr = 79501; -- junk var
local QtFBYJrM = 8562; -- junk var
local kVOFTKLf = 58981; -- junk var
local avNirwCh = 84446; -- junk var
local vPTDLstL = 56962; -- junk var
local xuCahowi = 34015; -- junk var
local JQUUmtGC = 35927; -- junk var
local eOhUbsTf = 12692; -- junk var
local xdEFNFPr = 60469; -- junk var
local iJFmYjrl = 88634; -- junk var
local DVynSuac = 47480; -- junk var
local zbKBqRvc = 49695; -- junk var
local OYyJZRmU = 91194; -- junk var
local EwLGdJDd = 55610; -- junk var
local iiptfGss = 95097; -- junk var
local KZqOWAAf = 79858; -- junk var
local MjRsNZVA = 91578; -- junk var
local coqEGqWn = 36408; -- junk var
local htvRnnJD = 70727; -- junk var
local uGjZHACD = 39447; -- junk var
local lEzVAfnY = 67580; -- junk var
local VxHVluig = 649; -- junk var
local SfirYdhJ = 19838; -- junk var
local iJKKaOSR = 17262; -- junk var
local zHmEuiec = 46816; -- junk var
local JTRyfHDZ = 18737; -- junk var
local tmWPsTle = 41370; -- junk var
local eksnLhLh = 87950; -- junk var

