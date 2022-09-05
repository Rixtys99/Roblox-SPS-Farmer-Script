-- Instances --

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ZoneText = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local ZoneInput = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local BoosterLevelInput = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local BoosterLevelText = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local CooldownText = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local CooldownInput = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local StartButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local StopButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local DestroyScript = Instance.new("TextButton")

-- Settings --

local zone = 2 -- Enter which zone do you want to auto farm
local cooldown = 0.05 -- Time between teleports
local boosterLevel = "Auto" -- Level of the booster 1, 2, 3, 4, 5 or Auto
local enabled = false

-- Other --

local player = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid
local loc1 = game.Workspace.Map.Stages.Boosts[zone]

-- Properties --

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 0.400
MainFrame.Position = UDim2.new(0.394997388, 0, 0.378608525, 0)
MainFrame.Size = UDim2.new(0, 403, 0, 262)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = MainFrame

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 0.500
TextLabel.Size = UDim2.new(0, 403, 0, 38)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "SPS Farmer | v0.3"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 22.000
TextLabel.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = TextLabel

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0.0189999994, 0, 0.172000006, 0)
ScrollingFrame.Size = UDim2.new(0, 386, 0, 209)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)

ZoneText.Name = "ZoneText"
ZoneText.Parent = ScrollingFrame
ZoneText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ZoneText.BackgroundTransparency = 0.850
ZoneText.Position = UDim2.new(0.0336787552, 0, 0.0381679386, 0)
ZoneText.Size = UDim2.new(0, 174, 0, 36)
ZoneText.Font = Enum.Font.Highway
ZoneText.Text = "Zone (2-30)"
ZoneText.TextColor3 = Color3.fromRGB(255, 255, 255)
ZoneText.TextSize = 25.000
ZoneText.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = ZoneText

ZoneInput.Name = "ZoneInput"
ZoneInput.Parent = ScrollingFrame
ZoneInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ZoneInput.BackgroundTransparency = 0.850
ZoneInput.Position = UDim2.new(0.49999997, 0, 0.0477773845, 0)
ZoneInput.Size = UDim2.new(0, 165, 0, 36)
ZoneInput.Font = Enum.Font.Highway
ZoneInput.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
ZoneInput.PlaceholderText = "You have to be in that zone (1 doesn't work)"
ZoneInput.Text = "2"
ZoneInput.TextColor3 = Color3.fromRGB(255, 255, 255)
ZoneInput.TextScaled = true
ZoneInput.TextSize = 15.000
ZoneInput.TextWrapped = true
ZoneInput.FocusLost:Connect(function()
	zone = ZoneInput.Text
end)

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = ZoneInput

BoosterLevelInput.Name = "BoosterLevelInput"
BoosterLevelInput.Parent = ScrollingFrame
BoosterLevelInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BoosterLevelInput.BackgroundTransparency = 0.850
BoosterLevelInput.Position = UDim2.new(0.49999997, 0, 0.230983496, 0)
BoosterLevelInput.Size = UDim2.new(0, 165, 0, 36)
BoosterLevelInput.Font = Enum.Font.Highway
BoosterLevelInput.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
BoosterLevelInput.PlaceholderText = "1, 2, 3, 4, 5 or Auto"
BoosterLevelInput.Text = "Auto"
BoosterLevelInput.TextColor3 = Color3.fromRGB(255, 255, 255)
BoosterLevelInput.TextScaled = true
BoosterLevelInput.TextSize = 15.000
BoosterLevelInput.TextWrapped = true
BoosterLevelInput.FocusLost:Connect(function()
	boosterLevel = BoosterLevelInput.Text
end)

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = BoosterLevelInput

BoosterLevelText.Name = "BoosterLevelText"
BoosterLevelText.Parent = ScrollingFrame
BoosterLevelText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BoosterLevelText.BackgroundTransparency = 0.850
BoosterLevelText.Position = UDim2.new(0.0336787552, 0, 0.22137405, 0)
BoosterLevelText.Size = UDim2.new(0, 174, 0, 36)
BoosterLevelText.Font = Enum.Font.Highway
BoosterLevelText.Text = "Booster Level (1-5)"
BoosterLevelText.TextColor3 = Color3.fromRGB(255, 255, 255)
BoosterLevelText.TextSize = 25.000
BoosterLevelText.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 15)
UICorner_6.Parent = BoosterLevelText

CooldownText.Name = "CooldownText"
CooldownText.Parent = ScrollingFrame
CooldownText.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CooldownText.BackgroundTransparency = 0.850
CooldownText.Position = UDim2.new(0.0336787552, 0, 0.408396959, 0)
CooldownText.Size = UDim2.new(0, 174, 0, 36)
CooldownText.Font = Enum.Font.Highway
CooldownText.Text = "Cooldown (Any)"
CooldownText.TextColor3 = Color3.fromRGB(255, 255, 255)
CooldownText.TextSize = 25.000
CooldownText.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 15)
UICorner_7.Parent = CooldownText

CooldownInput.Name = "CooldownInput"
CooldownInput.Parent = ScrollingFrame
CooldownInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CooldownInput.BackgroundTransparency = 0.850
CooldownInput.Position = UDim2.new(0.49999997, 0, 0.41800639, 0)
CooldownInput.Size = UDim2.new(0, 165, 0, 36)
CooldownInput.Font = Enum.Font.Highway
CooldownInput.PlaceholderColor3 = Color3.fromRGB(99, 99, 99)
CooldownInput.PlaceholderText = "Time between teleports"
CooldownInput.Text = "0.05"
CooldownInput.TextColor3 = Color3.fromRGB(255, 255, 255)
CooldownInput.TextScaled = true
CooldownInput.TextSize = 15.000
CooldownInput.TextWrapped = true
CooldownInput.FocusLost:Connect(function()
	cooldown = CooldownInput.Text
end)

UICorner_8.CornerRadius = UDim.new(0, 15)
UICorner_8.Parent = CooldownInput

StartButton.Name = "StartButton"
StartButton.Parent = ScrollingFrame
StartButton.BackgroundColor3 = Color3.fromRGB(0, 255, 8)
StartButton.Position = UDim2.new(0.173575133, 0, 0.59888494, 0)
StartButton.Size = UDim2.new(0, 115, 0, 33)
StartButton.Font = Enum.Font.Highway
StartButton.Text = "START"
StartButton.TextColor3 = Color3.fromRGB(0, 0, 0)
StartButton.TextSize = 25.000
StartButton.TextWrapped = true
StartButton.MouseButton1Down:Connect(function()
	enabled = true
end)

UICorner_9.CornerRadius = UDim.new(0, 15)
UICorner_9.Parent = StartButton

StopButton.Name = "StopButton"
StopButton.Parent = ScrollingFrame
StopButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
StopButton.Position = UDim2.new(0.492751479, 0, 0.59888494, 0)
StopButton.Size = UDim2.new(0, 115, 0, 33)
StopButton.Font = Enum.Font.Highway
StopButton.Text = "STOP"
StopButton.TextColor3 = Color3.fromRGB(0, 0, 0)
StopButton.TextSize = 25.000
StopButton.TextWrapped = true
StopButton.MouseButton1Down:Connect(function()
	enabled = false
end)

UICorner_10.CornerRadius = UDim.new(0, 15)
UICorner_10.Parent = StopButton

DestroyScript.Name = "DestroyScript"
DestroyScript.Parent = MainFrame
DestroyScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DestroyScript.BackgroundTransparency = 1.000
DestroyScript.Position = UDim2.new(0.889290988, 0, 0, 0)
DestroyScript.Size = UDim2.new(0, 37, 0, 38)
DestroyScript.Font = Enum.Font.Ubuntu
DestroyScript.Text = "X"
DestroyScript.TextColor3 = Color3.fromRGB(255, 0, 0)
DestroyScript.TextSize = 30.000
DestroyScript.TextWrapped = true
DestroyScript.MouseButton1Down:Connect(function()
	ScreenGui:Destroy()
end)

-- Script --

while wait(cooldown) do
	if enabled then
	    loc1 = game.Workspace.Map.Stages.Boosts[zone]
		if boosterLevel == "Auto" then
			loc01 = "MAP_" .. zone .. "_1"
			loc02 = "MAP_" .. zone .. "_2"
			loc03 = "MAP_" .. zone .. "_3"
			loc04 = "MAP_" .. zone .. "_4"
			loc05 = "MAP_" .. zone .. "_5"
			
			if loc1:FindFirstChild(loc05) then
				loc = loc1[loc05]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			elseif loc1:FindFirstChild(loc04) then
				loc = loc1[loc04]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			elseif loc1:FindFirstChild(loc03) then
				loc = loc1[loc03]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			elseif loc1:FindFirstChild(loc02) then
				loc = loc1[loc02]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			elseif loc1:FindFirstChild(loc01) then
				loc = loc1[loc01]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			end
		else
			loc2 = "MAP_" .. zone .. "_" .. boosterLevel

			if loc1:FindFirstChild(loc2) then
				loc = loc1[loc2]:FindFirstChild("0").CFrame
				humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				player.CFrame = loc
			end
		end
	end
end
