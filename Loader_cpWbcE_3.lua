
--// System Optimization v5.15
local vEQumXzG = 12134; -- junk var
local ukLUWBhb = 93253; -- junk var
local vWNfVMLc = 38329; -- junk var
local fLUuAxYm = 36421; -- junk var
local SFKftgxL = 68432; -- junk var
local LvaYvSNH = 15760; -- junk var
local srbzHPyZ = 89871; -- junk var
local wPcggCZW = 44677; -- junk var
local MqEmawFi = 34241; -- junk var
local dZvXoaCF = 29368; -- junk var
local twoAFMqY = 66119; -- junk var
local vQDYjcDB = 32848; -- junk var
local mycGVPFO = 5454; -- junk var
local fsSCpgFi = 10690; -- junk var
local BHghSPoP = 50914; -- junk var
local GCVsLlKc = 2803; -- junk var
local DyoMaGOY = 694; -- junk var
local OCZxqvxI = 55792; -- junk var
local mSHIAZLt = 67512; -- junk var
local czVedHEH = 89850; -- junk var
local gRNvyKfa = 91305; -- junk var
local OPZKQwch = 76369; -- junk var
local awCWfEtF = 70737; -- junk var
local pJbjhjyO = 70380; -- junk var
local WCNfOOiZ = 46113; -- junk var
local GJIifbkV = 42981; -- junk var
local lTsFBwXd = 69260; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: e86cbb00e2ef4c83afc8ee577c7ce77f ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("HGtYlp") then CoreGui["HGtYlp"]:Destroy() end

local HGtYlp = Instance.new("ScreenGui", CoreGui)
HGtYlp.Name = "HGtYlp"
local thZujmz = Instance.new("Frame", HGtYlp)
local tTbvpkrd = Instance.new("TextBox", thZujmz)

thZujmz.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
thZujmz.BorderSizePixel = 0
thZujmz.Position = UDim2.new(0.5, -175, 0.5, -100)
thZujmz.Size = UDim2.new(0, 350, 0, 200)
thZujmz.Active = true
thZujmz.Draggable = true
Instance.new("UICorner", thZujmz).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", thZujmz)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

tTbvpkrd.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
tTbvpkrd.Position = UDim2.new(0.1, 0, 0.35, 0)
tTbvpkrd.Size = UDim2.new(0.8, 0, 0, 38)
tTbvpkrd.PlaceholderText = "Enter Key..."
tTbvpkrd.Text = ""
tTbvpkrd.TextColor3 = Color3.new(1,1,1)
tTbvpkrd.Font = Enum.Font.Gotham
Instance.new("UICorner", tTbvpkrd)

local b_log = Instance.new("TextButton", thZujmz)
local b_get = Instance.new("TextButton", thZujmz)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(206, 209, 95))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = tTbvpkrd.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        HGtYlp:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar V3"
        local ACCENT_COLOR = Color3.fromRGB(206, 209, 95) 
        
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
--// System Optimization v4.95
local PXAzCvvW = 77109; -- junk var
local guBOGRPU = 87109; -- junk var
local jPTrIHSh = 4836; -- junk var
local gkmrzBEV = 67221; -- junk var
local cATcCUuL = 57904; -- junk var
local KqJlGagk = 97808; -- junk var
local RhIJNlOW = 25082; -- junk var
local YxkYxtTc = 67644; -- junk var
local OWWAdbmO = 68238; -- junk var
local iMXAmHVv = 87497; -- junk var
local JPkbHiFX = 92811; -- junk var
local BiYkZeJH = 33725; -- junk var
local EMAPkWvk = 83270; -- junk var
local ywZUeiis = 27464; -- junk var
local ZJdggzmY = 56885; -- junk var
local xOJuslZH = 6289; -- junk var
local iGeatqiJ = 68649; -- junk var
local sKXMOTEc = 35618; -- junk var
local SEIynrfQ = 43271; -- junk var
local cqVTMZFQ = 5689; -- junk var
local wCfgwIuE = 42139; -- junk var
local zgbDdSrJ = 54674; -- junk var
local WCEEydcS = 93754; -- junk var
local lJMmVTGS = 92238; -- junk var
local DOWJbSHH = 15081; -- junk var
local ArFINCKm = 46081; -- junk var
local xCENYLXu = 57631; -- junk var
local ZVEntQKf = 59402; -- junk var
local tNtwnIsL = 19770; -- junk var
local DfdPfnTq = 64453; -- junk var
local urpLdAiZ = 30114; -- junk var
local MxKbaABB = 88462; -- junk var
local rCpUVXxH = 46729; -- junk var
local rXgaNAQk = 77968; -- junk var
local dMWVFBrq = 41021; -- junk var
local CzUmJqQn = 66588; -- junk var

