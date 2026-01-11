
--// System Optimization v9.74
local FmOZzhkD = 9863; -- junk var
local KRKYuyhI = 88850; -- junk var
local bdyWbkpb = 92243; -- junk var
local vVtHnPcz = 948; -- junk var
local LhQfzuWY = 60579; -- junk var
local bqTVPiZp = 45430; -- junk var
local rRSOQxlJ = 22561; -- junk var
local AaPIiMLB = 96819; -- junk var
local SrarAcsH = 72748; -- junk var
local OPecXpba = 13217; -- junk var
local oCQPlzVm = 97141; -- junk var
local DjSiLYay = 87585; -- junk var
local rEpXGHko = 18220; -- junk var
local PGAvGOeP = 11228; -- junk var
local raNEeTcJ = 50938; -- junk var
local GvJBdGaa = 13860; -- junk var
local fyVSNsuC = 15820; -- junk var
local GJPmTgJT = 96318; -- junk var
local JnatlFjh = 52268; -- junk var
local stINXfma = 75468; -- junk var
local sfZSxORN = 86819; -- junk var
local VXNTyuIl = 53944; -- junk var
local rVXPuaXI = 61336; -- junk var
local JAwdaGVn = 22287; -- junk var
local PPtiouAm = 78753; -- junk var
local ASqBKoiP = 53311; -- junk var
local ubxxDGkd = 44415; -- junk var
local gSuiLqdH = 4216; -- junk var
local MsgvBIau = 30656; -- junk var
local pOFcBfvY = 76955; -- junk var
local rOhkcaOI = 5847; -- junk var
local ewJiqKao = 18018; -- junk var
local mHEDxgCQ = 81991; -- junk var
local QCtGmgVz = 98042; -- junk var
local SzgOtENW = 60668; -- junk var
local wWpuLGFi = 78456; -- junk var

--// MAIN EXECUTION START
task.spawn(function()
    local s, e = pcall(function()
        --[[ Secured by Lamperuz Auto | ID: eee6d38c46f7480ca6105c0415765aa0 ]]
local _k = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("mHGqdz") then CoreGui["mHGqdz"]:Destroy() end

local mHGqdz = Instance.new("ScreenGui", CoreGui)
mHGqdz.Name = "mHGqdz"
local OLCaKUp = Instance.new("Frame", mHGqdz)
local pMQAByiu = Instance.new("TextBox", OLCaKUp)

OLCaKUp.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
OLCaKUp.BorderSizePixel = 0
OLCaKUp.Position = UDim2.new(0.5, -175, 0.5, -100)
OLCaKUp.Size = UDim2.new(0, 350, 0, 200)
OLCaKUp.Active = true
OLCaKUp.Draggable = true
Instance.new("UICorner", OLCaKUp).CornerRadius = UDim.new(0, 8)

local tit = Instance.new("TextLabel", OLCaKUp)
tit.Size = UDim2.new(1, 0, 0, 45)
tit.BackgroundTransparency = 1
tit.Text = "SECURITY CHECK"
tit.TextColor3 = Color3.new(1,1,1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18

pMQAByiu.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
pMQAByiu.Position = UDim2.new(0.1, 0, 0.35, 0)
pMQAByiu.Size = UDim2.new(0.8, 0, 0, 38)
pMQAByiu.PlaceholderText = "Enter Key..."
pMQAByiu.Text = ""
pMQAByiu.TextColor3 = Color3.new(1,1,1)
pMQAByiu.Font = Enum.Font.Gotham
Instance.new("UICorner", pMQAByiu)

local b_log = Instance.new("TextButton", OLCaKUp)
local b_get = Instance.new("TextButton", OLCaKUp)

local function style_btn(b, p, t, c)
    b.Position = p
    b.Size = UDim2.new(0.38, 0, 0, 38)
    b.Text = t
    b.BackgroundColor3 = c
    b.TextColor3 = Color3.new(1,1,1)
    b.Font = Enum.Font.GothamBold
    Instance.new("UICorner", b)
end

style_btn(b_log, UDim2.new(0.1, 0, 0.65, 0), "LOGIN", Color3.fromRGB(39, 171, 155))
style_btn(b_get, UDim2.new(0.52, 0, 0.65, 0), "GET KEY", Color3.fromRGB(60, 60, 60))

b_get.MouseButton1Click:Connect(function()
    setclipboard("https://link-center.net/2628650/0udtrz0wIh7A")
    b_get.Text = "COPIED"
    task.wait(1.5)
    b_get.Text = "GET KEY"
end)

b_log.MouseButton1Click:Connect(function()
    local inp = pMQAByiu.Text:gsub("%s+", "")
    if #inp ~= #_k then b_log.Text = "BAD KEY" task.wait(1) b_log.Text = "LOGIN" return end
    
    local v = true
    for i=1, #inp do if string.byte(inp, i) ~= _k[i] then v = false end end
    
    if v then
        b_log.Text = "SUCCESS"
        task.wait(0.5)
        mHGqdz:Destroy()
        
        -- ЗАПУСК УНИКАЛИЗАТОРА И ЦЕЛЕВОГО СКРИПТА
        
        -- === [ LAMPERUZ UNIQUEIZER START ] ===
        local MY_NAME = "Prime X"
        local ACCENT_COLOR = Color3.fromRGB(39, 171, 155) 
        
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
--// System Optimization v9.59
local MIfqdcPC = 86593; -- junk var
local tNvcAqHl = 18458; -- junk var
local etmQSjdI = 28038; -- junk var
local cDSuedgV = 14212; -- junk var
local jhVsiGxW = 52880; -- junk var
local eEGqAiRX = 34088; -- junk var
local NQlruSGb = 53377; -- junk var
local AzsFDGzN = 64970; -- junk var
local mxpNSptT = 82387; -- junk var
local jrBuEjfz = 9942; -- junk var
local GVMkHdNz = 42371; -- junk var
local TUKiVdgB = 24069; -- junk var
local jltDVonk = 27263; -- junk var
local icAvkPxG = 66251; -- junk var
local HONJXbcM = 3570; -- junk var
local cgoIdGld = 83923; -- junk var
local lroTRaSL = 71445; -- junk var
local OrhGTapL = 89013; -- junk var
local JhocLWet = 5240; -- junk var
local aoYQOOtL = 1665; -- junk var
local KatODQrn = 32742; -- junk var
local lScsxBLi = 62233; -- junk var
local EVYrBFbj = 67140; -- junk var
local zaFvfBGl = 41108; -- junk var
local PJSTGRRJ = 22356; -- junk var
local YdMZuWaa = 91683; -- junk var
local FEqQAEtv = 36172; -- junk var
local VzfGAcCi = 28419; -- junk var
local UUKBOrCg = 82467; -- junk var
local yuhbDvOB = 82200; -- junk var
local dchqKhgk = 14230; -- junk var
local yBUxjHxg = 39629; -- junk var
local UbUIQPqq = 83994; -- junk var
local lJdYlxEV = 23053; -- junk var
local yGjrqraQ = 62261; -- junk var
local AHuErkbf = 76997; -- junk var

