
--// System Optimization v6.32
local AYeaoreX = 16081; -- junk var
local dGeQVWBK = 18952; -- junk var
local rpqlxrFE = 8866; -- junk var
local yeIFDEMD = 99389; -- junk var
local pETvQpbc = 96358; -- junk var
local FIvBrkIq = 98321; -- junk var
local CedStGmt = 11159; -- junk var
local KDtEOXoQ = 88600; -- junk var
local YdTADmBe = 23769; -- junk var
local kllRuXQO = 93885; -- junk var
local DjjdlKda = 11953; -- junk var
local QoGrrkxu = 32767; -- junk var
local EKOomSUT = 36473; -- junk var
local dGTAEuwT = 17867; -- junk var
local QgxoPQIZ = 87243; -- junk var
local YLBXoaTL = 77508; -- junk var
local DBhOfZBf = 29646; -- junk var
local nvLoyfaT = 89113; -- junk var
local DseelrWq = 26827; -- junk var
local SBwGtNCn = 26038; -- junk var
local mKtTjOiQ = 59622; -- junk var
local bVLcgrPO = 79821; -- junk var
local ruFZDAJA = 10230; -- junk var
local oziVCAls = 59135; -- junk var
local JokKopGX = 45787; -- junk var
local EhffuJLV = 11388; -- junk var
local mwELGDmq = 19801; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 803f54190f9943a8aca20bdc3a8359aa ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("uiDnJp") then CoreGui["uiDnJp"]:Destroy() end

local uiDnJp = Instance.new("ScreenGui", CoreGui)
uiDnJp.Name = "uiDnJp"
local OIHYLoL = Instance.new("Frame", uiDnJp)
local nkUESXzf = Instance.new("TextBox", OIHYLoL)

OIHYLoL.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OIHYLoL.BorderSizePixel = 0
OIHYLoL.Position = UDim2.new(0.5, -175, 0.5, -100)
OIHYLoL.Size = UDim2.new(0, 350, 0, 200)
OIHYLoL.Active = true
OIHYLoL.Draggable = true
Instance.new("UICorner", OIHYLoL).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", OIHYLoL)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

nkUESXzf.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
nkUESXzf.Position = UDim2.new(0.1, 0, 0.35, 0)
nkUESXzf.Size = UDim2.new(0.8, 0, 0, 38)
nkUESXzf.PlaceholderText = "Enter Key..."
nkUESXzf.Text = ""
nkUESXzf.TextColor3 = Color3.new(1,1,1)
nkUESXzf.Font = Enum.Font.Gotham
Instance.new("UICorner", nkUESXzf)

local b_log = Instance.new("TextButton", OIHYLoL)
local b_get = Instance.new("TextButton", OIHYLoL)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(42, 144, 159))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = nkUESXzf.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        uiDnJp:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar Client"
        local ACCENT_COLOR = Color3.fromRGB(42, 144, 159) 
        
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
--// System Optimization v3.80
local OFCWlVPP = 14241; -- junk var
local aoLHpTMe = 2851; -- junk var
local IEMsoFMd = 66452; -- junk var
local DbJjpdXr = 32660; -- junk var
local JoTsaOhh = 1710; -- junk var
local oWDtEdoP = 54430; -- junk var
local PBPoJJFX = 38016; -- junk var
local yHnyxqXj = 59301; -- junk var
local PmskOtOe = 20088; -- junk var
local cCuoDfjq = 10132; -- junk var
local nFUFuqLh = 3880; -- junk var
local VBPMkXjo = 83941; -- junk var
local LBvMxXJu = 93276; -- junk var
local JXmPPLja = 17412; -- junk var
local krIakIJF = 29931; -- junk var
local nZagbsqZ = 57809; -- junk var
local wmPekwYy = 65493; -- junk var
local sxzXNgtu = 73572; -- junk var
local iGCBxDGz = 21320; -- junk var
local yXSvfsFG = 32141; -- junk var
local kbwQjQdE = 25753; -- junk var
local tJJVLDiv = 71138; -- junk var
local LSlEULYz = 98443; -- junk var
local RUnkkMtC = 25235; -- junk var
local aeLbZApG = 55171; -- junk var
local GCSfpUcy = 93451; -- junk var
local yDFLASjG = 43924; -- junk var
local sLRehGSd = 90505; -- junk var
local AuryeXVL = 67709; -- junk var
local zCYlUCti = 81307; -- junk var
local eQKtGfpW = 7521; -- junk var
local GzxIWkzQ = 17733; -- junk var
local uhJTVRJO = 29593; -- junk var
local vepJtWbw = 32945; -- junk var
local HULhaTdS = 90941; -- junk var
local ugnZtjmS = 89337; -- junk var
local PuMaFtZc = 92886; -- junk var
local WOZTyQHG = 20319; -- junk var
local dDgiGjFt = 69534; -- junk var

