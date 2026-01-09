--[[ 
    CLOUD LOADER SYSTEM
]]
local CONFIG = {
    Title = "Photios HUB",
    KeyURL = "https://raw.githubusercontent.com/nonamemansd/robloxscripts/refs/heads/main/main.txt",
    ScriptURL = "https://pastebin.com/raw/K8gTbjdm",
    Linkvertise = "https://direct-link.net/2628650/5ke8XjzaCfDT"
}

local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("KeySystemUI") then CoreGui.KeySystemUI:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KeySystemUI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.Size = UDim2.new(0, 250, 0, 160)
MainFrame.Active = true
MainFrame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.GothamBold
Title.Text = CONFIG.Title
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = MainFrame
KeyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyInput.Position = UDim2.new(0.1, 0, 0.3, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.Font = Enum.Font.Gotham
KeyInput.PlaceholderText = "Paste Key Here..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.new(1,1,1)
KeyInput.TextSize = 14

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Parent = MainFrame
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
GetKeyBtn.Position = UDim2.new(0.52, 0, 0.65, 0)
GetKeyBtn.Size = UDim2.new(0.38, 0, 0, 35)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.Text = "Get Key"
GetKeyBtn.TextColor3 = Color3.new(1,1,1)
GetKeyBtn.TextSize = 12

local CheckBtn = Instance.new("TextButton")
CheckBtn.Parent = MainFrame
CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
CheckBtn.Position = UDim2.new(0.1, 0, 0.65, 0)
CheckBtn.Size = UDim2.new(0.38, 0, 0, 35)
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.Text = "Check"
CheckBtn.TextColor3 = Color3.new(1,1,1)
CheckBtn.TextSize = 12

-- ЛОГИКА
GetKeyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(CONFIG.Linkvertise)
        GetKeyBtn.Text = "Copied!"
        task.wait(2)
        GetKeyBtn.Text = "Get Key"
    end
end)

CheckBtn.MouseButton1Click:Connect(function()
    local enteredKey = KeyInput.Text
    CheckBtn.Text = "Checking..."
    
    local success, actualKey = pcall(function() return game:HttpGet(CONFIG.KeyURL) end)

    if success then
        actualKey = actualKey:gsub("%s+", "")
        if enteredKey == actualKey then
            CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            CheckBtn.Text = "Correct!"
            task.wait(0.5)
            ScreenGui:Destroy()
            loadstring(game:HttpGet(CONFIG.ScriptURL))()
        else
            CheckBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
            CheckBtn.Text = "Wrong Key"
            task.wait(1)
            CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
            CheckBtn.Text = "Check"
        end
    else
        CheckBtn.Text = "HTTP Error"
    end
end)
