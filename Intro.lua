game.StarterGui:SetCore("SendNotification", {Title="Candi Has Injected"; Text="Developed By Shade & JalapenoGuy"; Duration=15;})
local StarterGui = game:GetService("StarterGui")
repeat
	wait() 
	local Success = pcall(function()
		StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "Candi Has Injected!"; 
			Color = Color3.fromRGB(255, 0, 102);
			Font = Enum.Font.SourceSansBold; 
			TextSize = 18 
		})
	end)
until Success
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Frame_2 = Instance.new("Frame")
local Tex = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0.75308156, 0)
Frame.Size = UDim2.new(0, 202, 0, 130)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.331683189, 0, -0.588672459, 0)
ImageLabel.Size = UDim2.new(0, 403, 0, 301)
ImageLabel.Visible = false
ImageLabel.Image = "http://www.roblox.com/asset/?id=5877164792"

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BackgroundTransparency = 0.800
Frame_2.Position = UDim2.new(-0.00139904965, 0, 0.349529833, 0)
Frame_2.Size = UDim2.new(0, 329, 0, 113)
Frame_2.ZIndex = 0

Tex.Name = "Tex"
Tex.Parent = Frame
Tex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tex.BackgroundTransparency = 1.000
Tex.Position = UDim2.new(0, 0, 0.60175252, 0)
Tex.Size = UDim2.new(0, 297, 0, 50)
Tex.Font = Enum.Font.RobotoMono
Tex.Text = ""
Tex.TextColor3 = Color3.fromRGB(0, 0, 0)
Tex.TextSize = 18.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.393887341, 0)
TextLabel.Size = UDim2.new(0, 297, 0, 50)
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 23.000

-- Module Scripts:

local fake_module_scripts = {}

do -- Frame.TypeWriter
	local script = Instance.new('ModuleScript', Frame)
	script.Name = "TypeWriter"
	local function module_script()
		local SOURCE_LOCALE = "en"
		
		local LocalizationService = game:GetService("LocalizationService")
		local Players = game:GetService("Players")
		
		local player = Players.LocalPlayer
		
		local translator = nil
		pcall(function()
			translator = LocalizationService:GetTranslatorForPlayerAsync(player)
		end)
		if not translator then
			pcall(function()
				translator = LocalizationService:GetTranslatorForLocaleAsync(SOURCE_LOCALE)
			end)
		end
		
		local TypeWriter = {}
		
		local defaultConfigurations = {
			delayTime = 0.2,
			extraDelayOnSpace = true
		}
		
		function TypeWriter.configure(configurations)
			for key, value in pairs(defaultConfigurations) do
				local newValue = configurations[key]
				if newValue ~= nil then
					defaultConfigurations[key] = newValue
				else
					warn(key .. " is not a valid configuration for TypeWriter module")
				end
			end
		end
		
		function TypeWriter.typeWrite(guiObject, text)
			guiObject.AutoLocalize = false
			guiObject.Text = ""
			local displayText = text
			if translator then
				displayText = translator:Translate(guiObject, text)
			end
			for first, last in utf8.graphemes(displayText) do
				local grapheme = string.sub(displayText, first, last)
				guiObject.Text = guiObject.Text .. grapheme
				if defaultConfigurations.extraDelayOnSpace and grapheme == " " then
					wait(defaultConfigurations.delayTime)
				end
				wait(defaultConfigurations.delayTime)
			end
		end
		
		return TypeWriter
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function MCPXP_fake_script() -- Tex.LocalScript 
	local script = Instance.new('LocalScript', Tex)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	wait(3)
	-- Roblox services
	local ReplicatedStorage = script.Parent.Parent
	
	-- Require module
	local TypeWriter = require(ReplicatedStorage:WaitForChild("TypeWriter"))
	
	TypeWriter.configure({
		delayTime = 0.05,
		extraDelayOnSpace = false
	})
	
	TypeWriter.typeWrite(script.Parent, "Developed By: Shade & JalapenoGuy")
end
coroutine.wrap(MCPXP_fake_script)()
local function POKTC_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local object = script.Parent
	object.AnchorPoint = Vector2.new(0.0, 0.0)
	object.Position = UDim2.new(0.0, 0, 1.2, 0)
	
	wait()
	object:TweenPosition(UDim2.new(0, 0, 0.753, 0), nil, nil, 3)
	wait(10)
	for i = 0.7, 1, 0.1 do
		wait(0.1)
		object.Frame.BackgroundTransparency = i
		--object.ImageLabel.ImageTransparency = i
		object.TextLabel.TextTransparency = i
		object.Tex.TextTransparency = i
	end
	wait(1)
	script.Parent.Parent:Destroy()
	print("Finished")
end
coroutine.wrap(POKTC_fake_script)()
local function TRTG_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	wait(1.5)
	-- Roblox services
	local ReplicatedStorage = script.Parent.Parent
	
	-- Require module
	local TypeWriter = require(ReplicatedStorage:WaitForChild("TypeWriter"))
	
	TypeWriter.configure({
		delayTime = 0.05,
		extraDelayOnSpace = false
	})
	
	TypeWriter.typeWrite(script.Parent, "Candi Has Injected")
end
coroutine.wrap(TRTG_fake_script)()

