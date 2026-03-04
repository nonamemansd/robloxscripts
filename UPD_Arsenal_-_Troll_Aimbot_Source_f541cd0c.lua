if not game:GetService("GuiService") then
	print("Error: Not running in Roblox environment")
	return
end

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local COLORS = {
	dark = Color3.fromRGB(20, 20, 20),
	darkGray = Color3.fromRGB(26, 26, 26),
	grayLight = Color3.fromRGB(40, 40, 40),
	grayBorder = Color3.fromRGB(45, 45, 45),
	grayLighter = Color3.fromRGB(150, 150, 150),
	grayStroke = Color3.fromRGB(60, 60, 60),
	grayDark = Color3.fromRGB(34, 34, 34),
	grayMed = Color3.fromRGB(50, 50, 50),
	grayStatus = Color3.fromRGB(50, 50, 50),
	white = Color3.fromRGB(255, 255, 255),
	spotifyGreen = Color3.fromRGB(36, 143, 86),
	spotifyGreenLight = Color3.fromRGB(40, 150, 90),
	success = Color3.fromRGB(100, 200, 100),
	successPlay = Color3.fromRGB(29, 185, 84),
	warning = Color3.fromRGB(200, 200, 100),
	error = Color3.fromRGB(200, 100, 100),
	yellow = Color3.fromRGB(180, 180, 60),
	red = Color3.fromRGB(200, 80, 80),
	darkRed = Color3.fromRGB(180, 80, 80),
	discordBlue = Color3.fromRGB(88, 101, 242),
	lightGray = Color3.fromRGB(220, 220, 220),
	appleMusicRed = Color3.fromRGB(250, 34, 52),
}

local SIZES = {
	mainWidth = 500,
	mainHeight = 350,
	headerHeight = 42,
	inputHeight = 30,
	buttonHeight = 35,
	cornerRadius = 12,
	cornerRadiusBtn = 6,
	padding = 10,
}

local CONFIG = {
	whitelist = {"lolwhenme"},
	pythonServer = "http://localhost:5000",
	chatRateLimit = 5,
}

local ENDPOINTS = {
	health = "/health",
	spotifyFetch = "/spotify/fetch",
	youtubeFetch = "/youtube/fetch",
	appleFetch = "/apple/fetch",

	play = "/play",
	pause = "/pause",
	resume = "/resume",
	stop = "/stop",
	status = "/status",
	search = "/search",
}

local QUEUE_ITEM = {
	height = 56,
	offset = 61,
	spacing = 8,
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpotifyMusicBot"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, SIZES.mainWidth, 0, SIZES.mainHeight)
mainFrame.Position = UDim2.new(0.5, -SIZES.mainWidth/2, 0.5, -SIZES.mainHeight/2)
mainFrame.BackgroundColor3 = COLORS.darkGray
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui
local mainCorner = Instance.new("UICorner", mainFrame)
mainCorner.CornerRadius = UDim.new(0, SIZES.cornerRadius)
local mainStroke = Instance.new("UIStroke", mainFrame)
mainStroke.Color = COLORS.grayBorder
mainStroke.Transparency = 0.7
mainStroke.Thickness = 1

local mainGrad = Instance.new("UIGradient", mainFrame)
mainGrad.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(28,28,28)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(22,22,22))
}
mainGrad.Rotation = 90

local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(1, 0, 0, SIZES.headerHeight)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundTransparency = 0
header.BackgroundColor3 = COLORS.spotifyGreen
header.BorderSizePixel = 0
header.Parent = mainFrame
local headerCorner = Instance.new("UICorner", header)
headerCorner.CornerRadius = UDim.new(0, SIZES.cornerRadius)
local headerLabel = Instance.new("TextLabel", header)
headerLabel.Size = UDim2.new(1, 0, 1, 0)
headerLabel.BackgroundTransparency = 1
headerLabel.Text = "🎵 Spotify Music Bot"
headerLabel.TextColor3 = COLORS.white
headerLabel.Font = Enum.Font.GothamBold
headerLabel.TextSize = 18
headerLabel.TextXAlignment = Enum.TextXAlignment.Center
headerLabel.TextYAlignment = Enum.TextYAlignment.Center

local inputLabel = Instance.new("TextLabel")
inputLabel.Name = "InputLabel"
inputLabel.Size = UDim2.new(0.65, -10, 0, 20)
inputLabel.Position = UDim2.new(0, SIZES.padding, 0, SIZES.headerHeight + 20)
inputLabel.BackgroundTransparency = 1
inputLabel.Text = "Enter Spotify Link:"
inputLabel.TextColor3 = COLORS.grayLighter
inputLabel.TextSize = 14
inputLabel.TextXAlignment = Enum.TextXAlignment.Left
inputLabel.Font = Enum.Font.Gotham
inputLabel.Parent = mainFrame

local modeButton = Instance.new("TextButton")
modeButton.Name = "ModeButton"
modeButton.Size = UDim2.new(0.35, -5, 0, 20)
modeButton.Position = UDim2.new(0.65, 0, 0, SIZES.headerHeight + 20)
modeButton.BackgroundColor3 = COLORS.spotifyGreen
modeButton.TextColor3 = COLORS.white
modeButton.Text = "Spotify"
modeButton.TextSize = 12
modeButton.Font = Enum.Font.GothamBold
modeButton.BorderSizePixel = 0
modeButton.Parent = mainFrame
local modeCorner = Instance.new("UICorner", modeButton)
modeCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)

local inputBox = Instance.new("TextBox")
inputBox.Name = "InputBox"
inputBox.Size = UDim2.new(1, -20, 0, SIZES.inputHeight)
inputBox.Position = UDim2.new(0, SIZES.padding, 0, SIZES.headerHeight + 45)
inputBox.BackgroundColor3 = COLORS.grayLight
inputBox.TextColor3 = COLORS.white
inputBox.Text = ""
inputBox.PlaceholderText = "https://open.spotify.com/track/..."
inputBox.TextSize = 12
inputBox.Font = Enum.Font.Gotham
inputBox.BorderSizePixel = 1
inputBox.BorderColor3 = COLORS.grayMed
inputBox.Parent = mainFrame

local loadButton = Instance.new("TextButton")
loadButton.Name = "LoadButton"
loadButton.Size = UDim2.new(1, -20, 0, SIZES.buttonHeight)
loadButton.Position = UDim2.new(0, SIZES.padding, 0, SIZES.headerHeight + 80)
loadButton.BackgroundColor3 = COLORS.successPlay
loadButton.TextColor3 = COLORS.white
loadButton.Text = "Load Song"
loadButton.TextSize = 14
loadButton.Font = Enum.Font.GothamBold
loadButton.BorderSizePixel = 0
loadButton.Parent = mainFrame
local loadCorner = Instance.new("UICorner", loadButton)
loadCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)

local infoFrame = Instance.new("Frame")
infoFrame.Name = "InfoFrame"
infoFrame.Size = UDim2.new(1, -20, 0, 120)
infoFrame.Position = UDim2.new(0, SIZES.padding, 0, SIZES.headerHeight + 125)
infoFrame.BackgroundColor3 = COLORS.grayLight
infoFrame.BorderSizePixel = 1
infoFrame.BorderColor3 = COLORS.grayMed
infoFrame.Parent = mainFrame



local songTitle = Instance.new("TextLabel")
songTitle.Name = "SongTitle"
songTitle.Size = UDim2.new(1, -110, 0, 40)
songTitle.Position = UDim2.new(0, 100, 0, 10)
songTitle.BackgroundTransparency = 1
songTitle.Text = "No song loaded"
songTitle.TextColor3 = COLORS.white
songTitle.TextSize = 14
songTitle.Font = Enum.Font.GothamSemibold
songTitle.TextXAlignment = Enum.TextXAlignment.Left
songTitle.TextWrapped = true
songTitle.Parent = infoFrame

local songArtist = Instance.new("TextLabel")
songArtist.Name = "SongArtist"
songArtist.Size = UDim2.new(1, -110, 0, 40)
songArtist.Position = UDim2.new(0, 100, 0, 50)
songArtist.BackgroundTransparency = 1
songArtist.Text = "Artist unknown"
songArtist.TextColor3 = COLORS.grayLighter
songArtist.TextSize = 12
songArtist.Font = Enum.Font.Gotham
songArtist.TextXAlignment = Enum.TextXAlignment.Left
songArtist.TextWrapped = true
songArtist.Parent = infoFrame

local playButton = Instance.new("TextButton")
playButton.Name = "PlayButton"
playButton.Size = UDim2.new(0.6, -10, 0, SIZES.buttonHeight)
playButton.Position = UDim2.new(0, SIZES.padding, 0, SIZES.mainHeight - SIZES.buttonHeight - SIZES.padding)
playButton.BackgroundColor3 = COLORS.grayMed
playButton.TextColor3 = COLORS.white
playButton.Text = "▶ Play"
playButton.TextSize = 14
playButton.Font = Enum.Font.GothamBold
playButton.BorderSizePixel = 0
playButton.Parent = mainFrame
playButton.Visible = false
local playCorner = Instance.new("UICorner", playButton)
playCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)



local pauseButton = Instance.new("TextButton")
pauseButton.Name = "PauseButton"
pauseButton.Size = UDim2.new(0.2, -5, 0, SIZES.buttonHeight)
pauseButton.Position = UDim2.new(0.6, 0, 0, SIZES.mainHeight - SIZES.buttonHeight - SIZES.padding)
pauseButton.BackgroundColor3 = COLORS.yellow
pauseButton.TextColor3 = COLORS.white
pauseButton.Text = "⏸ Pause"
pauseButton.TextSize = 14
pauseButton.Font = Enum.Font.GothamBold
pauseButton.BorderSizePixel = 0
pauseButton.Parent = mainFrame
pauseButton.Visible = false
local pauseCorner = Instance.new("UICorner", pauseButton)
pauseCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)

local stopButton = Instance.new("TextButton")
stopButton.Name = "StopButton"
stopButton.Size = UDim2.new(0.2, -5, 0, SIZES.buttonHeight)
stopButton.Position = UDim2.new(0.8, 0, 0, SIZES.mainHeight - SIZES.buttonHeight - SIZES.padding)
stopButton.BackgroundColor3 = COLORS.red
stopButton.TextColor3 = COLORS.white
stopButton.Text = "⏹ Stop"
stopButton.TextSize = 14
stopButton.Font = Enum.Font.GothamBold
stopButton.BorderSizePixel = 0
stopButton.Parent = mainFrame
stopButton.Visible = false
local stopCorner = Instance.new("UICorner", stopButton)
stopCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)

local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "Status"
statusLabel.Size = UDim2.new(1, 0, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 1, -20)
statusLabel.BackgroundColor3 = COLORS.grayStatus
statusLabel.TextColor3 = COLORS.success
statusLabel.Text = "Ready"
statusLabel.TextSize = 10
statusLabel.Font = Enum.Font.Gotham
statusLabel.BorderSizePixel = 0
statusLabel.Parent = mainFrame

local currentSongData = nil
local pythonRunning = false
local songQueue = {}
local isPlaying = false
local isPaused = false
local playbackThread = nil
local serviceMode = "spotify"



local function isPlayerWhitelisted(playerName)
	for _, whitelistedName in ipairs(CONFIG.whitelist) do
		if whitelistedName:lower() == playerName:lower() then
			return true
		end
	end
	return false
end

local function isSpotifyLink(link)
	return link:find("spotify.com") ~= nil and link:find("track") ~= nil
end

local function isYouTubeLink(link)
	return link:find("youtube.com") ~= nil or link:find("youtu.be") ~= nil
end

local function isAppleMusicLink(link)
	return link:find("music.apple.com") ~= nil
end

local function validateLink(link, mode)
	link = tostring(link):match("^%s*(.-)%s*$") or ""
	if link == "" then return false end
	if mode == "spotify" then
		return isSpotifyLink(link)
	elseif mode == "youtube" then
		return isYouTubeLink(link)
	elseif mode == "apple" then
		return isAppleMusicLink(link)
	end
	return false
end

local function encodeUrl(url)
	return HttpService:UrlEncode(url)
end

local function debounce(func, delay)
	local lastCall = 0
	return function(...)
		local now = tick()
		if now - lastCall >= delay then
			lastCall = now
			func(...)
		end
	end
end

local function createDebouncedButton(button, callback, delay)
	local debounced = debounce(callback, delay or 0.3)
	button.MouseButton1Click:Connect(debounced)
end

local function setStatus(text, color)
	statusLabel.Text = text
	statusLabel.TextColor3 = color or COLORS.success
end

local function switchServiceMode(newMode)
	if newMode == "spotify" then
		serviceMode = "spotify"
		modeButton.Text = "Spotify"
		modeButton.BackgroundColor3 = COLORS.spotifyGreen
		inputLabel.Text = "Enter Spotify Link:"
		inputBox.PlaceholderText = "https://open.spotify.com/track/..."
		headerLabel.Text = "🎵 Spotify Music Bot"
	elseif newMode == "youtube" then
		serviceMode = "youtube"
		modeButton.Text = "YouTube"
		modeButton.BackgroundColor3 = COLORS.red
		inputLabel.Text = "Enter YouTube Link:"
		inputBox.PlaceholderText = "https://www.youtube.com/watch?v=..."
		headerLabel.Text = "🎵 YouTube Music Bot"
	elseif newMode == "apple" then
		serviceMode = "apple"
		modeButton.Text = "Apple"
		modeButton.BackgroundColor3 = COLORS.appleMusicRed
		inputLabel.Text = "Enter Apple Music Link:"
		inputBox.PlaceholderText = "https://music.apple.com/us/song/..."
		headerLabel.Text = "🎵 Apple Music Bot"
	end
	inputBox.Text = ""
	setStatus("✓ Switched to " .. serviceMode:sub(1,1):upper() .. serviceMode:sub(2), COLORS.success)
end

local dragging = false
local dragStart = nil
local frameStart = nil

mainFrame.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		frameStart = mainFrame.Position
	end
end)

mainFrame.InputEnded:Connect(function(input, gameProcessed)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

UserInputService.InputChanged:Connect(function(input, gameProcessed)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		mainFrame.Position = frameStart + UDim2.new(0, delta.X, 0, delta.Y)
	end
end)

local queueFrame = Instance.new("Frame")
queueFrame.Name = "QueueFrame"
queueFrame.Size = UDim2.new(0, 320, 0, 260)
queueFrame.Position = UDim2.new(0.5, 260, 0.5, -175)
queueFrame.BackgroundColor3 = Color3.fromRGB(28,28,28)
queueFrame.BorderSizePixel = 0
queueFrame.Parent = screenGui
queueFrame.Visible = false

local queueTitle = Instance.new("TextLabel")
queueTitle.Name = "QueueTitle"
queueTitle.Size = UDim2.new(1, 0, 0, 36)
queueTitle.Text = "📋 Queue"
queueTitle.Font = Enum.Font.GothamBold
queueTitle.TextSize = 14
queueTitle.BackgroundColor3 = Color3.fromRGB(40,150,90)
queueTitle.TextColor3 = Color3.fromRGB(255,255,255)
queueTitle.BorderSizePixel = 0
queueTitle.TextXAlignment = Enum.TextXAlignment.Center
queueTitle.Parent = queueFrame

local queueList = Instance.new("ScrollingFrame")
queueList.Name = "QueueList"
queueList.Size = UDim2.new(1, 0, 1, -30)
queueList.Position = UDim2.new(0, 0, 0, 30)
queueList.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
queueList.BorderSizePixel = 0
queueList.ScrollBarThickness = 5
queueList.CanvasSize = UDim2.new(0, 0, 0, 0)
queueList.Parent = queueFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.Parent = queueList

local queueButton = Instance.new("TextButton")
queueButton.Name = "QueueButton"
queueButton.Size = UDim2.new(0.3, -5, 0, 30)
queueButton.Position = UDim2.new(0.7, 0, 0, SIZES.headerHeight + 80)
queueButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
queueButton.TextColor3 = COLORS.white
queueButton.Text = "📋 Queue"
queueButton.TextSize = 12
queueButton.Font = Enum.Font.GothamBold
queueButton.BorderSizePixel = 0
queueButton.Parent = mainFrame
local queueCorner = Instance.new("UICorner", queueButton)
queueCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)

local creditsButton = Instance.new("TextButton")
creditsButton.Name = "CreditsButton"
creditsButton.Size = UDim2.new(0, 32, 0, 32)
creditsButton.Position = UDim2.new(1, -42, 0.5, -16)
creditsButton.BackgroundColor3 = COLORS.spotifyGreen
creditsButton.TextColor3 = COLORS.white
creditsButton.Text = "ℹ️"
creditsButton.TextSize = 16
creditsButton.Font = Enum.Font.GothamBold
creditsButton.BorderSizePixel = 0
creditsButton.Parent = header
local creditsCorner = Instance.new("UICorner", creditsButton)
creditsCorner.CornerRadius = UDim.new(0, SIZES.cornerRadiusBtn)
local creditsButtonStroke = Instance.new("UIStroke", creditsButton)
creditsButtonStroke.Color = COLORS.spotifyGreenLight
creditsButtonStroke.Thickness = 0
creditsButton.MouseButton1Down:Connect(function()
	creditsButtonStroke.Thickness = 1
end)
creditsButton.MouseButton1Up:Connect(function()
	creditsButtonStroke.Thickness = 0
end)

local creditsModal = Instance.new("Frame")
creditsModal.Name = "CreditsModal"
creditsModal.Size = UDim2.new(0, 420, 0, 380)
creditsModal.Position = UDim2.new(0.5, -210, 0.5, -190)
creditsModal.BackgroundColor3 = COLORS.dark
creditsModal.BorderSizePixel = 0
creditsModal.Parent = screenGui
creditsModal.Visible = false
creditsModal.ZIndex = 100

local creditsCornerBg = Instance.new("UICorner", creditsModal)
creditsCornerBg.CornerRadius = UDim.new(0, SIZES.cornerRadius)
local creditsStrokeBg = Instance.new("UIStroke", creditsModal)
creditsStrokeBg.Color = COLORS.grayBorder
creditsStrokeBg.Transparency = 0.5
creditsStrokeBg.Thickness = 1

local creditsBgGrad = Instance.new("UIGradient", creditsModal)
creditsBgGrad.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(24,24,24)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(18,18,18))
}
creditsBgGrad.Rotation = 90

local creditsHeader = Instance.new("Frame", creditsModal)
creditsHeader.Name = "Header"
creditsHeader.Size = UDim2.new(1, 0, 0, 60)
creditsHeader.BackgroundColor3 = COLORS.spotifyGreen
creditsHeader.BorderSizePixel = 0
local creditsHeaderCorner = Instance.new("UICorner", creditsHeader)
creditsHeaderCorner.CornerRadius = UDim.new(0, SIZES.cornerRadius)
creditsHeader.ZIndex = 101

local headerGrad = Instance.new("UIGradient", creditsHeader)
headerGrad.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(40,160,100)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(30,130,80))
}
headerGrad.Rotation = 90

local creditsHeaderLabel = Instance.new("TextLabel", creditsHeader)
creditsHeaderLabel.Size = UDim2.new(1, -50, 1, 0)
creditsHeaderLabel.BackgroundTransparency = 1
creditsHeaderLabel.Text = "🎵 Credits & Info"
creditsHeaderLabel.TextColor3 = COLORS.white
creditsHeaderLabel.Font = Enum.Font.GothamBold
creditsHeaderLabel.TextSize = 22
creditsHeaderLabel.TextXAlignment = Enum.TextXAlignment.Center
creditsHeaderLabel.TextYAlignment = Enum.TextYAlignment.Center
creditsHeaderLabel.ZIndex = 102

local closeBtn = Instance.new("TextButton", creditsHeader)
closeBtn.Name = "CloseBtn"
closeBtn.Size = UDim2.new(0, 36, 0, 36)
closeBtn.Position = UDim2.new(1, -44, 0.5, -18)
closeBtn.BackgroundColor3 = COLORS.red
closeBtn.TextColor3 = COLORS.white
closeBtn.Text = "✕"
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 16
local closeBtnCorner = Instance.new("UICorner", closeBtn)
closeBtnCorner.CornerRadius = UDim.new(0, 6)
local closeBtnStroke = Instance.new("UIStroke", closeBtn)
closeBtnStroke.Color = COLORS.darkRed
closeBtnStroke.Thickness = 1
closeBtn.ZIndex = 102
closeBtn.MouseButton1Down:Connect(function()
	closeBtn.BackgroundColor3 = Color3.fromRGB(220, 100, 100)
end)
closeBtn.MouseButton1Up:Connect(function()
	closeBtn.BackgroundColor3 = COLORS.red
end)

local creditsContent = Instance.new("Frame", creditsModal)
creditsContent.Name = "Content"
creditsContent.Size = UDim2.new(1, -30, 1, -80)
creditsContent.Position = UDim2.new(0, 15, 0, 65)
creditsContent.BackgroundTransparency = 1
creditsContent.ZIndex = 101

local contentLayout = Instance.new("UIListLayout", creditsContent)
contentLayout.Padding = UDim.new(0, 20)
contentLayout.FillDirection = Enum.FillDirection.Vertical
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder

local titleSection = Instance.new("Frame", creditsContent)
titleSection.Name = "TitleSection"
titleSection.Size = UDim2.new(1, 0, 0, 65)
titleSection.BackgroundTransparency = 1
titleSection.LayoutOrder = 1
titleSection.ZIndex = 101

local titleIcon = Instance.new("TextLabel", titleSection)
titleIcon.Size = UDim2.new(1, 0, 0.6, 0)
titleIcon.BackgroundTransparency = 1
titleIcon.Text = "🎸 boggle.cc"
titleIcon.TextColor3 = COLORS.spotifyGreen
titleIcon.Font = Enum.Font.GothamBold
titleIcon.TextSize = 20
titleIcon.TextXAlignment = Enum.TextXAlignment.Center
titleIcon.TextYAlignment = Enum.TextYAlignment.Bottom
titleIcon.ZIndex = 101

local versionLabel = Instance.new("TextLabel", titleSection)
versionLabel.Size = UDim2.new(1, 0, 0.4, 0)
versionLabel.Position = UDim2.new(0, 0, 0.6, 0)
versionLabel.BackgroundTransparency = 1
versionLabel.Text = "v2.1 (discontinued)"
versionLabel.TextColor3 = COLORS.grayLighter
versionLabel.Font = Enum.Font.Gotham
versionLabel.TextSize = 10
versionLabel.TextXAlignment = Enum.TextXAlignment.Center
versionLabel.TextYAlignment = Enum.TextYAlignment.Top
versionLabel.ZIndex = 101

local creatorSection = Instance.new("Frame", creditsContent)
creatorSection.Name = "CreatorSection"
creatorSection.Size = UDim2.new(1, 0, 0, 50)
creatorSection.BackgroundColor3 = COLORS.grayLight
creatorSection.BorderSizePixel = 0
creatorSection.LayoutOrder = 2
local creatorCorner = Instance.new("UICorner", creatorSection)
creatorCorner.CornerRadius = UDim.new(0, 8)
local creatorStroke = Instance.new("UIStroke", creatorSection)
creatorStroke.Color = COLORS.grayStroke
creatorStroke.Thickness = 1

local creatorLabel = Instance.new("TextLabel", creatorSection)
creatorLabel.Size = UDim2.new(1, -20, 0.5, 0)
creatorLabel.Position = UDim2.new(0, 10, 0, 5)
creatorLabel.BackgroundTransparency = 1
creatorLabel.Text = "Created by"
creatorLabel.TextColor3 = COLORS.grayLighter
creatorLabel.Font = Enum.Font.Gotham
creatorLabel.TextSize = 11
creatorLabel.TextXAlignment = Enum.TextXAlignment.Left
creatorLabel.ZIndex = 101

local creatorName = Instance.new("TextLabel", creatorSection)
creatorName.Size = UDim2.new(1, -20, 0.5, 0)
creatorName.Position = UDim2.new(0, 10, 0.5, 0)
creatorName.BackgroundTransparency = 1
creatorName.Text = "👨‍💻 borthdayzz"
creatorName.TextColor3 = COLORS.white
creatorName.Font = Enum.Font.GothamBold
creatorName.TextSize = 14
creatorName.TextXAlignment = Enum.TextXAlignment.Left
creatorName.ZIndex = 101

local descSection = Instance.new("Frame", creditsContent)
descSection.Name = "DescSection"
descSection.Size = UDim2.new(1, 0, 0, 60)
descSection.BackgroundColor3 = COLORS.grayLight
descSection.BorderSizePixel = 0
descSection.LayoutOrder = 3
local descCorner = Instance.new("UICorner", descSection)
descCorner.CornerRadius = UDim.new(0, 8)
local descStroke = Instance.new("UIStroke", descSection)
descStroke.Color = COLORS.grayStroke
descStroke.Thickness = 1

local descText = Instance.new("TextLabel", descSection)
descText.Size = UDim2.new(1, -20, 1, -10)
descText.Position = UDim2.new(0, 10, 0, 5)
descText.BackgroundTransparency = 1
descText.Text = "Spotify Music Bot integration for Roblox voice chat. Share your music with your friends!"
descText.TextColor3 = COLORS.grayLighter
descText.Font = Enum.Font.Gotham
descText.TextSize = 12
descText.TextWrapped = true
descText.TextYAlignment = Enum.TextYAlignment.Top
descText.ZIndex = 101

local communitySection = Instance.new("Frame", creditsContent)
communitySection.Name = "CommunitySection"
communitySection.Size = UDim2.new(1, 0, 0, 60)
communitySection.BackgroundColor3 = COLORS.discordBlue
communitySection.BorderSizePixel = 0
communitySection.LayoutOrder = 4
local communityCorner = Instance.new("UICorner", communitySection)
communityCorner.CornerRadius = UDim.new(0, 8)

local discordLabel = Instance.new("TextLabel", communitySection)
discordLabel.Size = UDim2.new(1, -20, 0.4, 0)
discordLabel.Position = UDim2.new(0, 10, 0, 8)
discordLabel.BackgroundTransparency = 1
discordLabel.Text = "Join Community"
discordLabel.TextColor3 = COLORS.lightGray
discordLabel.Font = Enum.Font.Gotham
discordLabel.TextSize = 11
discordLabel.TextXAlignment = Enum.TextXAlignment.Left
discordLabel.ZIndex = 101

local discordLink = Instance.new("TextLabel", communitySection)
discordLink.Size = UDim2.new(1, -20, 0.6, 0)
discordLink.Position = UDim2.new(0, 10, 0.4, 0)
discordLink.BackgroundTransparency = 1
discordLink.Text = "🔗 discord.gg/NCEfg4rKPC"
discordLink.TextColor3 = COLORS.white
discordLink.Font = Enum.Font.GothamBold
discordLink.TextSize = 13
discordLink.TextXAlignment = Enum.TextXAlignment.Left
discordLink.ZIndex = 101

closeBtn.MouseButton1Click:Connect(function()
	creditsModal.Visible = false
end)

creditsButton.MouseButton1Click:Connect(function()
	creditsModal.Visible = not creditsModal.Visible
end)


local function addToQueue(songData)
	table.insert(songQueue, songData)
	updateQueueUI()
end

local function updateQueueUI()
	for _, child in ipairs(queueList:GetChildren()) do
		if child:IsA("Frame") then
			child:Destroy()
		end
	end
	
	for i, song in ipairs(songQueue) do
		local queueItem = Instance.new("Frame")
		queueItem.Size = UDim2.new(1, -16, 0, QUEUE_ITEM.height)
		queueItem.Position = UDim2.new(0, QUEUE_ITEM.spacing, 0, (i-1)*QUEUE_ITEM.offset + QUEUE_ITEM.spacing)
		queueItem.BackgroundColor3 = COLORS.grayDark
		queueItem.BorderSizePixel = 0
		queueItem.Parent = queueList
		
		local itemCorner = Instance.new("UICorner", queueItem)
		itemCorner.CornerRadius = UDim.new(0, 8)
		local itemStroke = Instance.new("UIStroke", queueItem)
		itemStroke.Color = COLORS.grayMed
		itemStroke.Transparency = 0.7
		itemStroke.Thickness = 1
		

		
		local itemTitle = Instance.new("TextLabel", queueItem)
		itemTitle.Size = UDim2.new(1, -10, 0, 26)
		itemTitle.Position = UDim2.new(0, 8, 0, 6)
		itemTitle.BackgroundTransparency = 1
		itemTitle.Text = song.title
		itemTitle.TextColor3 = Color3.fromRGB(240,240,240)
		itemTitle.TextSize = 12
		itemTitle.Font = Enum.Font.GothamSemibold
		itemTitle.TextXAlignment = Enum.TextXAlignment.Left
		itemTitle.TextTruncate = Enum.TextTruncate.AtEnd
		
		local itemArtist = Instance.new("TextLabel", queueItem)
		itemArtist.Size = UDim2.new(1, -10, 0, 18)
		itemArtist.Position = UDim2.new(0, 8, 0, 30)
		itemArtist.BackgroundTransparency = 1
		itemArtist.Text = song.artist
		itemArtist.TextColor3 = Color3.fromRGB(170,170,170)
		itemArtist.TextSize = 10
		itemArtist.Font = Enum.Font.Gotham
		itemArtist.TextXAlignment = Enum.TextXAlignment.Left
		
		local removeBtn = Instance.new("TextButton", queueItem)
		removeBtn.Size = UDim2.new(0, 36, 0, 36)
		removeBtn.Position = UDim2.new(1, -44, 0, 10)
		removeBtn.BackgroundColor3 = Color3.fromRGB(180,80,80)
		removeBtn.TextColor3 = Color3.fromRGB(255,255,255)
		removeBtn.Text = "✕"
		removeBtn.Font = Enum.Font.GothamBold
		removeBtn.TextSize = 14
		local remCorner = Instance.new("UICorner", removeBtn)
		remCorner.CornerRadius = UDim.new(0,6)
		removeBtn.MouseButton1Click:Connect(function()
			table.remove(songQueue, i)
			updateQueueUI()
		end)
	end

	queueList.CanvasSize = UDim2.new(0, 0, 0, #songQueue * 66)
	queueFrame.Visible = #songQueue > 0
end

local playbackMonitor = nil

local function isPythonServerRunning()
	local ok, res = pcall(function()
		return game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.health)
	end)
	if not ok or not res then
		return false
	end
	local success, data = pcall(function()
		return HttpService:JSONDecode(res)
	end)
	if success and type(data) == "table" and data.status == "ok" then
		return true
	end
	return false
end

local function startPlaybackMonitor()
	if playbackMonitor then return end
	playbackMonitor = task.spawn(function()
		while true do
			if not isPlaying then
				break
			end

			local ok, res = pcall(function()
				return game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.status)
			end)

			if not ok or not res then
				break
			end

			local statusData
			local decodeOk = pcall(function()
				statusData = HttpService:JSONDecode(res)
			end)

			local status = nil
			if decodeOk and type(statusData) == "table" then
				status = statusData.status
			end

			if status == "finished" or status == "stopped" then
				isPlaying = false
				isPaused = false
				playButton.Text = "▶ Play"
				playButton.Visible = true
				pauseButton.Visible = false
				stopButton.Visible = false
				task.wait(0.5)
				if #songQueue > 0 then
					playNextInQueue()
				else
					setStatus("✓ Queue finished", COLORS.success)
				end
				break
			end

			task.wait(1)
		end
		playbackMonitor = nil
	end)
end

local function playNextInQueue()
	if #songQueue > 0 then
		local nextSong = table.remove(songQueue, 1)
		updateQueueUI()
		currentSongData = nextSong
		songTitle.Text = nextSong.title
		songArtist.Text = nextSong.artist
		setStatus("🎵 Playing: " .. nextSong.title, COLORS.success)

		local success = pcall(function()
			game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.play .. "?path=" .. encodeUrl(nextSong.path))
		end)

		if success then
			isPlaying = true
			isPaused = false
			playButton.Visible = false
			pauseButton.Visible = true
			stopButton.Visible = true
			startPlaybackMonitor()
		else
			setStatus("✗ Failed to play song", COLORS.error)
			isPlaying = false
			playButton.Text = "▶ Play"
			playButton.Visible = true
			pauseButton.Visible = false
			stopButton.Visible = false
		end
	else
		isPlaying = false
		isPaused = false
		playButton.Text = "▶ Play"
		playButton.Visible = true
		pauseButton.Visible = false
		stopButton.Visible = false
		setStatus("✓ Queue finished", COLORS.success)
	end
end

local function callPythonBackend(link)
	link = tostring(link):match("^%s*(.-)%s*$") or ""
	if link == "" then
		setStatus("✗ Enter a link", COLORS.error)
		return false
	end
	
	setStatus("⏳ Fetching song data...", COLORS.warning)
	
	if not validateLink(link, serviceMode) then
		if serviceMode == "spotify" then
			setStatus("✗ Invalid Spotify link", COLORS.error)
		elseif serviceMode == "youtube" then
			setStatus("✗ Invalid YouTube link", COLORS.error)
		elseif serviceMode == "apple" then
			setStatus("✗ Invalid Apple Music link", COLORS.error)
		end
		return false
	end
	
	local endpoint = ENDPOINTS.spotifyFetch .. "?link=" .. encodeUrl(link)
	if serviceMode == "youtube" then
		endpoint = ENDPOINTS.youtubeFetch .. "?link=" .. encodeUrl(link)
	elseif serviceMode == "apple" then
		endpoint = ENDPOINTS.appleFetch .. "?link=" .. encodeUrl(link)
	end
	
	local success, result = pcall(function()
		local response = game:HttpGet(CONFIG.pythonServer .. endpoint)
		return response
	end)
	
	if success and result then
		local songData = HttpService:JSONDecode(result)
		
		if songData and not songData.error then
			songTitle.Text = songData.title or "Unknown Title"
			songArtist.Text = songData.artist or "Unknown Artist"
			
			print("Song data received:", HttpService:JSONEncode(songData))
			

			
			if isPlaying then
				addToQueue(songData)
				setStatus("✓ Song added to queue", COLORS.success)
			else
				currentSongData = songData
				playButton.Visible = true
				pauseButton.Visible = false
				stopButton.Visible = false
				setStatus("✓ Song loaded (ready to play)", COLORS.success)
			end
			
			return true
		else
			setStatus("✗ " .. (songData.error or "Failed to load song"), COLORS.error)
			return false
		end
	else
		setStatus("✗ Python server not responding", COLORS.error)
		return false
	end
end

local function playSong()
	if not currentSongData then
		setStatus("✗ No song loaded", COLORS.error)
		return
	end

	if not isPythonServerRunning() then
		setStatus("Python script is not open!", COLORS.error)
		return
	end

	if isPaused then
		isPaused = false
		isPlaying = true
		playButton.Visible = false
		pauseButton.Visible = true
		stopButton.Visible = true
		setStatus("🎵 Resumed: " .. currentSongData.title, COLORS.success)

		local success = pcall(function()
			game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.resume)
		end)

		if not success then
			setStatus("✗ Failed to resume", COLORS.error)
			isPaused = true
			playButton.Visible = true
			pauseButton.Visible = false
		else
			startPlaybackMonitor()
		end
		return
	end

	isPlaying = true
	isPaused = false
	playButton.Visible = false
	pauseButton.Visible = true
	stopButton.Visible = true
	setStatus("🎵 Playing: " .. currentSongData.title, COLORS.success)

	local success = pcall(function()
		game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.play .. "?path=" .. encodeUrl(currentSongData.path))
	end)

	if not success then
		setStatus("✗ Failed to play song", COLORS.error)
		isPlaying = false
		isPaused = false
		playButton.Visible = true
		pauseButton.Visible = false
		stopButton.Visible = false
	else
		startPlaybackMonitor()
	end
end

local function pauseSong()
	if not isPlaying or isPaused then
		return
	end
	
	isPaused = true
	isPlaying = false
	playButton.Visible = true
	playButton.Text = "▶ Resume"
	pauseButton.Visible = false
	stopButton.Visible = true
	setStatus("⏸ Paused: " .. (currentSongData and currentSongData.title or ""), COLORS.warning)
	
	local success = pcall(function()
		game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.pause)
	end)
	
	if not success then
		setStatus("✗ Failed to pause", COLORS.error)
		isPaused = false
		playButton.Visible = false
		pauseButton.Visible = true
	end
end

local function stopSong()
	pcall(function()
		game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.stop)
	end)

	isPlaying = false
	isPaused = false
	currentSongData = nil
	playButton.Text = "▶ Play"
	playButton.Visible = false
	pauseButton.Visible = false
	stopButton.Visible = false

	songTitle.Text = "No song loaded"
	songArtist.Text = "Artist unknown"

	setStatus("✓ Stopped", COLORS.success)
end

local function skipSong()
	pcall(function()
		game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.stop)
	end)

	task.wait(0.2)

	if #songQueue > 0 then
		setStatus("⏭ Skipping to next song...", COLORS.success)
		playNextInQueue()
		pcall(function()
			safeSendChat("⏭ Skipped to next song.")
		end)
	else
		stopSong()
		pcall(function()
			safeSendChat("⏭ Skipped: no more songs, stopped playback.")
		end)
	end
end

local function searchAndPlaySong(songName)
	if not isPythonServerRunning() then
		setStatus("Python script is not open!", COLORS.error)
		return
	end
	
	setStatus("Finding " .. songName .. "... Please wait.", COLORS.warning)
	
	local success, result = pcall(function()
		return game:HttpGet(CONFIG.pythonServer .. ENDPOINTS.search .. "?query=" .. encodeUrl(songName))
	end)
	
	if not success or not result then
		setStatus("✗ Failed to search for song", COLORS.error)
		return
	end
	
	local searchData
	local decodeOk = pcall(function()
		searchData = HttpService:JSONDecode(result)
	end)
	
	if not decodeOk or not searchData or searchData.error then
		setStatus("✗ Song not found", COLORS.error)
		pcall(function()
			safeSendChat("Song not found!")
		end)
		return
	end
	
	currentSongData = searchData
	songTitle.Text = searchData.title or "Unknown Title"
	songArtist.Text = searchData.artist or "Unknown Artist"
	
	playButton.Visible = true
	setStatus("Found the song! Playing Now...", COLORS.success)
	pcall(function()
		safeSendChat("Found the song! Playing Now...")
	end)
	
	task.wait(0.5)
	playSong()
end

loadButton.MouseButton1Click:Connect(function()
	callPythonBackend(inputBox.Text)
end)

modeButton.MouseButton1Click:Connect(function()
	if serviceMode == "spotify" then
		switchServiceMode("youtube")
	elseif serviceMode == "youtube" then
		switchServiceMode("apple")
	else
		switchServiceMode("spotify")
	end
end)

playButton.MouseButton1Click:Connect(function()
	if not isPythonServerRunning() then
		setStatus("Python script is not open!", COLORS.error)
		return
	end
	playSong()
end)

local pauseDebounce = false
pauseButton.MouseButton1Click:Connect(function()
	if pauseDebounce then return end
	pauseDebounce = true
	if not isPythonServerRunning() then
		setStatus("Python script is not open!", COLORS.error)
		pauseDebounce = false
		return
	end
	pauseSong()
	task.wait(0.3)
	pauseDebounce = false
end)

local stopDebounce = false
stopButton.MouseButton1Click:Connect(function()
	if stopDebounce then return end
	stopDebounce = true
	if not isPythonServerRunning() then
		setStatus("Python script is not open!", COLORS.error)
		stopDebounce = false
		return
	end
	stopSong()
	task.wait(0.3)
	stopDebounce = false
end)

queueButton.MouseButton1Click:Connect(function()
	queueFrame.Visible = not queueFrame.Visible
end)

local lastChatSentAt = 0
local function safeSendChat(message)
	local now = tick()
	if now - lastChatSentAt < CONFIG.chatRateLimit then
		return
	end
	lastChatSentAt = now

	pcall(function()
		local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
		if channel then
			channel:SendAsync(message)
		else
			if ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") and ReplicatedStorage.DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest") then
				ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
			end
		end
	end)
end

local function handleChatCommand(speakerName, message)
	message = message or ""
	message = message:match("^%s*(.-)%s*$") or ""
	local lower = message:lower()

	local function notWhitelisted()
		setStatus("✗ You are not whitelisted for this command!", COLORS.error)
		pcall(function() safeSendChat("You are not whitelisted!") end)
	end

	if lower:sub(1,6) == "!play " or lower == "!play" then
		if not isPlayerWhitelisted(speakerName) then
			notWhitelisted()
			return
		end
		local songName = (message:sub(7) or ""):match("^%s*(.-)%s*$") or ""
		if songName ~= "" then
			pcall(function() safeSendChat("Finding " .. songName .. "... Please wait.") end)
			searchAndPlaySong(songName)
		else
			setStatus("✗ Usage: !play [song name]", COLORS.error)
			pcall(function() safeSendChat("Usage: !play [song name]") end)
		end
	elseif lower == "!stop" then
		if not isPlayerWhitelisted(speakerName) then
			notWhitelisted()
			return
		end
		stopSong()
		pcall(function() safeSendChat("⏹ Playback stopped.") end)
	elseif lower == "!pause" then
		if not isPlayerWhitelisted(speakerName) then
			notWhitelisted()
			return
		end
		pauseSong()
		pcall(function() safeSendChat("⏸ Playback paused.") end)
	elseif lower == "!resume" then
		if not isPlayerWhitelisted(speakerName) then
			notWhitelisted()
			return
		end
		if not isPaused then
			setStatus("✗ No song is paused", COLORS.error)
			pcall(function() safeSendChat("No song is paused.") end)
			return
		end
		playSong()
		pcall(function() safeSendChat("▶ Resumed playback.") end)
	elseif lower == "!skip" then
		if not isPlayerWhitelisted(speakerName) then
			notWhitelisted()
			return
		end
		skipSong()
		pcall(function() safeSendChat("⏭ Skipped to next song.") end)
	end
end

for _, plr in ipairs(Players:GetPlayers()) do
	pcall(function()
		plr.Chatted:Connect(function(msg) handleChatCommand(plr.Name, msg) end)
	end)
end
Players.PlayerAdded:Connect(function(plr)
	pcall(function()
		plr.Chatted:Connect(function(msg) handleChatCommand(plr.Name, msg) end)
	end)
end)

pcall(function()
	if TextChatService and TextChatService.OnIncomingMessage then
		TextChatService.OnIncomingMessage:Connect(function(incomingMsg)
			local text = incomingMsg and (incomingMsg.Text or incomingMsg.Message or "")
			local name = incomingMsg and (incomingMsg.FromSpeaker or incomingMsg.SenderName or (incomingMsg.TextSource and incomingMsg.TextSource.Name) or "")
			if text and name and text ~= "" and name ~= "" then
				handleChatCommand(name, text)
			end
		end)
	end
end)

if isPythonServerRunning() then
	setStatus("✓ Ready!", COLORS.success)
	pythonRunning = true
else
	setStatus("✗ Python server not running (Start: python spotify_server.py)", COLORS.error)
end