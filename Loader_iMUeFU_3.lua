
--// System Optimization v5.11
local cWASIFWa = 11697; -- junk var
local vpodoFmH = 16293; -- junk var
local cJGEcMgB = 3011; -- junk var
local ldodnfOr = 50472; -- junk var
local xadpquPL = 36287; -- junk var
local nrKMhfyy = 1632; -- junk var
local QxVkoyCM = 76297; -- junk var
local QMQfcayj = 44061; -- junk var
local cJLMKaPI = 49710; -- junk var
local QMHJPnjz = 85023; -- junk var
local LhoYWjQE = 56585; -- junk var
local UbOCbvrX = 47545; -- junk var
local rhfxCUZG = 56573; -- junk var
local YMedErnX = 50387; -- junk var
local EnMnhkCo = 59792; -- junk var
local mFOCjFrG = 89770; -- junk var
local zvoZAcsG = 7816; -- junk var
local ODZLartv = 12901; -- junk var
local BPBpIKjH = 77253; -- junk var
local kqQFbUmy = 97588; -- junk var
local pbXAIQjm = 18003; -- junk var
local ivMajdUr = 77873; -- junk var
local jNZQFGao = 67266; -- junk var
local XtqkKVzS = 21232; -- junk var
local BKXwQxFl = 22955; -- junk var
local CaxLXBmQ = 75253; -- junk var
local nuvKVjdq = 52874; -- junk var
local osQHNhWj = 30914; -- junk var
local jXJOXhzL = 74370; -- junk var
local jTbVxbpJ = 36425; -- junk var
local jqRfFVeg = 12660; -- junk var
local ePzwNPWo = 25686; -- junk var
local gHWxofOs = 38762; -- junk var
local VqkfWNPG = 50908; -- junk var
local eorNCdob = 92081; -- junk var
local gbvKXqQK = 28394; -- junk var
local kLYNEFhg = 72791; -- junk var
local LVWvULNI = 12915; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 2af162e2404246548bec22a66e9fa562 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("KWIdIu") then CoreGui["KWIdIu"]:Destroy() end

local KWIdIu = Instance.new("ScreenGui", CoreGui)
KWIdIu.Name = "KWIdIu"
local eXREHDH = Instance.new("Frame", KWIdIu)
local JPcWevvS = Instance.new("TextBox", eXREHDH)

eXREHDH.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
eXREHDH.BorderSizePixel = 0
eXREHDH.Position = UDim2.new(0.5, -175, 0.5, -100)
eXREHDH.Size = UDim2.new(0, 350, 0, 200)
eXREHDH.Active = true
eXREHDH.Draggable = true
Instance.new("UICorner", eXREHDH).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", eXREHDH)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

JPcWevvS.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
JPcWevvS.Position = UDim2.new(0.1, 0, 0.35, 0)
JPcWevvS.Size = UDim2.new(0.8, 0, 0, 38)
JPcWevvS.PlaceholderText = "Enter Key..."
JPcWevvS.Text = ""
JPcWevvS.TextColor3 = Color3.new(1,1,1)
JPcWevvS.Font = Enum.Font.Gotham
Instance.new("UICorner", JPcWevvS)

local b_log = Instance.new("TextButton", eXREHDH)
local b_get = Instance.new("TextButton", eXREHDH)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(93, 96, 213))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = JPcWevvS.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        KWIdIu:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex Zen"
        local ACCENT_COLOR = Color3.fromRGB(93, 96, 213) 
        
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
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2075c39b9a5a2e4414c59c93fe8a5f06.lua"))() 
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
--// System Optimization v6.62
local jCPpFFQs = 22455; -- junk var
local rsPKbeOw = 90734; -- junk var
local ldbWwKnY = 65986; -- junk var
local BNXDyIhz = 38202; -- junk var
local xQXtMPBM = 84790; -- junk var
local RpcRYmIi = 14558; -- junk var
local IEQvmXqN = 50246; -- junk var
local dKRzPjjg = 30524; -- junk var
local BwxOwAXU = 55883; -- junk var
local nZMaVCfs = 7473; -- junk var
local TvLPzQer = 45280; -- junk var
local uZkhVSQd = 94162; -- junk var
local PGFeirNe = 30449; -- junk var
local TlXCfBlm = 59848; -- junk var
local dEfkIXxF = 75698; -- junk var
local PVQZpjgD = 66213; -- junk var
local ORyiewZN = 36886; -- junk var
local obsHLKgb = 64180; -- junk var
local mwCnnRZy = 6303; -- junk var
local BEuDtJqN = 7454; -- junk var
local YXuKWZHP = 78700; -- junk var
local nSPuQMXK = 28078; -- junk var
local CpLxlotb = 42958; -- junk var
local JGizcamC = 80875; -- junk var
local gsOHgPCb = 51516; -- junk var
local AunZZNPs = 46563; -- junk var
local jnTpvMdY = 60122; -- junk var
local xowNkmop = 42625; -- junk var
local TwnSDYRh = 66474; -- junk var
local KnnvZgmk = 99659; -- junk var
local gsWCryer = 39358; -- junk var
local TKFwumup = 82629; -- junk var
local ZCLiiZMq = 56729; -- junk var
local QuAxVxYt = 13859; -- junk var
local BZsFrLJh = 3637; -- junk var
local ZCAUohGr = 40754; -- junk var
local VHsXNoqo = 84174; -- junk var
local NjvgUjNo = 34284; -- junk var
local AAJEJeWd = 6100; -- junk var
local DPvhDhPi = 6338; -- junk var

