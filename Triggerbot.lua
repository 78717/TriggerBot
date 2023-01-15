-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.396378279, 0, 0.304273516, 0)
Frame.Size = UDim2.new(0, 111, 0, 148)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(0, 111, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Triggerbot"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0, 0, 0.587837875, 0)
TextButton.Size = UDim2.new(0, 111, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextSize = 30.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)

-- Scripts:

local function GMJYQOU_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	_G.triggerbot = false
	local player = game:GetService("Players").LocalPlayer
	local mouse = player:GetMouse()
	
	script.Parent.MouseButton1Click:Connect(function()
		if _G.triggerbot then
			_G.triggerbot = false
			script.Parent.Text = "OFF"
			script.Parent.TextColor3 = Color3.fromRGB(255, 0, 0)
			
		else 
			_G.triggerbot = true
			script.Parent.Text = "ON"
			script.Parent.TextColor3 = Color3.fromRGB(85, 255, 0)
			game:GetService("RunService").RenderStepped:Connect(function()
				if mouse.Target.Parent:FindFirstChild("Humanoid") and _G.triggerbot and mouse.Target.Parent.Name ~= player.Name then
					mouse1press() wait() mouse1release()
				end
			end)
		end
	end)
	
end
coroutine.wrap(GMJYQOU_fake_script)()