-- Ждем загрузки игрока и его интерфейса
local player = game:GetService("Players").LocalPlayer
local guiService = game:GetService("GuiService")
local userInputService = game:GetService("UserInputService")

-- Ждем, пока загрузится PlayerGui
local playerGui = player:WaitForChild("PlayerGui")

-- Создаем основной объект ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "XQCHubGui"
screenGui.ResetOnSpawn = false -- Чтобы GUI не исчезало при смерти персонажа
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling -- Для правильного наложения элементов

-- Включаем поддержку наложения на топ (чтобы быть поверх других окон, если нужно)
if userInputService.TouchEnabled then
	screenGui.DisplayOrder = 100
else
	screenGui.DisplayOrder = 1
end

screenGui.Parent = playerGui

-- Создаем основной фрейм (окно)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 350, 0, 200) -- Ширина 350, высота 200
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -100) -- Центр экрана
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30) -- Темно-синий фон
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 0
mainFrame.Active = true -- Чтобы фрейм можно было перемещать (для Draggable)
mainFrame.Draggable = true -- Делаем окно перетаскиваемым (классика для хабов)

-- Создаем скругленные углы для главного фрейма
local mainFrameCorner = Instance.new("UICorner")
mainFrameCorner.CornerRadius = UDim.new(0, 10)
mainFrameCorner.Parent = mainFrame

-- Добавляем тень или обводку (сделаем через второй фрейм позади, но для простоты добавим градиентную обводку через UIStroke)
local mainFrameStroke = Instance.new("UIStroke")
mainFrameStroke.Color = Color3.fromRGB(100, 150, 255) -- Голубая обводка
mainFrameStroke.Thickness = 2
mainFrameStroke.Parent = mainFrame

mainFrame.Parent = screenGui

-- Верхняя полоска для красоты (заголовок)
local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
titleBar.BackgroundTransparency = 0.2
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

-- Скругляем только верхние углы у заголовка (но так как фон родителя отличается, оставим скругление на главном фрейме, а этот пусть будет квадратным сверху)
-- Просто добавим отдельный элемент для красоты

-- Надпись XenoxHub (сверху)
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 35)
titleLabel.BackgroundTransparency = 1 -- Прозрачный фон
titleLabel.Text = "Click to all"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Белый
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.TextStrokeTransparency = 0.5
titleLabel.TextStrokeColor3 = Color3.fromRGB(0, 150, 255) -- Синяя обводка текста
titleLabel.Parent = mainFrame

-- Добавим маленький декоративный элемент (линия под заголовком)
local line = Instance.new("Frame")
line.Name = "Line"
line.Size = UDim2.new(0.8, 0, 0, 2)
line.Position = UDim2.new(0.1, 0, 0.175, 0) -- Под текстом
line.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
line.BorderSizePixel = 0
line.Parent = mainFrame

-- Надпись "Get script"
local getScriptLabel = Instance.new("TextLabel")
getScriptLabel.Name = "GetScriptLabel"
getScriptLabel.Size = UDim2.new(0.8, 0, 0, 30)
getScriptLabel.Position = UDim2.new(0.1, 0, 0.3, 0)
getScriptLabel.BackgroundTransparency = 1
getScriptLabel.Text = "Get script in TG"
getScriptLabel.TextColor3 = Color3.fromRGB(220, 220, 255)
getScriptLabel.TextScaled = true
getScriptLabel.Font = Enum.Font.GothamSemibold
getScriptLabel.TextSize = 16
getScriptLabel.Parent = mainFrame

-- Кнопка "Copy link"
local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyButton"
copyButton.Size = UDim2.new(0.5, 0, 0, 40)
copyButton.Position = UDim2.new(0.25, 0, 0.6, 0) -- Центрируем кнопку
copyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
copyButton.Text = "Copy link"
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.TextScaled = true
copyButton.Font = Enum.Font.GothamBold
copyButton.TextSize = 16
copyButton.AutoButtonColor = false -- Убираем стандартное затемнение, будем управлять цветами сами

-- Скругление для кнопки
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = copyButton

-- Эффект наведения (Hover effect)
copyButton.MouseEnter:Connect(function()
	copyButton.BackgroundColor3 = Color3.fromRGB(60, 80, 200) -- Становится синей
end)

copyButton.MouseLeave:Connect(function()
	copyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 60) -- Возвращается к исходной
end)

copyButton.Parent = mainFrame

-- Текст ссылки (для красоты можно показать под кнопкой)
local linkLabel = Instance.new("TextLabel")
linkLabel.Name = "LinkLabel"
linkLabel.Size = UDim2.new(1, 0, 0, 20)
linkLabel.Position = UDim2.new(0, 0, 0.85, 0)
linkLabel.BackgroundTransparency = 1
linkLabel.Text = "Thank you for use!"
linkLabel.TextColor3 = Color3.fromRGB(150, 150, 200)
linkLabel.TextScaled = true
linkLabel.Font = Enum.Font.Code -- Шрифт, похожий на моноширинный для ссылки
linkLabel.TextSize = 12
linkLabel.TextTransparency = 0.3
linkLabel.Parent = mainFrame

-- Функционал кнопки: копирование ссылки в буфер обмена
local function copyToClipboard()
	local success, errorMessage = pcall(function()
		-- Устанавливаем текст в буфер обмена
		setclipboard("https://go.linkify.ru/2Gd1")
	end)
	
	if success then
		-- Визуальный эффект, что скопировано
		copyButton.Text = "Copied!"
		copyButton.BackgroundColor3 = Color3.fromRGB(0, 200, 100) -- Зеленый
		
		-- Через 2 секунды возвращаем исходный текст
		task.wait(2)
		copyButton.Text = "Copy link"
		copyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
	else
		-- Если не удалось скопировать (например, в некоторых эмуляторах)
		warn("Failed to copy: " .. tostring(errorMessage))
		copyButton.Text = "Error!"
		copyButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
		task.wait(2)
		copyButton.Text = "Copy link"
		copyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
	end
end

copyButton.MouseButton1Click:Connect(copyToClipboard)

-- Добавим анимацию появления (опционально)
mainFrame.BackgroundTransparency = 1
mainFrame.Size = UDim2.new(0, 300, 0, 150) -- Начальный размер меньше
for i = 1, 10 do
	mainFrame.BackgroundTransparency = 1 - (i / 10)
	mainFrame.Size = UDim2.new(0, 300 + (i * 5), 0, 150 + (i * 5))
	task.wait(0.02)
end
mainFrame.BackgroundTransparency = 0.1
mainFrame.Size = UDim2.new(0, 350, 0, 200)
