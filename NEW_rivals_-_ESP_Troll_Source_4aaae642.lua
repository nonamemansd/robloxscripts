loadstring([[
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local lp = Players.LocalPlayer
local cam = workspace.CurrentCamera

local SETTINGS = {
    ENABLE_LOCK = true,
    ENABLE_XRAY = true,
    ENABLE_INFJUMP = false,
    FOV = 120,
    SMOOTH = 1,
    OFFSET = Vector3.new(0,1.5,0),
    ENABLE_ESP = true,
    ENABLE_TRACERS = true,
}

local highlights = {}
local espFolder = Instance.new("Folder", game.CoreGui)
espFolder.Name = "Noks_VIP_ESP"

-- Cercle FOV
local circleGui = Instance.new("ScreenGui", game.CoreGui)
circleGui.Name="NoksVIP_CircleFOVGUI"
local Circle = Instance.new("Frame", circleGui)
Circle.Name="Circle"
Circle.Size=UDim2.new(0,SETTINGS.FOV,0,SETTINGS.FOV)
Circle.Position=UDim2.new(0.5,0,0.5,0)
Circle.AnchorPoint=Vector2.new(0.5,0.5)
Circle.BackgroundTransparency=1
local ui=Instance.new("UICorner",Circle)
ui.CornerRadius=UDim.new(1,0)
local stroke=Instance.new("UIStroke",Circle)
stroke.Thickness=2
stroke.Color=Color3.new(1,1,1)

-- Fonction Slider
local function makeSlider(parent, text, min, max, start, callback)
    local label = Instance.new("TextLabel", parent)
    label.Size = UDim2.new(1,-10,0,20)
    label.Text = text..": "..start
    label.BackgroundTransparency=1
    label.TextColor3=Color3.new(1,1,1)

    local slider = Instance.new("TextButton", parent)
    slider.Size = UDim2.new(1,-10,0,20)
    slider.BackgroundColor3=Color3.fromRGB(50,50,50)
    slider.Text=""

    local knob = Instance.new("Frame", slider)
    knob.Size = UDim2.new(0,10,1,0)
    knob.BackgroundColor3=Color3.fromRGB(200,200,200)

    local dragging=false
    slider.InputBegan:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then dragging=true end
    end)
    slider.InputEnded:Connect(function(input)
        if input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then dragging=false end
    end)
    RunService.RenderStepped:Connect(function()
        if dragging then
            local pos=(UserInputService:GetMouseLocation().X - slider.AbsolutePosition.X)/slider.AbsoluteSize.X
            pos=math.clamp(pos,0,1)
            knob.Position=UDim2.new(pos, -5, 0, 0)
            local val=math.floor(min + (max-min)*pos)
            label.Text=text..": "..val
            callback(val)
        end
    end)

    knob.Position=UDim2.new((start-min)/(max-min), -5, 0, 0)
end

-- Création Panel
local function createPanel()
    if game.CoreGui:FindFirstChild("NoksVIP_PanelGUI") then game.CoreGui.NoksVIP_PanelGUI:Destroy() end
    if game.CoreGui:FindFirstChild("NoksVIP_FloatingBtn") then game.CoreGui:FindFirstChild("NoksVIP_FloatingBtn"):Destroy() end

    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    ScreenGui.Name = "NoksVIP_PanelGUI"

    local Panel = Instance.new("Frame", ScreenGui)
    Panel.Size = UDim2.new(0,250,0,450)
    Panel.Position = UDim2.new(0.05,0,0.2,0)
    Panel.BackgroundColor3 = Color3.fromRGB(30,0,50)
    Panel.Active = true

    -- Néon violet smooth
    local neon = Instance.new("UIStroke", Panel)
    neon.Color = Color3.fromRGB(200,0,255)
    neon.Thickness = 3
    neon.LineJoinMode = Enum.LineJoinMode.Round

    local title = Instance.new("TextLabel", Panel)
    title.Size = UDim2.new(1,0,0,30)
    title.Position = UDim2.new(0,0,0,0)
    title.BackgroundTransparency = 1
    title.Text = "Noks VIP Hub"
    title.TextColor3 = Color3.fromRGB(255,255,255)
    title.Font = Enum.Font.SourceSansBold
    title.TextScaled = true

    local UIList = Instance.new("UIListLayout", Panel)
    UIList.FillDirection = Enum.FillDirection.Vertical
    UIList.Padding = UDim.new(0,5)

    -- Draggable panel
    do
        local dragging, dragStart, startPos
        Panel.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch then
                dragging=true
                dragStart=input.Position
                startPos=Panel.Position
                input.Changed:Connect(function() if input.UserInputState==Enum.UserInputState.End then dragging=false end end)
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch) then
                local delta=input.Position - dragStart
                Panel.Position=UDim2.new(0,startPos.X.Offset+delta.X,0,startPos.Y.Offset+delta.Y)
            end
        end)
    end

    -- Floating button horizontal
    local FloatingBtn = Instance.new("TextButton", game.CoreGui)
    FloatingBtn.Name = "NoksVIP_FloatingBtn"
    FloatingBtn.Size = UDim2.new(0,150,0,40)
    FloatingBtn.Position = UDim2.new(0.05,0,0.05,0)
    FloatingBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
    FloatingBtn.TextColor3 = Color3.fromRGB(255,255,255)
    FloatingBtn.Text = "Noks Hub"
    FloatingBtn.Font = Enum.Font.SourceSansBold
    FloatingBtn.TextScaled = true
    FloatingBtn.Visible = false
    FloatingBtn.AutoButtonColor = true

    FloatingBtn.MouseButton1Click:Connect(function()
        Panel.Visible = true
        FloatingBtn.Visible = false
    end)

    -- Close button
    local btnClose = Instance.new("TextButton", Panel)
    btnClose.Size=UDim2.new(0,30,0,30)
    btnClose.Position=UDim2.new(1,-35,0,5)
    btnClose.BackgroundColor3=Color3.fromRGB(200,50,50)
    btnClose.Text="X"
    btnClose.TextColor3=Color3.new(1,1,1)
    btnClose.MouseButton1Click:Connect(function()
        Panel.Visible=false
        FloatingBtn.Visible=true
    end)

    -- Boutons toggle
    local function makeButton(text, settingKey)
        local b=Instance.new("TextButton", Panel)
        b.Size=UDim2.new(1,-10,0,30)
        b.BackgroundColor3 = SETTINGS[settingKey] and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,0,0)
        b.TextColor3 = Color3.fromRGB(0,0,0)
        b.Text = text
        b.MouseButton1Click:Connect(function()
            SETTINGS[settingKey] = not SETTINGS[settingKey]
            b.BackgroundColor3 = SETTINGS[settingKey] and Color3.fromRGB(0,255,0) or Color3.fromRGB(255,0,0)
        end)
        return b
    end

    makeButton("Toggle Soft Lock", "ENABLE_LOCK")
    makeButton("Toggle Xray", "ENABLE_XRAY")
    makeButton("Toggle Infinite Jump", "ENABLE_INFJUMP")
    makeButton("Toggle ESP PV", "ENABLE_ESP")
    makeButton("Toggle Tracers", "ENABLE_TRACERS")

    -- Remove All (FPS Booster)
    local removeBtn = Instance.new("TextButton", Panel)
    removeBtn.Size = UDim2.new(1,-10,0,30)
    removeBtn.Text = "Remove All (Boost FPS)"
    removeBtn.BackgroundColor3 = Color3.fromRGB(255,100,0)
    removeBtn.TextColor3 = Color3.new(1,1,1)
    removeBtn.MouseButton1Click:Connect(function()
        -- Supprime ciel
        if workspace:FindFirstChildOfClass("Sky") then workspace:FindFirstChildOfClass("Sky"):Destroy() end
        -- Supprime lumières
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("PointLight") or v:IsA("SpotLight") or v:IsA("SurfaceLight") or v:IsA("DirectionalLight") then
                v:Destroy()
            end
        end
        -- Supprime textures et decals
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("MeshPart") or v:IsA("Part") or v:IsA("UnionOperation") then
                v.Material = Enum.Material.Plastic
                v.Color = Color3.fromRGB(100,100,100)
                for _,d in pairs(v:GetChildren()) do if d:IsA("Decal") then d:Destroy() end end
            end
        end
        -- Supprime particules et effets
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Atmosphere") or v:IsA("BloomEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BlurEffect") then
                v:Destroy()
            end
        end
    end)

    -- Sliders
    makeSlider(Panel,"FOV",50,400,SETTINGS.FOV,function(val) SETTINGS.FOV=val end)
    makeSlider(Panel,"Smooth",1,10,SETTINGS.SMOOTH,function(val) SETTINGS.SMOOTH=val end)

    return Panel, FloatingBtn
end

local Panel, FloatingBtn = createPanel()

-- Inf Jump
UserInputService.JumpRequest:Connect(function()
    if SETTINGS.ENABLE_INFJUMP and lp.Character and lp.Character:FindFirstChildOfClass("Humanoid") then
        lp.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- Fonction ESP + Xray + Tracers corrigé
local function applyESP(plr)
    if plr == lp then return end
    if espFolder:FindFirstChild(plr.Name) then return end

    local function createESP()
        if not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") then return end
        local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return end

        -- Billboard + HP bar
        local bg = Instance.new("BillboardGui", espFolder)
        bg.Name = plr.Name
        bg.AlwaysOnTop = true
        bg.Size = UDim2.new(4,0,1,0)
        bg.StudsOffset = Vector3.new(0,3,0)

        local barBG = Instance.new("Frame", bg)
        barBG.Size = UDim2.new(1,0,0.2,0)
        barBG.BackgroundColor3 = Color3.fromRGB(80,80,80)
        local bar = Instance.new("Frame", barBG)
        bar.Name="HPBar"
        bar.Size = UDim2.new(1,0,1,0)
        bar.BackgroundColor3 = Color3.fromRGB(0,255,0)

        -- Tracer
        local tracer = Instance.new("Frame", bg)
        tracer.Size = UDim2.new(0,2,0,0)
        tracer.Position = UDim2.new(0.5,0,0,0)
        tracer.BackgroundColor3 = Color3.fromRGB(255,255,0)

        -- Xray / Highlight
        local function updateHighlight()
            if SETTINGS.ENABLE_XRAY and plr.Character then
                if not highlights[plr] then
                    local hl = Instance.new("Highlight")
                    hl.FillColor = Color3.fromRGB(255,0,0)
                    hl.OutlineColor = Color3.fromRGB(255,0,0)
                    hl.FillTransparency = 0.5
                    hl.OutlineTransparency = 0
                    hl.Adornee = plr.Character
                    hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    hl.Parent = plr.Character
                    highlights[plr] = hl
                else
                    highlights[plr].Adornee = plr.Character
                end
            elseif highlights[plr] then
                highlights[plr]:Destroy()
                highlights[plr] = nil
            end
        end

        RunService.RenderStepped:Connect(function()
            if SETTINGS.ENABLE_ESP and plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
                local hum = plr.Character:FindFirstChildOfClass("Humanoid")
                bar.Size = UDim2.new(math.clamp(hum.Health/hum.MaxHealth,0,1),0,1,0)
                bg.Adornee = hrp
                if SETTINGS.ENABLE_TRACERS then
                    local screenPos, onScreen = cam:WorldToViewportPoint(hrp.Position)
                    local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y)
                    tracer.Size = UDim2.new(0,2,0,(Vector2.new(screenPos.X,screenPos.Y)-center).Magnitude)
                end
            end
            updateHighlight()
        end)
    end

    plr.CharacterAdded:Connect(createESP)
    createESP()
end

for _,p in pairs(Players:GetPlayers()) do applyESP(p) end
Players.PlayerAdded:Connect(applyESP)
Players.PlayerRemoving:Connect(function(p) if espFolder:FindFirstChild(p.Name) then espFolder[p.Name]:Destroy() end end)

-- Loop soft lock / FOV
RunService:BindToRenderStep("NoksVIPLoop",Enum.RenderPriority.Camera.Value,function()
    local char = lp.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local hrp = char.HumanoidRootPart
    local camPos = hrp.Position + SETTINGS.OFFSET

    -- Soft Lock
    local target = nil
    if SETTINGS.ENABLE_LOCK then
        local nearest, shortest = nil, math.huge
        for _,p in pairs(Players:GetPlayers()) do
            if p~=lp and p.Character and p.Character:FindFirstChild("Head") then
                local head = p.Character.Head
                local screenPos,onScreen = cam:WorldToViewportPoint(head.Position)
                if onScreen then
                    local center = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
                    local dist = (Vector2.new(screenPos.X,screenPos.Y)-center).Magnitude
                    if dist <= SETTINGS.FOV/2 and dist < shortest then
                        shortest = dist
                        nearest = head
                    end
                end
            end
        end
        target = nearest
    end
    if target then
        cam.CFrame = cam.CFrame:Lerp(CFrame.new(camPos,target.Position),1/SETTINGS.SMOOTH)
    else
        cam.CFrame = CFrame.new(camPos,camPos+cam.CFrame.LookVector*100)
    end

    -- Cercle centré
    Circle.Size = UDim2.new(0,SETTINGS.FOV,0,SETTINGS.FOV)
    Circle.Position = UDim2.new(0.5,0,0.5,0)
end)
]])()