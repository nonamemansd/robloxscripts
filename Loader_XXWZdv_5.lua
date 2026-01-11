
--// System Optimization v5.52
local YQEFQzlN = 79744; -- junk var
local zdtIRtlT = 53067; -- junk var
local VxIPbvRZ = 25058; -- junk var
local WIvWjsKM = 8638; -- junk var
local fsLIWBXX = 2085; -- junk var
local BRxBRJlH = 53260; -- junk var
local KJElCHPT = 91512; -- junk var
local NrqUEBEr = 8155; -- junk var
local PfEuIACk = 22068; -- junk var
local eDLqeVle = 4382; -- junk var
local afccDLWI = 22713; -- junk var
local VQEXktgi = 48188; -- junk var
local ZDVDIjxi = 18196; -- junk var
local MzImgVhz = 99838; -- junk var
local kuunOjDI = 33666; -- junk var
local JhZPVCVa = 96180; -- junk var
local NvUaCKdM = 24589; -- junk var
local yJVGLDXj = 4578; -- junk var
local TdvHpbtE = 68321; -- junk var
local kDDrERLu = 67912; -- junk var
local SSHGUwVi = 39765; -- junk var
local CPHKdIIt = 22015; -- junk var
local sYuDtKmK = 7834; -- junk var
local gJfSnmRg = 15030; -- junk var
local tbBmaHrT = 96127; -- junk var
local WqFjkjoh = 90313; -- junk var
local nyYgGaAx = 34130; -- junk var
local ERNTbxZS = 69872; -- junk var
local tbKlAwys = 33261; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: b13114f6905d4e7ea8f7714b9df1cb07 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("khfTgK") then CoreGui["khfTgK"]:Destroy() end

local khfTgK = Instance.new("ScreenGui", CoreGui)
khfTgK.Name = "khfTgK"
local jrGxHcU = Instance.new("Frame", khfTgK)
local LPCBenUM = Instance.new("TextBox", jrGxHcU)

jrGxHcU.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
jrGxHcU.BorderSizePixel = 0
jrGxHcU.Position = UDim2.new(0.5, -175, 0.5, -100)
jrGxHcU.Size = UDim2.new(0, 350, 0, 200)
jrGxHcU.Active = true
jrGxHcU.Draggable = true
Instance.new("UICorner", jrGxHcU).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", jrGxHcU)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

LPCBenUM.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
LPCBenUM.Position = UDim2.new(0.1, 0, 0.35, 0)
LPCBenUM.Size = UDim2.new(0.8, 0, 0, 38)
LPCBenUM.PlaceholderText = "Enter Key..."
LPCBenUM.Text = ""
LPCBenUM.TextColor3 = Color3.new(1,1,1)
LPCBenUM.Font = Enum.Font.Gotham
Instance.new("UICorner", LPCBenUM)

local b_log = Instance.new("TextButton", jrGxHcU)
local b_get = Instance.new("TextButton", jrGxHcU)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(106, 81, 103))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = LPCBenUM.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        khfTgK:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula Software"
        local ACCENT_COLOR = Color3.fromRGB(106, 81, 103) 
        
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
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PrestineScripts/Main/refs/heads/main/Loader"))() 
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
--// System Optimization v4.65
local tVZNCZhc = 24427; -- junk var
local UKvklETn = 75957; -- junk var
local njKtaLEg = 26511; -- junk var
local EUwCFkhc = 46513; -- junk var
local kpPnlMhu = 14031; -- junk var
local shJJZewq = 17696; -- junk var
local qLBQvRQz = 72902; -- junk var
local bOTtLMty = 92163; -- junk var
local JNARxpMN = 91060; -- junk var
local DesOkGUU = 2607; -- junk var
local FUSGBScZ = 11571; -- junk var
local pXngxZBD = 56680; -- junk var
local edejRFCn = 51839; -- junk var
local pMqycFQw = 28483; -- junk var
local EdDwLzxF = 36778; -- junk var
local gDnioIIs = 52686; -- junk var
local EoVQbiaC = 58559; -- junk var
local GIdyGAdJ = 84962; -- junk var
local tlpcQtiU = 95076; -- junk var
local vEtPBiTv = 63233; -- junk var
local dBOjTdsI = 23210; -- junk var
local rxcuHmrD = 48357; -- junk var
local jRXmUrVA = 78908; -- junk var
local ttDovZRL = 80652; -- junk var
local mkRRlxNH = 3889; -- junk var
local RISNHWwZ = 80651; -- junk var
local pQGRtgLj = 35672; -- junk var
local BMdAkqTk = 87145; -- junk var
local vZWOGkgy = 77033; -- junk var
local VbTEcQsu = 9559; -- junk var
local OKZqarKi = 67991; -- junk var
local bwcPYghv = 95158; -- junk var
local ZRzXPCpy = 16448; -- junk var
local avwledhp = 10824; -- junk var

