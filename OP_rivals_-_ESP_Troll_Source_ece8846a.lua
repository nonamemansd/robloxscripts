local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")

pcall(function()
    CoreGui:FindFirstChild("GZSSF_SPLASH"):Destroy()
end)

-- BLUR
local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 0
TweenService:Create(blur, TweenInfo.new(0.5), {Size = 18}):Play()

-- GUI
local gui = Instance.new("ScreenGui", CoreGui)
gui.Name = "GZSSF_SPLASH"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false

local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(5,6,10)

-- LIGHTNING LAYER (FONDO)
local lightningLayer = Instance.new("Frame", bg)
lightningLayer.Size = UDim2.new(1,0,1,0)
lightningLayer.BackgroundTransparency = 1
lightningLayer.ZIndex = 1

-- Rayos: zigzag sólido que caen hasta abajo
local function spawnLightning()
    local segments = math.random(8,11)
    local x = math.random(15,85)/100
    local y = -0.25
    local lastX = x

    for _ = 1, segments do
        local segHeight = math.random(60,90)
        local seg = Instance.new("Frame", lightningLayer)
        seg.AnchorPoint = Vector2.new(0.5,0)
        seg.Position = UDim2.new(lastX,0,y,0)
        seg.Size = UDim2.new(0,4,0,segHeight)
        seg.Rotation = math.random(-20,20)
        seg.BackgroundColor3 = Color3.fromRGB(120,240,255) -- celeste sólido
        seg.BorderSizePixel = 0
        seg.ZIndex = 1

        local glow = Instance.new("UIStroke", seg)
        glow.Thickness = 3
        glow.Color = Color3.fromRGB(120,255,255)
        glow.Transparency = 0

        local offset = math.random(-25,25)/1000
        lastX += offset
        y += segHeight / math.max(1, (game:GetService("Workspace").CurrentCamera and game:GetService("Workspace").CurrentCamera.ViewportSize.Y) or 720)

        -- Desvanece después
        TweenService:Create(seg, TweenInfo.new(0.25), {BackgroundTransparency = 1}):Play()
        task.delay(0.3, function() if seg and seg.Parent then seg:Destroy() end end)
    end
end

-- TITULOS
local title = Instance.new("TextLabel", bg)
title.Size = UDim2.new(0,400,0,70)
title.Position = UDim2.new(0.5,-200,0.42,-60)
title.BackgroundTransparency = 1
title.Text = "GZSSF"
title.Font = Enum.Font.GothamBlack
title.TextSize = 54
title.TextColor3 = Color3.fromRGB(200,255,255)
title.ZIndex = 2

local sub = Instance.new("TextLabel", bg)
sub.Size = UDim2.new(0,400,0,30)
sub.Position = UDim2.new(0.5,-200,0.42,5)
sub.BackgroundTransparency = 1
sub.Text = "scripts"
sub.Font = Enum.Font.Gotham
sub.TextSize = 18
sub.TextColor3 = Color3.fromRGB(160,220,220)
sub.ZIndex = 2

-- FLOAT ANIMATION PARA TEXTOS
task.spawn(function()
    while title.Parent do
        TweenService:Create(title, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {Position = title.Position + UDim2.new(0,0,0,-8)}):Play()
        TweenService:Create(sub, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {Position = sub.Position + UDim2.new(0,0,0,-8)}):Play()
        task.wait(2)
        TweenService:Create(title, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {Position = title.Position + UDim2.new(0,0,0,8)}):Play()
        TweenService:Create(sub, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
            {Position = sub.Position + UDim2.new(0,0,0,8)}):Play()
        task.wait(2)
    end
end)

-- LOADING BAR (ABAJO)
local barBG = Instance.new("Frame", bg)
barBG.Size = UDim2.new(0,460,0,12)
barBG.Position = UDim2.new(0.5,-230,0.72,0)
barBG.BackgroundColor3 = Color3.fromRGB(30,40,50)
barBG.BorderSizePixel = 0
barBG.ZIndex = 2
barBG.ClipsDescendants = true -- <<< muy importante: evita que la linea se "escape"
Instance.new("UICorner", barBG)

-- BARRA DE LLENADO REAL (progreso)
local barFill = Instance.new("Frame", barBG)
barFill.Size = UDim2.new(0,0,1,0)
barFill.BackgroundColor3 = Color3.fromRGB(55,95,140)
barFill.BorderSizePixel = 0
Instance.new("UICorner", barFill)

-- SHIMMER LINE (SIEMPRE DENTRO DE barBG)
local shimmer = Instance.new("Frame", barBG)
shimmer.Size = UDim2.new(0.25,0,1,0) -- 25% del ancho de la barra
shimmer.Position = UDim2.new(-0.25,0,0,0)
shimmer.BackgroundColor3 = Color3.fromRGB(150,255,255)
shimmer.BorderSizePixel = 0
Instance.new("UICorner", shimmer)
shimmer.ZIndex = 3

-- Texto porcentaje
local percent = Instance.new("TextLabel", bg)
percent.Size = UDim2.new(0,200,0,20)
percent.Position = UDim2.new(0.5,-100,0.76,0)
percent.BackgroundTransparency = 1
percent.Text = "0%"
percent.Font = Enum.Font.Gotham
percent.TextSize = 14
percent.TextColor3 = Color3.fromRGB(150,150,200)
percent.ZIndex = 2

-- SKIP BUTTON (ABAJO DERECHA)
local skip = Instance.new("TextButton", bg)
skip.Size = UDim2.new(0,90,0,32)
skip.Position = UDim2.new(1,-110,1,-50)
skip.Text = "SKIP"
skip.Font = Enum.Font.GothamBold
skip.TextSize = 14
skip.TextColor3 = Color3.new(1,1,1)
skip.BackgroundColor3 = Color3.fromRGB(60,60,60)
skip.BorderSizePixel = 0
skip.ZIndex = 4
Instance.new("UICorner", skip)

local closed = false
local function closeSplash()
    if closed then return end
    closed = true
    -- fade blur y GUI
    TweenService:Create(blur, TweenInfo.new(0.35), {Size = 0}):Play()
    -- fade gui elements (rápido)
    for _, v in pairs(bg:GetDescendants()) do
        if v:IsA("TextLabel") or v:IsA("TextButton") then
            pcall(function() TweenService:Create(v, TweenInfo.new(0.25), {TextTransparency = 1}):Play() end)
        elseif v:IsA("Frame") then
            pcall(function() TweenService:Create(v, TweenInfo.new(0.25), {BackgroundTransparency = 1}):Play() end)
        end
    end
    task.wait(0.36)
    if blur and blur.Parent then blur:Destroy() end
    if gui and gui.Parent then gui:Destroy() end
end

skip.MouseButton1Click:Connect(closeSplash)

-- ANIMACION DEL SHIMMER (dentro de la barra; no puede escaparse por ClipsDescendants)
local shimmerTweenTime = 1.1
local shimmerTweenInfo = TweenInfo.new(shimmerTweenTime, Enum.EasingStyle.Linear)

local shimmerLoop = task.spawn(function()
    while shimmer.Parent and not closed do
        -- from left outside to right outside of barBG's coordinates, but clipped by barBG
        shimmer.Position = UDim2.new(-shimmer.Size.X.Scale, 0, 0, 0)
        local targetPos = UDim2.new(1, 0, 0, 0)
        local tw = TweenService:Create(shimmer, shimmerTweenInfo, {Position = targetPos})
        tw:Play()
        local ok, err = pcall(function() tw.Completed:Wait() end)
        if not ok then break end
        task.wait(0.05)
    end
end)

-- RAYOS LOOP
local lightningLoop = task.spawn(function()
    while gui.Parent and not closed do
        spawnLightning()
        task.wait(math.random(12,20)/100) -- 0.12 - 0.20s
    end
end)

-- CARGA (simulada): llena la barra y actualiza porcentaje
for i = 1, 100 do
    if closed then break end
    local scale = i / 100
    barFill.Size = UDim2.new(scale, 0, 1, 0)
    percent.Text = tostring(i) .. "%"
    task.wait(0.035)
end

-- AL FINAL: mini explosiones antes de cerrar
if not closed then
    local function miniExplosionAt(xScale)
        local circ = Instance.new("Frame", bg)
        circ.AnchorPoint = Vector2.new(0.5, 1)
        circ.Position = UDim2.new(xScale, 0, 1, -18) -- justo encima del borde inferior
        circ.Size = UDim2.new(0,12,0,12)
        circ.BackgroundColor3 = Color3.fromRGB(140,255,255)
        circ.BorderSizePixel = 0
        local uic = Instance.new("UICorner", circ)
        uic.CornerRadius = UDim.new(1,0)

        -- expand & fade
        TweenService:Create(circ, TweenInfo.new(0.35, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0,140,0,140),
            BackgroundTransparency = 1,
            Position = UDim2.new(xScale, 0, 1, -70)
        }):Play()

        task.delay(0.36, function()
            if circ and circ.Parent then circ:Destroy() end
        end)
    end

    -- dispara varias mini explosiones a lo largo de la parte baja (alineadas con la barra)
    local n = 4
    for k = 1, n do
        local x = 0.5 - 230/460 + ( (k-1) * (460/(n-1)) ) / 460 -- mapea 0..460 a 0..1 centrado en la barra
        x = math.clamp(x, 0.05, 0.95)
        miniExplosionAt(x)
        task.wait(0.14)
    end

    task.wait(0.45)
end

-- CERRAR SPLASH
closeSplash()


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Camera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Estados
local Features = {
    SilentAim = false,
    ESP = false,
    TeamCheck = true,
    ShowSkeleton = true,
    ShowTracer = true,
    ShowHeadDot = true,
    ShowInfo = true,
    FOV = 150,
    MaxDistance = 1000
}

-- Keybinds storage
local Keybinds = {
    SilentAim = nil,  -- nil = sin asignar
    ESP = nil,
    TeamCheck = nil
}

local espObjects = {}
local listeningForKey = nil -- Para saber si estamos esperando una tecla

-- Crear ScreenGui con CAPA SUPERIOR (DisplayOrder alto)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ProMenu"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999  -- ¡CAPA SUPERIOR! Por encima del menú ESC
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Marco principal
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainMenu"
MainFrame.Size = UDim2.new(0, 320, 0, 450)
MainFrame.Position = UDim2.new(0, 50, 0, 50)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- Esquinas redondeadas
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 10)
Corner.Parent = MainFrame

-- Sombra
local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(1, 40, 1, 40)
Shadow.ZIndex = -1
Shadow.Image = "rbxassetid://6014261993"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(49, 49, 450, 450)
Shadow.Parent = MainFrame

-- Barra de título
local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = TitleBar

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -50, 1, 0)
TitleText.Position = UDim2.new(0, 15, 0, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "Menu by GZSSF"
TitleText.TextColor3 = Color3.fromRGB(0, 170, 255)
TitleText.TextSize = 18
TitleText.Font = Enum.Font.GothamBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = TitleBar

-- Botón cerrar
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 70, 70)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = TitleBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 6)
CloseCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

-- Contenedor de opciones
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Size = UDim2.new(1, -20, 1, -55)
ContentFrame.Position = UDim2.new(0, 10, 0, 50)
ContentFrame.BackgroundTransparency = 1
ContentFrame.ScrollBarThickness = 4
ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 255)
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ContentFrame.Parent = MainFrame

local UIList = Instance.new("UIListLayout")
UIList.Padding = UDim.new(0, 10)
UIList.Parent = ContentFrame

UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ContentFrame.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y + 20)
end)

-- Función para crear Toggle con Keybind
local function CreateToggle(text, featureKey, default)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 45)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
    Frame.BorderSizePixel = 0
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Frame
    
    -- Label del nombre
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.5, -10, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 14
    Label.Font = Enum.Font.GothamSemibold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame
    
    -- Botón de Keybind (al lado del toggle)
    local KeybindBtn = Instance.new("TextButton")
    KeybindBtn.Size = UDim2.new(0, 50, 0, 28)
    KeybindBtn.Position = UDim2.new(0.52, 0, 0.5, -14)
    KeybindBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    KeybindBtn.Text = "[...]"
    KeybindBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
    KeybindBtn.TextSize = 12
    KeybindBtn.Font = Enum.Font.GothamBold
    KeybindBtn.Parent = Frame
    
    local KeybindCorner = Instance.new("UICorner")
    KeybindCorner.CornerRadius = UDim.new(0, 4)
    KeybindCorner.Parent = KeybindBtn
    
    -- Botón Toggle (ON/OFF)
    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0, 55, 0, 28)
    ToggleBtn.Position = UDim2.new(1, -65, 0.5, -14)
    ToggleBtn.BackgroundColor3 = default and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(200, 50, 50)
    ToggleBtn.Text = default and "ON" or "OFF"
    ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleBtn.TextSize = 12
    ToggleBtn.Font = Enum.Font.GothamBold
    ToggleBtn.Parent = Frame
    
    local ToggleCorner = Instance.new("UICorner")
    ToggleCorner.CornerRadius = UDim.new(0, 4)
    ToggleCorner.Parent = ToggleBtn
    
    -- Estado
    local state = default
    if Features[featureKey] ~= nil then
        Features[featureKey] = state
    end
    
    -- Función toggle
    local function toggleState()
        state = not state
        if Features[featureKey] ~= nil then
            Features[featureKey] = state
        end
        ToggleBtn.Text = state and "ON" or "OFF"
        TweenService:Create(ToggleBtn, TweenInfo.new(0.2), {
            BackgroundColor3 = state and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(200, 50, 50)
        }):Play()
        
        -- Si es ESP y se apaga, ocultar todo
        if featureKey == "ESP" and not state then
            for _, data in pairs(espObjects) do
                for _, obj in pairs(data.objects) do
                    if obj then obj.Visible = false end
                end
            end
        end
    end
    
    ToggleBtn.MouseButton1Click:Connect(toggleState)
    
    -- Sistema de Keybind
    KeybindBtn.MouseButton1Click:Connect(function()
        if listeningForKey then return end
        
        listeningForKey = featureKey
        KeybindBtn.Text = "[...]"
        KeybindBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
        
        -- Animación de espera
        local dots = 0
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if listeningForKey ~= featureKey then
                connection:Disconnect()
                return
            end
            dots = (dots + 1) % 4
            KeybindBtn.Text = "[." .. string.rep(".", dots) .. "]"
        end)
        
        -- Esperar 5 segundos y cancelar si no presiona nada
        task.delay(5, function()
            if listeningForKey == featureKey then
                listeningForKey = nil
                connection:Disconnect()
                KeybindBtn.Text = Keybinds[featureKey] and "[" .. Keybinds[featureKey].Name .. "]" or "[...]"
                KeybindBtn.BackgroundColor3 = Keybinds[featureKey] and Color3.fromRGB(0, 150, 100) or Color3.fromRGB(60, 60, 70)
            end
        end)
    end)
    
    -- Actualizar texto del keybind si ya existe
    if Keybinds[featureKey] then
        KeybindBtn.Text = "[" .. Keybinds[featureKey].Name .. "]"
        KeybindBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
    end
    
    Frame.Parent = ContentFrame
    
    return {
        frame = Frame,
        toggle = toggleState,
        getState = function() return state end
    }
end

-- Función para crear Slider
local function CreateSlider(text, min, max, default, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 60)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Frame
    
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -20, 0, 25)
    Label.Position = UDim2.new(0, 12, 0, 5)
    Label.BackgroundTransparency = 1
    Label.Text = text .. ": " .. default
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 13
    Label.Font = Enum.Font.GothamSemibold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame
    
    local SliderBg = Instance.new("Frame")
    SliderBg.Size = UDim2.new(1, -24, 0, 10)
    SliderBg.Position = UDim2.new(0, 12, 0, 35)
    SliderBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    SliderBg.BorderSizePixel = 0
    SliderBg.Parent = Frame
    
    local SliderCorner = Instance.new("UICorner")
    SliderCorner.CornerRadius = UDim.new(0, 5)
    SliderCorner.Parent = SliderBg
    
    local SliderFill = Instance.new("Frame")
    SliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    SliderFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    SliderFill.BorderSizePixel = 0
    SliderFill.Parent = SliderBg
    
    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(0, 5)
    FillCorner.Parent = SliderFill
    
    local dragging = false
    
    local function updateSlider(input)
        local pos = math.clamp((input.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X, 0, 1)
        local value = math.floor(min + (max - min) * pos)
        SliderFill.Size = UDim2.new(pos, 0, 1, 0)
        Label.Text = text .. ": " .. value
        callback(value)
    end
    
    SliderBg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            updateSlider(input)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            updateSlider(input)
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    Frame.Parent = ContentFrame
end

-- Sección: AIMBOT
local AimSection = Instance.new("TextLabel")
AimSection.Size = UDim2.new(1, 0, 0, 30)
AimSection.BackgroundTransparency = 1
AimSection.Text = "AIMBOT"
AimSection.TextColor3 = Color3.fromRGB(0, 170, 255)
AimSection.TextSize = 14
AimSection.Font = Enum.Font.GothamBold
AimSection.Parent = ContentFrame

CreateToggle("Silent Aim", "SilentAim", false)
CreateToggle("Team Check", "TeamCheck", true)

CreateSlider("FOV", 50, 500, 150, function(value)
    Features.FOV = value
end)

-- Sección: ESP
local ESPSection = Instance.new("TextLabel")
ESPSection.Size = UDim2.new(1, 0, 0, 30)
ESPSection.BackgroundTransparency = 1
ESPSection.Text = "ESP"
ESPSection.TextColor3 = Color3.fromRGB(0, 170, 255)
ESPSection.TextSize = 14
ESPSection.Font = Enum.Font.GothamBold
ESPSection.Parent = ContentFrame

CreateToggle("Enable ESP", "ESP", false)
CreateToggle("Skeleton", "ShowSkeleton", true)
CreateToggle("Tracers", "ShowTracer", true)
CreateToggle("Head Dot", "ShowHeadDot", true)
CreateToggle("Info Text", "ShowInfo", true)

CreateSlider("Max Distance", 100, 2000, 1000, function(value)
    Features.MaxDistance = value
end)

-- FOV Circle Visual
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 1.5
FOVCircle.NumSides = 64
FOVCircle.Radius = Features.FOV
FOVCircle.Filled = false
FOVCircle.Visible = false
FOVCircle.Color = Color3.fromRGB(0, 170, 255)
FOVCircle.Transparency = 0.6

-- Funciones del Aimbot
local function isEnemy(player)
    if not Features.TeamCheck then return true end
    if not player.Team or not LocalPlayer.Team then return true end
    return player.Team ~= LocalPlayer.Team
end

local function getTargetInFOV()
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return nil end
    
    local closest = nil
    local shortest = Features.FOV
    local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local localPos = LocalPlayer.Character.HumanoidRootPart.Position

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and isEnemy(player) then
            local head = player.Character:FindFirstChild("Head")
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            
            if head and hrp then
                local distance = (hrp.Position - localPos).Magnitude
                if distance <= Features.MaxDistance then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position)
                    if onScreen then
                        local screenPos2D = Vector2.new(screenPos.X, screenPos.Y)
                        local distFromCenter = (screenPos2D - screenCenter).Magnitude
                        
                        if distFromCenter < shortest then
                            shortest = distFromCenter
                            closest = head
                        end
                    end
                end
            end
        end
    end
    
    return closest
end

-- Silent Aim (click)
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and Features.SilentAim then
        local target = getTargetInFOV()
        if target then
            Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Position)
            if ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("Attack") then
                ReplicatedStorage.Remotes.Attack:FireServer(target)
            end
        end
    end
end)

-- SISTEMA DE KEYBINDS GLOBAL
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    -- Si estamos esperando una tecla para asignar
    if listeningForKey then
        if input.KeyCode ~= Enum.KeyCode.Unknown then
            Keybinds[listeningForKey] = input.KeyCode
            -- Actualizar visual del botón
            for _, child in pairs(ContentFrame:GetDescendants()) do
                if child:IsA("TextButton") and child.Text:match("%[%.%.%.%]") and child.BackgroundColor3 == Color3.fromRGB(0, 170, 255) then
                    child.Text = "[" .. input.KeyCode.Name .. "]"
                    child.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
                    break
                end
            end
            listeningForKey = nil
        end
        return
    end
    
    -- Si no estamos escribiendo en chat ni en menú
    if gameProcessed then return end
    
    -- Verificar keybinds asignados
    for feature, key in pairs(Keybinds) do
        if input.KeyCode == key then
            if feature == "SilentAim" then
                Features.SilentAim = not Features.SilentAim
                -- Actualizar botón visualmente
                for _, child in pairs(ContentFrame:GetDescendants()) do
                    if child:IsA("TextButton") and child.Parent:FindFirstChild("TextLabel") and child.Parent.TextLabel.Text == "Silent Aim" then
                        child.Text = Features.SilentAim and "ON" or "OFF"
                        child.BackgroundColor3 = Features.SilentAim and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(200, 50, 50)
                    end
                end
            elseif feature == "ESP" then
                Features.ESP = not Features.ESP
                if not Features.ESP then
                    for _, data in pairs(espObjects) do
                        for _, obj in pairs(data.objects) do
                            if obj then obj.Visible = false end
                        end
                    end
                end
                -- Actualizar botón
                for _, child in pairs(ContentFrame:GetDescendants()) do
                    if child:IsA("TextButton") and child.Parent:FindFirstChild("TextLabel") and child.Parent.TextLabel.Text == "Enable ESP" then
                        child.Text = Features.ESP and "ON" or "OFF"
                        child.BackgroundColor3 = Features.ESP and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(200, 50, 50)
                    end
                end
            elseif feature == "TeamCheck" then
                Features.TeamCheck = not Features.TeamCheck
                for _, child in pairs(ContentFrame:GetDescendants()) do
                    if child:IsA("TextButton") and child.Parent:FindFirstChild("TextLabel") and child.Parent.TextLabel.Text == "Team Check" then
                        child.Text = Features.TeamCheck and "ON" or "OFF"
                        child.BackgroundColor3 = Features.TeamCheck and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(200, 50, 50)
                    end
                end
            end
        end
    end
end)

-- ESP Setup
local bodyConnections = {
    {"Head", "UpperTorso"}, {"UpperTorso", "LowerTorso"},
    {"UpperTorso", "LeftUpperArm"}, {"LeftUpperArm", "LeftLowerArm"}, {"LeftLowerArm", "LeftHand"},
    {"UpperTorso", "RightUpperArm"}, {"RightUpperArm", "RightLowerArm"}, {"RightLowerArm", "RightHand"},
    {"LowerTorso", "LeftUpperLeg"}, {"LeftUpperLeg", "LeftLowerLeg"}, {"LeftLowerLeg", "LeftFoot"},
    {"LowerTorso", "RightUpperLeg"}, {"RightUpperLeg", "RightLowerLeg"}, {"RightLowerLeg", "RightFoot"}
}

local function createESP(player)
    if player == LocalPlayer then return end
    
    local objects = {}
    
    for i = 1, 14 do
        local line = Drawing.new("Line")
        line.Thickness = 1.5
        line.Transparency = 0.8
        line.Visible = false
        table.insert(objects, line)
    end
    
    local headCircle = Drawing.new("Circle")
    headCircle.Thickness = 2
    headCircle.NumSides = 12
    headCircle.Radius = 4
    headCircle.Filled = true
    headCircle.Visible = false
    table.insert(objects, headCircle)
    
    local tracer = Drawing.new("Line")
    tracer.Thickness = 1
    tracer.Transparency = 0.5
    tracer.Visible = false
    table.insert(objects, tracer)
    
    local infoText = Drawing.new("Text")
    infoText.Size = 13
    infoText.Center = true
    infoText.Outline = true
    infoText.OutlineColor = Color3.fromRGB(0, 0, 0)
    infoText.Visible = false
    table.insert(objects, infoText)
    
    espObjects[player] = {objects = objects, player = player}
    
    player.AncestryChanged:Connect(function()
        if not player:IsDescendantOf(game) then
            for _, obj in pairs(objects) do obj:Remove() end
            espObjects[player] = nil
        end
    end)
end

-- ESP Loop
RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    FOVCircle.Radius = Features.FOV
    FOVCircle.Visible = Features.SilentAim
    
    for player, data in pairs(espObjects) do
        local objects = data.objects
        local char = player.Character
        
        if Features.ESP and char and isEnemy(player) then
            local humanoid = char:FindFirstChild("Humanoid")
            local hrp = char:FindFirstChild("HumanoidRootPart")
            local head = char:FindFirstChild("Head")
            
            if humanoid and hrp and head then
                local distance = (hrp.Position - Camera.CFrame.Position).Magnitude
                
                if distance <= Features.MaxDistance then
                    local headPos, headOnScreen = Camera:WorldToViewportPoint(head.Position)
                    local rootPos, rootOnScreen = Camera:WorldToViewportPoint(hrp.Position)
                    
                    if headOnScreen or rootOnScreen then
                        local color = Color3.fromRGB(255, 50, 50)
                        
                        if Features.ShowSkeleton then
                            for i, connection in pairs(bodyConnections) do
                                if i <= #objects - 3 then
                                    local part1 = char:FindFirstChild(connection[1])
                                    local part2 = char:FindFirstChild(connection[2])
                                    
                                    if part1 and part2 then
                                        local pos1, on1 = Camera:WorldToViewportPoint(part1.Position)
                                        local pos2, on2 = Camera:WorldToViewportPoint(part2.Position)
                                        
                                        local line = objects[i]
                                        if on1 and on2 then
                                            line.From = Vector2.new(pos1.X, pos1.Y)
                                            line.To = Vector2.new(pos2.X, pos2.Y)
                                            line.Color = color
                                            line.Visible = true
                                        else
                                            line.Visible = false
                                        end
                                    end
                                end
                            end
                        end
                        
                        if Features.ShowHeadDot then
                            local circle = objects[#objects - 2]
                            circle.Position = Vector2.new(headPos.X, headPos.Y)
                            circle.Color = color
                            circle.Radius = math.clamp(800 / distance, 3, 8)
                            circle.Visible = true
                        end
                        
                        if Features.ShowTracer then
                            local tracer = objects[#objects - 1]
                            tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                            tracer.To = Vector2.new(rootPos.X, rootPos.Y)
                            tracer.Color = color
                            tracer.Visible = true
                        end
                        
                        if Features.ShowInfo then
                            local text = objects[#objects]
                            text.Position = Vector2.new(headPos.X, headPos.Y - 40)
                            text.Text = string.format("%s\n[%dHP] [%dm]", 
                                player.Name, 
                                math.floor(humanoid.Health), 
                                math.floor(distance)
                            )
                            text.Color = Color3.fromRGB(255, 255, 255)
                            text.Visible = true
                        end
                    else
                        for _, obj in pairs(objects) do obj.Visible = false end
                    end
                else
                    for _, obj in pairs(objects) do obj.Visible = false end
                end
            else
                for _, obj in pairs(objects) do obj.Visible = false end
            end
        else
            for _, obj in pairs(objects) do obj.Visible = false end
        end
    end
end)

-- Inicializar
for _, player in pairs(Players:GetPlayers()) do createESP(player) end
Players.PlayerAdded:Connect(createESP)
Players.PlayerRemoving:Connect(function(player)
    if espObjects[player] then
        for _, obj in pairs(espObjects[player].objects) do obj:Remove() end
        espObjects[player] = nil
    end
end)

-- Tecla INSERT para mostrar/ocultar menú
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Insert then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

print("Pro Menu con Keybinds cargado | INSERT para mostrar/ocultar | Click en [...] para asignar teclas")
