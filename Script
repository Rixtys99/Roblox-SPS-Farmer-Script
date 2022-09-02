local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.0698280334, 0, 0.885809302, 0)
Frame.Size = UDim2.new(0, 387, 0, 97)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
TextButton.Position = UDim2.new(0.0155038759, 0, 0.0618556701, 0)
TextButton.Size = UDim2.new(0, 373, 0, 82)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Generate Phantom Wolf"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 42.000
TextButton.MouseButton1Down:connect(function()
	local pwGen = require(game:GetService("ReplicatedStorage").Game.Eggs["Haunted Egg"]["Haunted Egg"])
	pwGen.drops = { { "62", 0 }, { "143", 0 }, { "61", 0 }, { "63", 0 }, { "120", 0 }, { "64", 0 }, { "141", 100 } }
	pwGen.currency = "Normal Coins"
	print('Successfully Generated Phantom Wolf!')
end)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.Position = UDim2.new(0.131782949, 0, -0.301815689, 0)
Frame_2.Size = UDim2.new(0, 285, 0, 29)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 285, 0, 29)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Phantom Wolf Giver V1.0"
TextLabel.TextColor3 = Color3.fromRGB(122, 0, 0)
TextLabel.TextSize = 28.000
TextLabel.TextWrapped = true
