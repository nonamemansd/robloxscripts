
--// System Optimization v1.18
local wRlcWsVX = 14815; -- junk var
local ZwFkYKGv = 17499; -- junk var
local tvNKEFdc = 74911; -- junk var
local SzbuWWuP = 67208; -- junk var
local oIRcIzHU = 95697; -- junk var
local xGMfWAFP = 44305; -- junk var
local YcjmDsQa = 66963; -- junk var
local XHhsLNSD = 27368; -- junk var
local inxjHygu = 56546; -- junk var
local dcXSchyK = 37633; -- junk var
local qhJRMQrl = 61367; -- junk var
local YdzRgjdP = 15748; -- junk var
local fmXcqVkx = 89839; -- junk var
local GQBqudEc = 21070; -- junk var
local pdyqYsOy = 31450; -- junk var
local pWCFRtvz = 14183; -- junk var
local ibpElviI = 26581; -- junk var
local aXxDapUN = 90642; -- junk var
local mJAgftoV = 98134; -- junk var
local TEQMvBeL = 3891; -- junk var
local yzKjxmEP = 57893; -- junk var
local cGXnVfaW = 91101; -- junk var
local LTgOGFMB = 85784; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: e58e9d92812c4c6c993b7289a31603a9 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("PVUBQy") then CoreGui["PVUBQy"]:Destroy() end

local PVUBQy = Instance.new("ScreenGui", CoreGui)
PVUBQy.Name = "PVUBQy"
local pHQWBYU = Instance.new("Frame", PVUBQy)
local CEStVPVX = Instance.new("TextBox", pHQWBYU)

pHQWBYU.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pHQWBYU.BorderSizePixel = 0
pHQWBYU.Position = UDim2.new(0.5, -175, 0.5, -100)
pHQWBYU.Size = UDim2.new(0, 350, 0, 200)
pHQWBYU.Active = true
pHQWBYU.Draggable = true
Instance.new("UICorner", pHQWBYU).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", pHQWBYU)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

CEStVPVX.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CEStVPVX.Position = UDim2.new(0.1, 0, 0.35, 0)
CEStVPVX.Size = UDim2.new(0.8, 0, 0, 38)
CEStVPVX.PlaceholderText = "Enter Key..."
CEStVPVX.Text = ""
CEStVPVX.TextColor3 = Color3.new(1,1,1)
CEStVPVX.Font = Enum.Font.Gotham
Instance.new("UICorner", CEStVPVX)

local b_log = Instance.new("TextButton", pHQWBYU)
local b_get = Instance.new("TextButton", pHQWBYU)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(180, 81, 50))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = CEStVPVX.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        PVUBQy:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Lunar X"
        local ACCENT_COLOR = Color3.fromRGB(180, 81, 50) 
        
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
--// System Optimization v9.91
local hMywoEto = 51239; -- junk var
local oMsjsXsS = 89132; -- junk var
local eQCgXHFP = 2735; -- junk var
local gALBnBnp = 76203; -- junk var
local RVhsXPBc = 77834; -- junk var
local CKYVJOym = 16901; -- junk var
local NhEXQFht = 65361; -- junk var
local QovHUYvw = 25534; -- junk var
local fDmoJQkn = 15250; -- junk var
local zBIFFJox = 94458; -- junk var
local cUYBRtel = 72975; -- junk var
local OOwWhfKS = 21938; -- junk var
local TPnCpCon = 89677; -- junk var
local PRNSmZOB = 39890; -- junk var
local owTCRzVb = 91589; -- junk var
local KTBqetbQ = 5273; -- junk var
local QovjypTF = 77259; -- junk var
local TXCdPcfC = 81189; -- junk var
local yhYcYRYz = 52720; -- junk var
local fJpdxTti = 44536; -- junk var
local KIPRbFCu = 87018; -- junk var
local xjVoJlFZ = 40001; -- junk var
local sGyyTVte = 68349; -- junk var
local arRGwRlo = 77543; -- junk var
local JhaxsdAp = 1411; -- junk var
local ZxFtmCJk = 32071; -- junk var
local OPUXYkUB = 94803; -- junk var

