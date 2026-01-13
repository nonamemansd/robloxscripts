--[[ Lamperuz HUB - Build: f7dde3ad6522 ]]
local function h_decode(s)
    return (s:gsub('..', function (cc) return string.char(tonumber(cc, 16)) end))
end

local _secret = {107, 114, 111, 116, 105, 117, 115, 49, 48, 49}
local _link = "https://link-hub.net/2628650/88Z6JPbM5Xa1"

if game.CoreGui:FindFirstChild("ikcczr") then game.CoreGui["ikcczr"]:Destroy() end

local ikcczr = Instance.new("ScreenGui")
if syn and syn.protect_gui then syn.protect_gui(ikcczr) end
ikcczr.Parent = game:GetService("CoreGui")
ikcczr.Name = "ikcczr"
ikcczr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mMtXZAd = Instance.new("Frame", ikcczr)
mMtXZAd.Size = UDim2.new(0, 340, 0, 210)
mMtXZAd.Position = UDim2.new(0.5, -170, 0.5, -105)
mMtXZAd.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
mMtXZAd.BorderSizePixel = 0
mMtXZAd.Active = true
mMtXZAd.Draggable = true

Instance.new("UICorner", mMtXZAd).CornerRadius = UDim.new(0, 12)

local st = Instance.new("UIStroke", mMtXZAd)
st.Color = Color3.fromRGB(138, 43, 226)
st.Thickness = 2.5
st.Transparency = 0.3
local gradient = Instance.new("UIGradient", st)
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 0, 130))
}

local header = Instance.new("Frame", mMtXZAd)
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

local subtitle = Instance.new("TextLabel", mMtXZAd)
subtitle.Size = UDim2.new(1, -40, 0, 20)
subtitle.Position = UDim2.new(0, 20, 0, 60)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Enter key to access script"
subtitle.TextColor3 = Color3.fromRGB(180, 180, 185)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 12
subtitle.TextXAlignment = Enum.TextXAlignment.Left

local KtLiqxaM = Instance.new("TextBox", mMtXZAd)
KtLiqxaM.Size = UDim2.new(1, -40, 0, 40)
KtLiqxaM.Position = UDim2.new(0, 20, 0, 90)
KtLiqxaM.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
KtLiqxaM.Text = ""
KtLiqxaM.PlaceholderText = "Key here..."
KtLiqxaM.TextColor3 = Color3.new(1, 1, 1)
KtLiqxaM.Font = Enum.Font.GothamMedium
KtLiqxaM.TextSize = 14
Instance.new("UICorner", KtLiqxaM).CornerRadius = UDim.new(0, 8)
Instance.new("UIPadding", KtLiqxaM).PaddingLeft = UDim.new(0, 12)

local login = Instance.new("TextButton", mMtXZAd)
login.Size = UDim2.new(0.45, -15, 0, 40)
login.Position = UDim2.new(0, 20, 0, 145)
login.Text = "LOGIN"
login.BackgroundColor3 = Color3.fromRGB(40, 180, 60)
login.TextColor3 = Color3.new(1, 1, 1)
login.Font = Enum.Font.GothamBold
login.TextSize = 14
Instance.new("UICorner", login).CornerRadius = UDim.new(0, 8)

local get = Instance.new("TextButton", mMtXZAd)
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
    local input = KtLiqxaM.Text:gsub("%s+", "")
    local valid = true
    if #input ~= #_secret then valid = false end
    for i = 1, #input do
        if string.byte(input, i) ~= _secret[i] then valid = false break end
    end

    if valid then
        login.Text = "SUCCESS"
        ikcczr:Destroy()
        local url = h_decode("68747470733a2f2f706173746562696e2e636f6d2f7261772f6234643751784b70")
        loadstring(game:HttpGet(url))()
    else
        login.Text = "INVALID"
        login.BackgroundColor3 = Color3.fromRGB(180, 60, 40)
        task.wait(1)
        login.Text = "LOGIN"
        login.BackgroundColor3 = Color3.fromRGB(40, 180, 60)
    end
end)
