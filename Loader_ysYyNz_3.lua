
--// System Optimization v1.94
local QLNTqkdD = 55083; -- junk var
local WNcqjVzM = 84590; -- junk var
local SAISyHjV = 58010; -- junk var
local AakHhNQy = 90137; -- junk var
local BmwSIlTY = 16633; -- junk var
local cTFHFozm = 99369; -- junk var
local alYrXfBB = 22693; -- junk var
local RLZvGUag = 74897; -- junk var
local fTznfSci = 664; -- junk var
local oHMojeXg = 76718; -- junk var
local BhTCNjmr = 83096; -- junk var
local YgthbEeC = 43398; -- junk var
local xBNbgTqY = 60390; -- junk var
local OWZdLmvH = 19975; -- junk var
local muzUzYfu = 54462; -- junk var
local DjvrBzcy = 27198; -- junk var
local ipVhkHCm = 2175; -- junk var
local RJoaLcyb = 66841; -- junk var
local YVXottfa = 17627; -- junk var
local sNIHLdSP = 7740; -- junk var
local GUyLUTqB = 81457; -- junk var
local neBcewee = 28656; -- junk var
local VnMlLIoj = 8831; -- junk var
local DmSVTbrJ = 70094; -- junk var
local PHYFzWwx = 67136; -- junk var
local lKXYWbuF = 91779; -- junk var
local aglwKeSd = 75889; -- junk var
local eFPLQnhY = 79834; -- junk var
local XMMuQsbs = 84173; -- junk var
local HLJkdFGZ = 42689; -- junk var
local qumDPVLg = 82355; -- junk var
local Wuqjccwf = 28213; -- junk var
local dtgPqcrF = 87587; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: f70aa7917035414db3b38619ab8f09b8 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("wKOFng") then CoreGui["wKOFng"]:Destroy() end

local wKOFng = Instance.new("ScreenGui", CoreGui)
wKOFng.Name = "wKOFng"
local ygqHQaf = Instance.new("Frame", wKOFng)
local FiXgDQql = Instance.new("TextBox", ygqHQaf)

ygqHQaf.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ygqHQaf.BorderSizePixel = 0
ygqHQaf.Position = UDim2.new(0.5, -175, 0.5, -100)
ygqHQaf.Size = UDim2.new(0, 350, 0, 200)
ygqHQaf.Active = true
ygqHQaf.Draggable = true
Instance.new("UICorner", ygqHQaf).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", ygqHQaf)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

FiXgDQql.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
FiXgDQql.Position = UDim2.new(0.1, 0, 0.35, 0)
FiXgDQql.Size = UDim2.new(0.8, 0, 0, 38)
FiXgDQql.PlaceholderText = "Enter Key..."
FiXgDQql.Text = ""
FiXgDQql.TextColor3 = Color3.new(1,1,1)
FiXgDQql.Font = Enum.Font.Gotham
Instance.new("UICorner", FiXgDQql)

local b_log = Instance.new("TextButton", ygqHQaf)
local b_get = Instance.new("TextButton", ygqHQaf)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(208, 52, 118))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = FiXgDQql.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        wKOFng:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar UI"
        local ACCENT_COLOR = Color3.fromRGB(208, 52, 118) 
        
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
--// System Optimization v5.11
local LHYJwPVS = 761; -- junk var
local yWXNIuPa = 674; -- junk var
local WdXQTIkQ = 34241; -- junk var
local uYWtFnBN = 20875; -- junk var
local SdJbkgLh = 99130; -- junk var
local ircXFMWT = 73654; -- junk var
local oIjLiZIT = 64805; -- junk var
local bquAcBUu = 36989; -- junk var
local GebYcQMd = 34471; -- junk var
local aRkZKuWS = 97023; -- junk var
local rIdzWwYz = 33864; -- junk var
local qsdvscJb = 28366; -- junk var
local CNwOVOfj = 29673; -- junk var
local AIzQPNlv = 99353; -- junk var
local egEcEbVC = 90564; -- junk var
local fZXdUoSp = 88163; -- junk var
local WfEmJPYm = 42731; -- junk var
local xJrvWimw = 53308; -- junk var
local iWazPRiV = 13971; -- junk var
local jzEyUCrR = 90955; -- junk var
local JQEGMIXK = 10991; -- junk var
local DcFbhmnF = 71585; -- junk var
local WufLhqzz = 34985; -- junk var
local bosSsOEn = 5685; -- junk var
local zjkoAtga = 54179; -- junk var
local nYLbPLWU = 37054; -- junk var
local MOcfRkoI = 23191; -- junk var
local hWDvILeJ = 88030; -- junk var
local eLsQvnNe = 45295; -- junk var
local EvFmCtXM = 572; -- junk var
local DhZOdffF = 12215; -- junk var
local KfnTKlUe = 13877; -- junk var
local eXmgdycx = 48394; -- junk var
local kYlECUhb = 85369; -- junk var
local FLceVkHi = 23328; -- junk var
local RooznIem = 10903; -- junk var
local fBUevrma = 18547; -- junk var
local LIJrKLui = 73395; -- junk var
local GoctUnUM = 27192; -- junk var
local yxBdmqIR = 22225; -- junk var

