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
