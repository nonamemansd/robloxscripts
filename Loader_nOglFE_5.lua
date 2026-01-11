
--// System Optimization v1.54
local SzeZtKDe = 25482; -- junk var
local PXasVaiC = 68717; -- junk var
local UBFMMoou = 19705; -- junk var
local AhlXnvZO = 17318; -- junk var
local IFzIkTjH = 96859; -- junk var
local oiIgHskv = 47430; -- junk var
local bqzsJIgr = 6375; -- junk var
local LDHKTAXT = 89289; -- junk var
local RJDQxATC = 4942; -- junk var
local xuQuaNCO = 34315; -- junk var
local oRjApQpd = 64525; -- junk var
local eGWyRmAI = 41890; -- junk var
local drJnhcCG = 99893; -- junk var
local VfFHcfuu = 89615; -- junk var
local fVXjQzFt = 76006; -- junk var
local niXehnvf = 67780; -- junk var
local GSPFcNer = 25808; -- junk var
local HTYMRDLO = 85528; -- junk var
local GjDJONYV = 65934; -- junk var
local OlVysHHr = 98805; -- junk var
local rviZTdog = 48530; -- junk var
local TYSfquvv = 96048; -- junk var
local aCWJbPTZ = 64357; -- junk var
local cGMOypcW = 97715; -- junk var
local ImatbHqU = 56137; -- junk var
local AEGoemeW = 38248; -- junk var
local ZlBSJFsl = 20238; -- junk var
local BetbkNCa = 31864; -- junk var
local kbTGhgok = 62272; -- junk var
local yXmsxKEa = 35568; -- junk var
local oQqLyYNE = 99673; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 7861776004a346e4b8be54057b1f07a9 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("OsnbqI") then CoreGui["OsnbqI"]:Destroy() end

local OsnbqI = Instance.new("ScreenGui", CoreGui)
OsnbqI.Name = "OsnbqI"
local rlhMRzf = Instance.new("Frame", OsnbqI)
local XzLjQWZW = Instance.new("TextBox", rlhMRzf)

rlhMRzf.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
rlhMRzf.BorderSizePixel = 0
rlhMRzf.Position = UDim2.new(0.5, -175, 0.5, -100)
rlhMRzf.Size = UDim2.new(0, 350, 0, 200)
rlhMRzf.Active = true
rlhMRzf.Draggable = true
Instance.new("UICorner", rlhMRzf).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", rlhMRzf)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

XzLjQWZW.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
XzLjQWZW.Position = UDim2.new(0.1, 0, 0.35, 0)
XzLjQWZW.Size = UDim2.new(0.8, 0, 0, 38)
XzLjQWZW.PlaceholderText = "Enter Key..."
XzLjQWZW.Text = ""
XzLjQWZW.TextColor3 = Color3.new(1,1,1)
XzLjQWZW.Font = Enum.Font.Gotham
Instance.new("UICorner", XzLjQWZW)

local b_log = Instance.new("TextButton", rlhMRzf)
local b_get = Instance.new("TextButton", rlhMRzf)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(122, 184, 31))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = XzLjQWZW.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        OsnbqI:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar Client"
        local ACCENT_COLOR = Color3.fromRGB(122, 184, 31) 
        
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
--// System Optimization v6.64
local Puhknkkl = 16061; -- junk var
local ogJKxnqX = 56563; -- junk var
local fhyaGPmA = 4170; -- junk var
local oECHtrlE = 66782; -- junk var
local CVjySFpE = 76588; -- junk var
local vYnWBxlI = 16647; -- junk var
local KXrjFUsY = 66430; -- junk var
local YqwWIGrn = 22095; -- junk var
local Ldhqdmap = 57889; -- junk var
local TYpgnUuy = 12389; -- junk var
local BsSOgYJX = 80968; -- junk var
local ppCZejYT = 23802; -- junk var
local quFtbRDg = 66724; -- junk var
local ZRqoSQaj = 37932; -- junk var
local HOWVPeVm = 31011; -- junk var
local ICTIDTBL = 98825; -- junk var
local gpvPHBxt = 69211; -- junk var
local pSNGPWPu = 2138; -- junk var
local WaUekuIw = 36198; -- junk var
local VOSXcLED = 20629; -- junk var
local zvHmkjku = 69318; -- junk var
local WvyjGlic = 98528; -- junk var
local lNnvksoY = 65636; -- junk var
local AoLHdeIK = 36980; -- junk var
local KtwTSjor = 58457; -- junk var
local WUYsxIQq = 87769; -- junk var
local VqwOVnXk = 10296; -- junk var
local DcfEeyFu = 36923; -- junk var
local ITKzFkTc = 26218; -- junk var
local sdIWvxOz = 82821; -- junk var
local DfBRklju = 44584; -- junk var
local psETesyP = 29787; -- junk var
local wSdhoQMP = 56828; -- junk var
local weYOctnC = 37455; -- junk var
local FHvuFJnp = 63264; -- junk var
local BQCGZVEN = 45083; -- junk var
local WnmyvNzv = 65738; -- junk var

