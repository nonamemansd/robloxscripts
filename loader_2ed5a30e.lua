--[[ Lamperuz HUB - Build: df85afb9f208 ]]
local function h_decode(s)
    return (s:gsub('..', function (cc) return string.char(tonumber(cc, 16)) end))
end

local _secret = {108, 97, 109, 112, 101, 114, 117, 122, 49, 50, 51}
local _link = "https://link-center.net/2628650/0udtrz0wIh7A"

if game.CoreGui:FindFirstChild("XhwitS") then game.CoreGui["XhwitS"]:Destroy() end

local XhwitS = Instance.new("ScreenGui")
if syn and syn.protect_gui then syn.protect_gui(XhwitS) end
XhwitS.Parent = game:GetService("CoreGui")
XhwitS.Name = "XhwitS"
XhwitS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local yiALEZx = Instance.new("Frame", XhwitS)
yiALEZx.Size = UDim2.new(0, 340, 0, 210)
yiALEZx.Position = UDim2.new(0.5, -170, 0.5, -105)
yiALEZx.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
yiALEZx.BorderSizePixel = 0
yiALEZx.Active = true
yiALEZx.Draggable = true

Instance.new("UICorner", yiALEZx).CornerRadius = UDim.new(0, 12)

local st = Instance.new("UIStroke", yiALEZx)
st.Color = Color3.fromRGB(138, 43, 226)
st.Thickness = 2.5
st.Transparency = 0.3
local gradient = Instance.new("UIGradient", st)
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 0, 130))
}

local header = Instance.new("Frame", yiALEZx)
header.Size = UDim2.new(1, 0, 0, 50)
header.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Instance.new("UICorner", header).CornerRadius = UDim.new(0, 12)

local tit = Instance.new("TextLabel", header)
tit.Size = UDim2.new(1, -20, 1, 0)
tit.Position = UDim2.new(0, 10, 0, 0)
tit.BackgroundTransparency = 1
tit.Text = "Lamperuz HUB"
tit.TextColor3 = Color3.new(1, 1, 1)
tit.Font = Enum.Font.GothamBold
tit.TextSize = 18
tit.TextXAlignment = Enum.TextXAlignment.Left

local subtitle = Instance.new("TextLabel", yiALEZx)
subtitle.Size = UDim2.new(1, -40, 0, 20)
subtitle.Position = UDim2.new(0, 20, 0, 60)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Enter key to access script"
subtitle.TextColor3 = Color3.fromRGB(180, 180, 185)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 12
subtitle.TextXAlignment = Enum.TextXAlignment.Left

local iLeHSqmU = Instance.new("TextBox", yiALEZx)
iLeHSqmU.Size = UDim2.new(1, -40, 0, 40)
iLeHSqmU.Position = UDim2.new(0, 20, 0, 90)
iLeHSqmU.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
iLeHSqmU.Text = ""
iLeHSqmU.PlaceholderText = "Key here..."
iLeHSqmU.TextColor3 = Color3.new(1, 1, 1)
iLeHSqmU.Font = Enum.Font.GothamMedium
iLeHSqmU.TextSize = 14
Instance.new("UICorner", iLeHSqmU).CornerRadius = UDim.new(0, 8)
Instance.new("UIPadding", iLeHSqmU).PaddingLeft = UDim.new(0, 12)

local login = Instance.new("TextButton", yiALEZx)
login.Size = UDim2.new(0.45, -15, 0, 40)
login.Position = UDim2.new(0, 20, 0, 145)
login.Text = "LOGIN"
login.BackgroundColor3 = Color3.fromRGB(40, 180, 60)
login.TextColor3 = Color3.new(1, 1, 1)
login.Font = Enum.Font.GothamBold
login.TextSize = 14
Instance.new("UICorner", login).CornerRadius = UDim.new(0, 8)

local get = Instance.new("TextButton", yiALEZx)
get.Size = UDim2.new(0.45, -15, 0, 40)
get.Position = UDim2.new(0.55, 10, 0, 145)
get.Text = "GET KEY"
get.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
get.TextColor3 = Color3.new(1, 1, 1)
get.Font = Enum.Font.GothamBold
get.TextSize = 14
Instance.new("UICorner", get).CornerRadius = UDim.new(0, 8)

get.MouseButton1Click:Connect(function()
    setclipboard(_link)
    get.Text = "COPIED!"
    task.wait(1)
    get.Text = "GET KEY"
end)

login.MouseButton1Click:Connect(function()
    local input = iLeHSqmU.Text:gsub("%s+", "")
    local valid = true
    if #input ~= #_secret then valid = false end
    for i = 1, #input do
        if string.byte(input, i) ~= _secret[i] then valid = false break end
    end

    if valid then
        login.Text = "SUCCESS"
        XhwitS:Destroy()
        local url = h_decode("68747470733a2f2f706173746562696e2e636f6d2f7261772f4166706573677545")
        loadstring(game:HttpGet(url))()
    else
        login.Text = "INVALID"
        login.BackgroundColor3 = Color3.fromRGB(180, 60, 40)
        task.wait(1)
        login.Text = "LOGIN"
        login.BackgroundColor3 = Color3.fromRGB(40, 180, 60)
    end
end)
