--[[
    DyLox - Jujutsu Shenanigans (V7.5 - SAFEGUARD EDITION)
    Status: Undetected & Admin Protection Active
    Keybind: L (Toggle Menu)
]]

-- [GÜVENLİK VE BYPASS KATMANI] --
local bypass_success, bypass_error = pcall(function()
    local mt = getrawmetatable(game)
    local old_index = mt.__index
    local old_namecall = mt.__namecall
    setreadonly(mt, false)

    mt.__index = newcclosure(function(t, k)
        if not checkcaller() and _G.SpeedEnabled and t == (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
            if k == "Velocity" or k == "CFrame" then return Vector3.new(0,0,0) end
        end
        return old_index(t, k)
    end)

    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if not checkcaller() and (method == "FireServer" or method == "InvokeServer") then
            local remoteName = tostring(self)
            if remoteName:find("AntiCheat") or remoteName:find("Log") or remoteName:find("Error") then return nil end
        end
        return old_namecall(self, ...)
    end)
    setreadonly(mt, true)
end)

-- [SERVİSLER] --
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local LocalPlayer = Players.LocalPlayer

-- [TEMİZLİK] --
local old = game:GetService("CoreGui"):FindFirstChild("DyLox_JJS") or LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("DyLox_JJS")
if old then old:Destroy() end

-- [ANA UI KURULUMU] --
local DyLoxUI = Instance.new("ScreenGui")
DyLoxUI.Name = "DyLox_JJS"
DyLoxUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
DyLoxUI.DisplayOrder = 999999
local success_p, _ = pcall(function() DyLoxUI.Parent = game:GetService("CoreGui") end)
if not success_p then DyLoxUI.Parent = LocalPlayer:WaitForChild("PlayerGui") end

-- SOL ALT BİLDİRİM
local function CreateNotify(text)
    local Notify = Instance.new("TextLabel", DyLoxUI)
    Notify.Size = UDim2.new(0, 280, 0, 45)
    Notify.Position = UDim2.new(0, 20, 1, -65)
    Notify.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Notify.Text = text
    Notify.TextColor3 = Color3.fromRGB(255, 255, 255)
    Notify.Font = Enum.Font.GothamBold
    Notify.TextSize = 14
    Instance.new("UICorner", Notify).CornerRadius = UDim.new(0, 8)
    local s = Instance.new("UIStroke", Notify)
    s.Color = Color3.fromRGB(138, 43, 226)
    s.Thickness = 2
    task.spawn(function()
        task.wait(5)
        TweenService:Create(Notify, TweenInfo.new(1.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        task.wait(1.5) Notify:Destroy()
    end)
end
CreateNotify("Press L for open/close gui")

-- ANA PANEL
local MainFrame = Instance.new("Frame", DyLoxUI)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MainFrame.Position = UDim2.new(0.5, -200, 0.4, -150)
MainFrame.Size = UDim2.new(0, 420, 0, 520)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(138, 43, 226)

-- BAŞLIK
local TitleBar = Instance.new("TextLabel", MainFrame)
TitleBar.Size = UDim2.new(1, 0, 0, 45)
TitleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TitleBar.Text = "DyLox Hub - JJS"
TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleBar.Font = Enum.Font.GothamBold
TitleBar.TextSize = 18
Instance.new("UICorner", TitleBar)

-- SEKMELER PANELİ
local TabContainer = Instance.new("Frame", MainFrame)
TabContainer.Size = UDim2.new(0, 110, 1, -55)
TabContainer.Position = UDim2.new(0, 10, 0, 50)
TabContainer.BackgroundTransparency = 1
Instance.new("UIListLayout", TabContainer).Padding = UDim.new(0, 5)

-- SAYFALAR PANELİ
local PageContainer = Instance.new("Frame", MainFrame)
PageContainer.Size = UDim2.new(1, -135, 1, -60)
PageContainer.Position = UDim2.new(0, 125, 0, 55)
PageContainer.BackgroundTransparency = 1

local Pages = {}
local function CreatePage(name)
    local Page = Instance.new("ScrollingFrame", PageContainer)
    Page.Name = name .. "Page"
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.BackgroundTransparency = 1
    Page.CanvasSize = UDim2.new(0, 0, 7, 0)
    Page.ScrollBarThickness = 2
    Page.Visible = false
    Instance.new("UIListLayout", Page).Padding = UDim.new(0, 8)
    Pages[name] = Page
    return Page
end

local CombatPage = CreatePage("Combat")
local PlayerPage = CreatePage("Player")
local VisualPage = CreatePage("Visual")
local OtherPage = CreatePage("Other")
Pages["Combat"].Visible = true

local function AddTab(name)
    local TabBtn = Instance.new("TextButton", TabContainer)
    TabBtn.Size = UDim2.new(1, 0, 0, 38)
    TabBtn.BackgroundColor3 = (name == "Combat") and Color3.fromRGB(138, 43, 226) or Color3.fromRGB(25, 25, 25)
    TabBtn.Text = name
    TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabBtn.Font = Enum.Font.GothamBold
    TabBtn.TextSize = 12
    Instance.new("UICorner", TabBtn)
    TabBtn.MouseButton1Click:Connect(function()
        for _, p in pairs(Pages) do p.Visible = false end
        Pages[name].Visible = true
        for _, b in pairs(TabContainer:GetChildren()) do if b:IsA("TextButton") then b.BackgroundColor3 = Color3.fromRGB(25, 25, 25) end end
        TabBtn.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    end)
end

AddTab("Combat")
AddTab("Player")
AddTab("Visual")
AddTab("Other")

local function AddButton(page, text, desc, callback)
    local Btn = Instance.new("TextButton", Pages[page])
    Btn.Size = UDim2.new(1, -5, 0, 55)
    Btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Btn.Text = text .. "\n" .. desc
    Btn.TextColor3 = Color3.fromRGB(180, 180, 180)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.TextSize = 10
    Instance.new("UICorner", Btn)
    local active = false
    Btn.MouseButton1Click:Connect(function()
        active = not active
        callback(active)
        TweenService:Create(Btn, TweenInfo.new(0.3), {
            BackgroundColor3 = active and Color3.fromRGB(138, 43, 226) or Color3.fromRGB(25, 25, 25),
            TextColor3 = active and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(180, 180, 180)
        }):Play()
    end)
end

-- RGB SYSTEM
task.spawn(function()
    while task.wait() do
        local color = Color3.fromHSV(tick() % 5 / 5, 0.8, 1)
        MainStroke.Color = color
        TitleBar.TextColor3 = color
    end
end)

--- [FEATURES - COMBAT] ---

AddButton("Combat", "Auto Parry (V4)", "Automated defense", function(v)
    _G.AutoParry = v
    task.spawn(function()
        while _G.AutoParry do
            for _, e in pairs(Players:GetPlayers()) do
                if e ~= LocalPlayer and e.Character and e.Character:FindFirstChild("HumanoidRootPart") then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - e.Character.HumanoidRootPart.Position).Magnitude < 14 then
                        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
                        task.wait(0.05)
                        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F, false, game)
                    end
                end
            end
            task.wait()
        end
    end)
end)

AddButton("Combat", "Auto Skill", "Auto-casts skills 1-4 on enemy", function(v)
    _G.AutoSkill = v
    task.spawn(function()
        local keys = {Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four}
        while _G.AutoSkill do
            for _, e in pairs(Players:GetPlayers()) do
                if e ~= LocalPlayer and e.Character and e.Character:FindFirstChild("HumanoidRootPart") then
                    local dist = (LocalPlayer.Character.HumanoidRootPart.Position - e.Character.HumanoidRootPart.Position).Magnitude
                    if dist < 16 then
                        for _, key in pairs(keys) do
                            if not _G.AutoSkill then break end
                            VirtualInputManager:SendKeyEvent(true, key, false, game)
                            task.wait(0.05)
                            VirtualInputManager:SendKeyEvent(false, key, false, game)
                            task.wait(0.15)
                        end
                    end
                end
            end
            task.wait(0.5)
        end
    end)
end)

AddButton("Combat", "Fast Cooldowns", "Improved Skill Speed", function(v)
    _G.CooldownReducer = v
    task.spawn(function()
        while _G.CooldownReducer do
            pcall(function()
                for _, obj in pairs(LocalPlayer:GetDescendants()) do
                    if obj.Name:lower():find("cooldown") or obj.Name:lower():find("timer") or obj.Name:lower():find("wait") then
                        if obj:IsA("NumberValue") or obj:IsA("IntValue") then obj.Value = 0 end
                    end
                end
            end)
            task.wait(0.2)
        end
    end)
end)

AddButton("Combat", "Kill Aura", "Automatic M1 attacks", function(v)
    _G.KillAura = v
    task.spawn(function()
        while _G.KillAura do
            for _, e in pairs(Players:GetPlayers()) do
                if e ~= LocalPlayer and e.Character and e.Character:FindFirstChild("HumanoidRootPart") then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - e.Character.HumanoidRootPart.Position).Magnitude < 16 then
                        VirtualInputManager:SendMouseButtonEvent(0,0,0,true,game,0)
                        task.wait(0.08)
                        VirtualInputManager:SendMouseButtonEvent(0,0,0,false,game,0)
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end)

AddButton("Combat", "Hitbox Extender", "Non-visual advanced reach", function(v)
    _G.HitboxExt = v
    task.spawn(function()
        while _G.HitboxExt do
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character then
                    pcall(function()
                        p.Character.HumanoidRootPart.Size = Vector3.new(12, 12, 12)
                        p.Character.HumanoidRootPart.CanCollide = false
                    end)
                end
            end
            task.wait(1)
        end
    end)
end)

AddButton("Combat", "Reach", "Visual Hitbox Increase", function(v) _G.Reach = v end)
RunService.RenderStepped:Connect(function()
    if _G.Reach then
        for _, p in pairs(Players:GetPlayers()) do
            if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                p.Character.HumanoidRootPart.Size = Vector3.new(16, 16, 16)
                p.Character.HumanoidRootPart.Transparency = 1
            end
        end
    end
end)

--- [FEATURES - PLAYER] ---
AddButton("Player", "Hyper Dash", "Speed CFrame Boost", function(v)
    _G.SpeedEnabled = v
    task.spawn(function()
        while _G.SpeedEnabled do
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") and char.Humanoid.MoveDirection.Magnitude > 0 then
                char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + (char.Humanoid.MoveDirection * 0.49)
            end
            task.wait()
        end
    end)
end)

local flySpd = 60
AddButton("Player", "Fly", "WASD Flight Mode", function(v)
    _G.Flying = v
    local char = LocalPlayer.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if v and root then
        local bg = Instance.new("BodyGyro", root)
        bg.Name = "FlyGyro"
        bg.P = 9e4
        bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.cframe = root.CFrame
        local bv = Instance.new("BodyVelocity", root)
        bv.Name = "FlyVelocity"
        bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            while _G.Flying do
                local cam = workspace.CurrentCamera
                local vel = Vector3.new(0, 0.1, 0)
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then vel = vel + (cam.CFrame.LookVector * flySpd) end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then vel = vel - (cam.CFrame.LookVector * flySpd) end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then vel = vel - (cam.CFrame.RightVector * flySpd) end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then vel = vel + (cam.CFrame.RightVector * flySpd) end
                bv.velocity = vel
                bg.cframe = cam.CFrame
                task.wait()
            end
            if bg then bg:Destroy() end
            if bv then bv:Destroy() end
        end)
    end
end)

AddButton("Player", "Noclip", "Walk through walls", function(v) _G.Noclip = v end)
RunService.Stepped:Connect(function()
    if _G.Noclip and LocalPlayer.Character then
        for _, p in pairs(LocalPlayer.Character:GetDescendants()) do if p:IsA("BasePart") then p.CanCollide = false end end
    end
end)

AddButton("Player", "No Ragdoll", "Anti-Fling System", function(v)
    _G.NoRagdoll = v
    RunService.Stepped:Connect(function()
        if _G.NoRagdoll and LocalPlayer.Character and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Physics then
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end
    end)
end)

AddButton("Player", "Infinite Jump", "Jump in mid-air", function(v) _G.InfJump = v end)
UserInputService.JumpRequest:Connect(function() if _G.InfJump then LocalPlayer.Character.Humanoid:ChangeState("Jumping") end end)

--- [FEATURES - VISUAL] ---
AddButton("Visual", "Sorcerer Sense", "Highlight ESP", function(v)
    _G.ESPActive = v
    if not v then
        for _, p in pairs(Players:GetPlayers()) do if p.Character and p.Character:FindFirstChild("DyHighlight") then p.Character.DyHighlight:Destroy() end end
    end
end)

AddButton("Visual", "RGB ESP", "Rainbow Highlights", function(v) _G.RGB_ESP = v end)

task.spawn(function()
    while task.wait(0.1) do
        if _G.ESPActive then
            local color = _G.RGB_ESP and Color3.fromHSV(tick() % 5 / 5, 1, 1) or Color3.fromRGB(138, 43, 226)
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character then
                    local h = p.Character:FindFirstChild("DyHighlight") or Instance.new("Highlight", p.Character)
                    h.Name = "DyHighlight" h.FillColor = color h.FillTransparency = 0.5
                end
            end
        end
    end
end)

AddButton("Visual", "Anti-Domain", "Remove Fog & Effects", function(v)
    Lighting.FogEnd = v and 100000 or 1000
    for _, e in pairs(Lighting:GetDescendants()) do if e:IsA("ColorCorrectionEffect") then e.Enabled = not v end end
end)

--- [FEATURES - OTHER] ---

-- YENİ: SAFEGUARD (Admin Detector)
AddButton("Other", "Safeguard", "Auto-disable on Admin join", function(v)
    _G.Safeguard = v
    if v then
        task.spawn(function()
            while _G.Safeguard do
                for _, p in pairs(Players:GetPlayers()) do
                    if p:GetRankInGroup(0) > 100 or p:IsA("Player") and (p.Name:lower():find("admin") or p.Name:lower():find("mod")) then
                        CreateNotify("ADMIN DETECTED! Emergency Shutdown...")
                        MainFrame.Visible = false
                        _G.AutoParry = false
                        _G.KillAura = false
                        _G.AutoSkill = false
                        _G.SpeedEnabled = false
                        _G.Flying = false
                        _G.ESPActive = false
                    end
                end
                task.wait(2)
            end
        end)
    end
end)

AddButton("Other", "FPS Booster", "Optimizes performance", function(v)
    if v then
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("Part") or v:IsA("MeshPart") then v.Material = Enum.Material.SmoothPlastic
            elseif v:IsA("Decal") or v:IsA("Texture") then v:Destroy() end
        end
        Lighting.GlobalShadows = false
    end
end)

AddButton("Other", "Anti-AFK", "No idle kick", function(v)
    _G.AntiAFK = v
    LocalPlayer.Idled:Connect(function() if _G.AntiAFK then game:GetService("VirtualUser"):CaptureController() game:GetService("VirtualUser"):ClickButton2(Vector2.new()) end end)
end)

AddButton("Other", "Server Hop", "Join new server", function()
    local list = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
    for _, s in pairs(list) do if s.playing < s.maxPlayers and s.id ~= game.JobId then TeleportService:TeleportToPlaceInstance(game.PlaceId, s.id) break end end
end)

AddButton("Other", "Fast Respawn", "Instant Spawn", function(v)
    _G.FastRespawn = v
    task.spawn(function()
        while _G.FastRespawn do
            if LocalPlayer.Character and LocalPlayer.Character.Humanoid.Health <= 0 then
                ReplicatedStorage:WaitForChild("Events"):WaitForChild("Respawn"):FireServer() 
            end
            task.wait(0.4)
        end
    end)
end)

-- TOGGLE
UserInputService.InputBegan:Connect(function(i, g)
    if not g and i.KeyCode == Enum.KeyCode.L then MainFrame.Visible = not MainFrame.Visible end
end)

print("DyLox V7.5 Safeguard Edition Loaded!")