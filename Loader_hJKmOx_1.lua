
--// System Optimization v3.50
local JZYvteFO = 49879; -- junk var
local xAGmmFKo = 21621; -- junk var
local myOzMZQE = 53766; -- junk var
local FsxPthdU = 92053; -- junk var
local bpNALGsR = 79922; -- junk var
local rRLWBscP = 47263; -- junk var
local iOFUScVZ = 35384; -- junk var
local KKCKDawV = 53419; -- junk var
local wQemsozR = 80165; -- junk var
local rSgSkUxB = 30562; -- junk var
local vVfPkAsU = 13383; -- junk var
local Aawlyxmm = 1857; -- junk var
local idXhZWve = 17079; -- junk var
local upZdrmxQ = 41282; -- junk var
local tbfPwwPF = 11603; -- junk var
local tnursAQL = 59956; -- junk var
local SfXsVGQL = 53851; -- junk var
local bjOkVMrT = 6125; -- junk var
local WkYvHVPe = 43931; -- junk var
local JPSKXsby = 29911; -- junk var
local togDnPNv = 67808; -- junk var
local KVPzjtkA = 44952; -- junk var
local wdSPLRNd = 89056; -- junk var
local hlSMTfvj = 16073; -- junk var
local wvdSWfdY = 73100; -- junk var
local aJcDuQxE = 57274; -- junk var
local eEThbNUc = 39681; -- junk var
local rjzaEdFB = 53814; -- junk var
local qsMStmOt = 44917; -- junk var
local pPYcRaxz = 7405; -- junk var
local uCxwROKa = 89771; -- junk var
local zcuPNFom = 27059; -- junk var
local nAmJYGCx = 23805; -- junk var
local caOTRJEh = 68955; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: ea3f0f6e42814cee89ede9f422cb66d5 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("mWWgHt") then CoreGui["mWWgHt"]:Destroy() end

local mWWgHt = Instance.new("ScreenGui", CoreGui)
mWWgHt.Name = "mWWgHt"
local rZhXGrv = Instance.new("Frame", mWWgHt)
local YRtRQFqb = Instance.new("TextBox", rZhXGrv)

rZhXGrv.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
rZhXGrv.BorderSizePixel = 0
rZhXGrv.Position = UDim2.new(0.5, -175, 0.5, -100)
rZhXGrv.Size = UDim2.new(0, 350, 0, 200)
rZhXGrv.Active = true
rZhXGrv.Draggable = true
Instance.new("UICorner", rZhXGrv).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", rZhXGrv)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

YRtRQFqb.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
YRtRQFqb.Position = UDim2.new(0.1, 0, 0.35, 0)
YRtRQFqb.Size = UDim2.new(0.8, 0, 0, 38)
YRtRQFqb.PlaceholderText = "Enter Key..."
YRtRQFqb.Text = ""
YRtRQFqb.TextColor3 = Color3.new(1,1,1)
YRtRQFqb.Font = Enum.Font.Gotham
Instance.new("UICorner", YRtRQFqb)

local b_log = Instance.new("TextButton", rZhXGrv)
local b_get = Instance.new("TextButton", rZhXGrv)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(222, 95, 90))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = YRtRQFqb.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        mWWgHt:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Cyber Client"
        local ACCENT_COLOR = Color3.fromRGB(222, 95, 90) 
        
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
--// System Optimization v7.58
local iWyJyjYv = 76712; -- junk var
local viyjiQoc = 41563; -- junk var
local gWSBYlnF = 42378; -- junk var
local UFOLeJzn = 94336; -- junk var
local CndVOZUS = 37087; -- junk var
local AEMKeXhb = 37848; -- junk var
local iJsnzqiI = 72290; -- junk var
local SdwSXvBS = 50751; -- junk var
local eXoioiOs = 98708; -- junk var
local XSDiZZwn = 41715; -- junk var
local IkbrVZvT = 61361; -- junk var
local tnHpUCqa = 26746; -- junk var
local rmXzlHHL = 42750; -- junk var
local DmZUdtZT = 49667; -- junk var
local kAPliBMh = 54033; -- junk var
local lvbcHjiU = 13533; -- junk var
local IyNRlRZk = 634; -- junk var
local KoeOvvgS = 6480; -- junk var
local zMcxDngK = 77161; -- junk var
local EPDYchmA = 12307; -- junk var

