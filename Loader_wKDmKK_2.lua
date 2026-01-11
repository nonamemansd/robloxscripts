
--// System Optimization v1.65
local JDSQeIBQ = 77274; -- junk var
local yiJeWofu = 68536; -- junk var
local pLlYjOla = 97714; -- junk var
local GEfbIdXL = 91548; -- junk var
local URruxcRl = 45359; -- junk var
local yZhXHtVR = 65646; -- junk var
local NVJYCVUJ = 15580; -- junk var
local CoKRtBHj = 90150; -- junk var
local ZDQZjgEq = 98912; -- junk var
local WLexZeQk = 64902; -- junk var
local uMocLXUL = 13066; -- junk var
local nemjnPLc = 7330; -- junk var
local DOmsRTVt = 75313; -- junk var
local xIOSOInw = 34568; -- junk var
local lklYCfnj = 94051; -- junk var
local OSFqDhZl = 85744; -- junk var
local NGkJClIX = 26561; -- junk var
local rlJJQUKr = 18426; -- junk var
local MXvVdAHw = 51973; -- junk var
local slXCntsL = 33370; -- junk var
local FFQAARjx = 97251; -- junk var
local jOefzpBd = 85544; -- junk var
local YGeyZmAC = 35966; -- junk var
local BnqJyPtu = 27400; -- junk var
local HumhtRRX = 36328; -- junk var
local TffVlvnt = 15877; -- junk var
local vlLIDiHW = 23834; -- junk var
local hhGSDvoB = 19696; -- junk var
local ndLiZmQS = 8610; -- junk var
local fbbETeKE = 26586; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: 6eebe0ae510542fca2e36524d048f53a ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("CrVpvt") then CoreGui["CrVpvt"]:Destroy() end

local CrVpvt = Instance.new("ScreenGui", CoreGui)
CrVpvt.Name = "CrVpvt"
local dxtlBNM = Instance.new("Frame", CrVpvt)
local yiOtNUxs = Instance.new("TextBox", dxtlBNM)

dxtlBNM.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
dxtlBNM.BorderSizePixel = 0
dxtlBNM.Position = UDim2.new(0.5, -175, 0.5, -100)
dxtlBNM.Size = UDim2.new(0, 350, 0, 200)
dxtlBNM.Active = true
dxtlBNM.Draggable = true
Instance.new("UICorner", dxtlBNM).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", dxtlBNM)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

yiOtNUxs.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
yiOtNUxs.Position = UDim2.new(0.1, 0, 0.35, 0)
yiOtNUxs.Size = UDim2.new(0.8, 0, 0, 38)
yiOtNUxs.PlaceholderText = "Enter Key..."
yiOtNUxs.Text = ""
yiOtNUxs.TextColor3 = Color3.new(1,1,1)
yiOtNUxs.Font = Enum.Font.Gotham
Instance.new("UICorner", yiOtNUxs)

local b_log = Instance.new("TextButton", dxtlBNM)
local b_get = Instance.new("TextButton", dxtlBNM)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(68, 32, 45))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = yiOtNUxs.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        CrVpvt:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Nebula Hub"
        local ACCENT_COLOR = Color3.fromRGB(68, 32, 45) 
        
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
--// System Optimization v2.64
local ZQrtCxJN = 91400; -- junk var
local kvYELacZ = 21462; -- junk var
local DPyLCxzX = 29762; -- junk var
local jaUMOFyf = 15930; -- junk var
local uWrzTgrq = 56386; -- junk var
local yiLsskdX = 12339; -- junk var
local omFmKTLN = 8940; -- junk var
local wbLNqklE = 38226; -- junk var
local CWEvnlvu = 96317; -- junk var
local aOVGlWNc = 66450; -- junk var
local CbLVvFeS = 63503; -- junk var
local lvOvpsVP = 18791; -- junk var
local EkhvNBrc = 50719; -- junk var
local OwxoegIk = 8381; -- junk var
local TadAhlDQ = 80202; -- junk var
local hMtGuLca = 49239; -- junk var
local pporlLrC = 86753; -- junk var
local poEcoVkJ = 50112; -- junk var
local xLAmjJes = 88212; -- junk var
local uQXCZlDR = 40458; -- junk var
local rFxcundG = 66848; -- junk var
local TqgwWkgX = 77118; -- junk var
local iMVbxBAM = 65668; -- junk var
local ffLFHpYV = 54110; -- junk var
local bDmjZSxG = 7373; -- junk var
local fayfAdfG = 22951; -- junk var
local ZXtFJfTP = 40512; -- junk var
local uHJDpTJn = 46282; -- junk var
local WViGiZLB = 91968; -- junk var
local PbrsJTmI = 85471; -- junk var
local QCiaAJpy = 84297; -- junk var
local JLonGDar = 46657; -- junk var
local KIBCxoWP = 15052; -- junk var
local whLTbbJX = 79016; -- junk var
local ABMWdqzO = 54959; -- junk var
local eRAuGstd = 12231; -- junk var
local sRfUOdYw = 58141; -- junk var
local FvdDHLBs = 23203; -- junk var

