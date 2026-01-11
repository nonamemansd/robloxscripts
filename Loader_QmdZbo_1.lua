
--// System Optimization v8.12
local NUWbWxNO = 55388; -- junk var
local LQkfkPEZ = 73996; -- junk var
local vQWBRtQL = 64259; -- junk var
local xHYsNmYU = 97179; -- junk var
local NOoBiJLy = 77573; -- junk var
local kkcUaxNb = 62865; -- junk var
local mIFatTkG = 51500; -- junk var
local WsKOPopX = 63934; -- junk var
local tTHQngoL = 56228; -- junk var
local qYVnpkBZ = 81028; -- junk var
local ibSFRNcd = 82413; -- junk var
local QJbUWLjK = 72950; -- junk var
local KctwsVva = 86695; -- junk var
local KgOoSEUU = 75653; -- junk var
local gxwreuGy = 43365; -- junk var
local kzhkTQIz = 38646; -- junk var
local RgqoLjrn = 84689; -- junk var
local MhhKHgeO = 40462; -- junk var
local UvOpaTWZ = 32105; -- junk var
local hlyNRKWq = 1168; -- junk var
local tHisEemF = 7855; -- junk var
local eoOGtFvg = 52623; -- junk var
local ohmDnTHq = 9413; -- junk var
local oQKnepoY = 7087; -- junk var
local rHXvXGGF = 42850; -- junk var
local hpUqvHUH = 37865; -- junk var
local lIkdXfDG = 25275; -- junk var
local bhYfEWtU = 37048; -- junk var
local TZjlYLip = 93465; -- junk var
local vfHRLaoU = 357; -- junk var
local yDDjiyGB = 66349; -- junk var
local buMwUaVW = 19137; -- junk var
local dbqRjCOR = 92450; -- junk var
local wznALuHI = 6213; -- junk var
local QlUnJody = 28033; -- junk var
local wjyVvUFN = 1020; -- junk var
local EysWsyHW = 79950; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: a14f836bfae94e909feaeaf7570a7c51 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("CJfLEC") then CoreGui["CJfLEC"]:Destroy() end

local CJfLEC = Instance.new("ScreenGui", CoreGui)
CJfLEC.Name = "CJfLEC"
local RvZNjmQ = Instance.new("Frame", CJfLEC)
local IdzksINi = Instance.new("TextBox", RvZNjmQ)

RvZNjmQ.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
RvZNjmQ.BorderSizePixel = 0
RvZNjmQ.Position = UDim2.new(0.5, -175, 0.5, -100)
RvZNjmQ.Size = UDim2.new(0, 350, 0, 200)
RvZNjmQ.Active = true
RvZNjmQ.Draggable = true
Instance.new("UICorner", RvZNjmQ).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", RvZNjmQ)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

IdzksINi.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
IdzksINi.Position = UDim2.new(0.1, 0, 0.35, 0)
IdzksINi.Size = UDim2.new(0.8, 0, 0, 38)
IdzksINi.PlaceholderText = "Enter Key..."
IdzksINi.Text = ""
IdzksINi.TextColor3 = Color3.new(1,1,1)
IdzksINi.Font = Enum.Font.Gotham
Instance.new("UICorner", IdzksINi)

local b_log = Instance.new("TextButton", RvZNjmQ)
local b_get = Instance.new("TextButton", RvZNjmQ)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(137, 147, 90))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = IdzksINi.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        CJfLEC:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Neon V3"
        local ACCENT_COLOR = Color3.fromRGB(137, 147, 90) 
        
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
            loadstring(game:HttpGet(""))() 
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
--// System Optimization v9.40
local BpuvXJTw = 59600; -- junk var
local LyfkyhPX = 42970; -- junk var
local UlPtRvWw = 8235; -- junk var
local yfGxRkaX = 78149; -- junk var
local kiDceaVg = 82700; -- junk var
local mSiDgSuQ = 36667; -- junk var
local RWljJbuO = 478; -- junk var
local dqccfYKQ = 47571; -- junk var
local mcJXUZBN = 35856; -- junk var
local LELMCzIP = 74663; -- junk var
local qkyyjjAD = 79205; -- junk var
local yApWwNKj = 50209; -- junk var
local SAGNPXOl = 17433; -- junk var
local YaxOSFat = 82723; -- junk var
local oOWJVAhW = 60548; -- junk var
local IoXgJuJM = 18977; -- junk var
local DppGnujW = 23566; -- junk var
local CtCpYzxr = 40488; -- junk var
local BWksPVls = 42963; -- junk var
local kezIcqXe = 17859; -- junk var
local kNIQYjFU = 24858; -- junk var
local IqrKXvge = 79064; -- junk var
local deYKMAMb = 23026; -- junk var
local PhKpYqLQ = 44915; -- junk var
local CNUBMqrR = 7084; -- junk var
local FQfvTtLN = 56878; -- junk var
local GfjBPwxN = 1386; -- junk var
local tPaGiOJw = 80368; -- junk var
local CFucBdQz = 23453; -- junk var
local qwtSggpL = 86622; -- junk var
local zTzoXXMz = 17107; -- junk var
local fxNBCLRD = 26007; -- junk var
local sZMfGjrz = 81167; -- junk var
local KfRFvqTC = 81967; -- junk var
local XGLlkIlt = 61255; -- junk var
local BKzuebRy = 66668; -- junk var
local qhAizvaF = 52974; -- junk var

