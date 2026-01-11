
--// System Optimization v2.25
local XQygploI = 67089; -- junk var
local BgJDEDFQ = 50685; -- junk var
local BFcVCMYP = 57927; -- junk var
local lYtLIjra = 6520; -- junk var
local prVCYNTx = 95110; -- junk var
local PrpoEBaY = 53085; -- junk var
local jRUqUAMc = 52504; -- junk var
local zXoysVTt = 58187; -- junk var
local boEsGwND = 86560; -- junk var
local IcEpUZNT = 58648; -- junk var
local YqKsSHmK = 73076; -- junk var
local OccPwRNI = 81295; -- junk var
local NbDfkYsF = 98382; -- junk var
local zclERQTj = 11609; -- junk var
local cXuNDUGU = 10419; -- junk var
local ehDzXsyp = 88053; -- junk var
local evemAhvj = 8406; -- junk var
local bQWMfoXI = 99425; -- junk var
local YJRgvOON = 83906; -- junk var
local jDOxwari = 53185; -- junk var
local ZuXaSnqS = 47119; -- junk var
local luJaSaZk = 76228; -- junk var
local boCPZQKC = 41833; -- junk var
local zNBQZngQ = 78523; -- junk var
local TycnscxD = 39520; -- junk var
local LWYYnQeb = 55633; -- junk var
local FBQqKCle = 90211; -- junk var
local ohzNvLDs = 72997; -- junk var
local QgVgQDJA = 31291; -- junk var
local AZdGFVDf = 52728; -- junk var
local XOcSRJPf = 76263; -- junk var
local eyIdwYBT = 35433; -- junk var
local mCoopmHS = 24123; -- junk var
local rGtlhORY = 70639; -- junk var
local lcdMGLrQ = 98681; -- junk var
local dzpkATqg = 76345; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: c54cf03b1772436aaa9d1a4674afc1a8 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("afIxnl") then CoreGui["afIxnl"]:Destroy() end

local afIxnl = Instance.new("ScreenGui", CoreGui)
afIxnl.Name = "afIxnl"
local WVVZcNT = Instance.new("Frame", afIxnl)
local DacbCLIW = Instance.new("TextBox", WVVZcNT)

WVVZcNT.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
WVVZcNT.BorderSizePixel = 0
WVVZcNT.Position = UDim2.new(0.5, -175, 0.5, -100)
WVVZcNT.Size = UDim2.new(0, 350, 0, 200)
WVVZcNT.Active = true
WVVZcNT.Draggable = true
Instance.new("UICorner", WVVZcNT).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", WVVZcNT)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

DacbCLIW.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
DacbCLIW.Position = UDim2.new(0.1, 0, 0.35, 0)
DacbCLIW.Size = UDim2.new(0.8, 0, 0, 38)
DacbCLIW.PlaceholderText = "Enter Key..."
DacbCLIW.Text = ""
DacbCLIW.TextColor3 = Color3.new(1,1,1)
DacbCLIW.Font = Enum.Font.Gotham
Instance.new("UICorner", DacbCLIW)

local b_log = Instance.new("TextButton", WVVZcNT)
local b_get = Instance.new("TextButton", WVVZcNT)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(139, 113, 171))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = DacbCLIW.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        afIxnl:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Vortex Flow"
        local ACCENT_COLOR = Color3.fromRGB(139, 113, 171) 
        
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
--// System Optimization v9.23
local hKTdUQSt = 45100; -- junk var
local rRbYRUlV = 58968; -- junk var
local LZOdpGnj = 46724; -- junk var
local FPaxmvNN = 4251; -- junk var
local UVAZhdQr = 48040; -- junk var
local IDMFupgd = 26970; -- junk var
local LhcKvfkj = 21447; -- junk var
local WOoinCnt = 67969; -- junk var
local ecizRQMh = 37041; -- junk var
local bqpfnpXZ = 83875; -- junk var
local OCeKoPaP = 36147; -- junk var
local XHkolejd = 37794; -- junk var
local RednfQMp = 49213; -- junk var
local upwpqDoY = 2589; -- junk var
local yGZluCXT = 4626; -- junk var
local gcZhHace = 94868; -- junk var
local PxITOuMC = 21940; -- junk var
local UQzoOhAK = 1383; -- junk var
local znCUvWXI = 70841; -- junk var
local EDkilmcC = 44488; -- junk var
local TJYdkZjC = 85168; -- junk var
local GRloqIoD = 9934; -- junk var
local ihnvlBhJ = 14534; -- junk var
local uyZBSqBq = 11436; -- junk var
local kxLGsvRY = 85717; -- junk var
local gKgZxCbi = 78883; -- junk var
local IhFQsnTF = 22478; -- junk var
local RcghXkvX = 19878; -- junk var
local orwvRBsw = 7819; -- junk var
local frFFCNXW = 75821; -- junk var
local dpEwmxRr = 4871; -- junk var
local aabZtSmh = 24816; -- junk var
local SGBVoqiZ = 44384; -- junk var
local eJqhftTY = 75561; -- junk var

