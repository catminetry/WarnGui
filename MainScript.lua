local WarnGui = {}

function WarnGui:new(Lable, Index, ID, DelayTime)
local WarnGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local uk = Instance.new("UIStroke")
local sd = Instance.new("Sound")
sd.Parent = game.Workspace
sd.Volume = 1
sd.PlaybackSpeed = 1
sd.SoundId = ID
sd:Play()
	
uk.Parent = Main
uk.Color = Color3.new(0.266667, 0.266667, 0.266667)
uk.Thickness = 3.3
uk.Transparency = 0.5

WarnGui.Name = "WarnGui"
WarnGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
WarnGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = WarnGui
Main.AnchorPoint = Vector2.new(1, 1)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.992935538, 0, 0.982619286, 0)
Main.Size = UDim2.new(0, 272, 0, 100)

MainCorner.Name = "MainCorner"
MainCorner.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.033088237, 0, 0, 0)
Title.Size = UDim2.new(0, 110, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.Text = Lable
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 20.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

Text.Name = "Text"
Text.Parent = Main
Text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.033088237, 0, 0.25, 0)
Text.Size = UDim2.new(0, 255, 0, 66)
Text.Font = Enum.Font.SourceSans
Text.Text = Index
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 14.000
Text.TextWrapped = true
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.TextYAlignment = Enum.TextYAlignment.Top
	
	local function TimeSc() 
		local script = Instance.new('LocalScript', Main)
		wait(DelayTime)
		Main:TweenPosition(UDim2.new(1000, 0, 0.982, 0))
	end
	coroutine.wrap(TimeSc)()
end


return WarnGui
