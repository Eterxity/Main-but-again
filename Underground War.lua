-- Instances:

local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Keybinds = Instance.new("TextLabel")
local Credits2 = Instance.new("TextLabel")
local Credits1 = Instance.new("TextLabel")
local Reach = Instance.new("TextButton")
local Sniper2 = Instance.new("TextButton")
local Sniper1 = Instance.new("TextButton")
local HubName = Instance.new("TextLabel")
local Open = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")

--Properties:

-- Screen GUI

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame of GUI

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.244075835, 0, 0.258426964, 0)
MainFrame.Size = UDim2.new(0, 435, 0, 310)

-- Close Button

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0, 400, 0, 0)
Close.Size = UDim2.new(0, 35, 0, 35)
Close.Font = Enum.Font.Roboto
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

-- Lables

Keybinds.Name = "Keybinds"
Keybinds.Parent = MainFrame
Keybinds.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Keybinds.Position = UDim2.new(0, 265, 0, 229)
Keybinds.Size = UDim2.new(0, 150, 0, 50)
Keybinds.Font = Enum.Font.SourceSans
Keybinds.Text = "Z = Toggle J/K = Increase/Decrease "
Keybinds.TextColor3 = Color3.fromRGB(0, 0, 0)
Keybinds.TextScaled = true
Keybinds.TextSize = 14.000
Keybinds.TextWrapped = true

Credits2.Name = "Credits 2"
Credits2.Parent = MainFrame
Credits2.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
Credits2.Position = UDim2.new(0.609195411, 0, 0.417121589, 0)
Credits2.Size = UDim2.new(0, 150, 0, 50)
Credits2.Font = Enum.Font.SourceSans
Credits2.Text = "GUI made by: Eterxity"
Credits2.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits2.TextScaled = true
Credits2.TextSize = 14.000
Credits2.TextWrapped = true

Credits1.Name = "Credits 1"
Credits1.Parent = MainFrame
Credits1.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
Credits1.Position = UDim2.new(0.609195411, 0, 0.160545915, 0)
Credits1.Size = UDim2.new(0, 150, 0, 50)
Credits1.Font = Enum.Font.SourceSans
Credits1.Text = "Script made by: Agent_Devon"
Credits1.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits1.TextScaled = true
Credits1.TextSize = 14.000
Credits1.TextWrapped = true

-- Buttons

Reach.Name = "Reach"
Reach.Parent = MainFrame
Reach.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Reach.Position = UDim2.new(0.0574712642, 0, 0.740694821, 0)
Reach.Size = UDim2.new(0, 200, 0, 50)
Reach.Font = Enum.Font.SourceSans
Reach.Text = "Reach Script"
Reach.TextColor3 = Color3.fromRGB(0, 0, 0)
Reach.TextScaled = true
Reach.TextSize = 14.000
Reach.TextWrapped = true

Sniper2.Name = "Sniper2"
Sniper2.Parent = MainFrame
Sniper2.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Sniper2.Position = UDim2.new(0.0574712642, 0, 0.417121589, 0)
Sniper2.Size = UDim2.new(0, 200, 0, 50)
Sniper2.Font = Enum.Font.SourceSans
Sniper2.Text = "Sniper 2"
Sniper2.TextColor3 = Color3.fromRGB(0, 0, 0)
Sniper2.TextScaled = true
Sniper2.TextSize = 14.000
Sniper2.TextWrapped = true

Sniper1.Name = "Sniper1"
Sniper1.Parent = MainFrame
Sniper1.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Sniper1.Position = UDim2.new(0.0574712642, 0, 0.160545915, 0)
Sniper1.Size = UDim2.new(0, 200, 0, 50)
Sniper1.Font = Enum.Font.SourceSans
Sniper1.Text = "Sniper 1"
Sniper1.TextColor3 = Color3.fromRGB(0, 0, 0)
Sniper1.TextScaled = true
Sniper1.TextSize = 14.000
Sniper1.TextWrapped = true

-- Hub Lable

HubName.Name = "HubName"
HubName.Parent = MainFrame
HubName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HubName.BorderSizePixel = 0
HubName.Position = UDim2.new(0, 0, 0, -50)
HubName.Size = UDim2.new(0, 200, 0, 50)
HubName.Font = Enum.Font.SourceSans
HubName.Text = "Underground War Hub for the B.I.A"
HubName.TextColor3 = Color3.fromRGB(255, 255, 255)
HubName.TextScaled = true
HubName.TextSize = 14.000
HubName.TextWrapped = true


-- Open Buttons

Open.Name = "Open"
Open.Parent = MainGUI
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.Position = UDim2.new(0, 0, 0, 531)
Open.Size = UDim2.new(0, 200, 0, 50)

OpenButton.Name = "OpenButton"
OpenButton.Parent = Open
OpenButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
OpenButton.Size = UDim2.new(0, 200, 0, 50)
OpenButton.Font = Enum.Font.Oswald
OpenButton.Text = "Open GUI"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextScaled = true	
OpenButton.TextSize = 14.000
OpenButton.TextWrapped = true

-- Script

MainFrame.Visible = true

Close.MouseButton1Click:Connect(function()
	MainFrame.Visible = false
	Open.Visible = true
end)

OpenButton.MouseButton1Click:Connect(function()
	MainFrame.Visible = true
	Open.Visible = false
end)

Sniper1.MouseButton1Click:Connect(function()
	while true do
		wait(0.1)

		local User = game:GetService("Players").LocalPlayer.Character
		local Tool = User:FindFirstChild("Sniper")

		if User:FindFirstChild("Sniper") then
			if User:WaitForChild("Sniper") and Tool:FindFirstChild("DB") then -- Try to find the stupid sniper that you have.
				Sniper1.BackgroundColor3 = Color3.new(0,2,0)
				Tool.DB:Destroy()
				wait(2.2)
				Sniper1.BackgroundColor3 = Color3.new(2,0,0)
			end
		end
	end
end)

Sniper2.MouseButton1Click:Connect(function()
	while true do
		wait(0.1)
		local User = game:GetService("Players").LocalPlayer.Character
		local Tool = User:FindFirstChild("Sniper 2")

		if User:FindFirstChild("Sniper 2") then
			if User:WaitForChild("Sniper 2") and Tool:FindFirstChild("DB") then -- i am not repeating this 🗿
				Sniper2.BackgroundColor3 = Color3.new(0,1,1)
				Tool.DB:Destroy()
				wait(1.2)
				Sniper2.BackgroundColor3 = Color3.new(1,0,0)
			end
		end
	end
end)

Reach.MouseButton1Click:Connect(function()
	getgenv().Circle = {
		["Size"] = 5.75,
		["Enabled"] = true,
		["Random FTI"] = false,
		["Whitelisted Limbs"] = {"Left Arm","Right Arm","Left Leg","Right Leg","Head","Torso","HumanoidRootPart"}
	}

	getgenv().Configuration = {
		["Active"] = true,
		["Increase Size"] = 0.25,
		["Decrease Size"] = 0.25,
		["Notifications"] = true,
		["Transparency Check"] = false,
		["Team Check"] = false,
	}

	getgenv().Keybinds = {
		["Toggle Reach"] = "Z",
		["Increase Reach"] = "J",
		["Decrease Reach"] = "K",
		["Toggle Script"] = "M",
		["Notifications Toggle"] = "N",
	}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer

	local function SendNotification(Ti,Te)
		StarterGui:SetCore('SendNotification', {Title = tostring(Ti), Text = tostring(Te)})
	end

	local Mouse = LocalPlayer:GetMouse()

	Mouse.KeyDown:Connect(function(key)
		if key == string.lower(getgenv().Keybinds["Toggle Reach"]) then
			if getgenv().Configuration["Active"] == false then return end
			getgenv().Circle["Enabled"] = not getgenv().Circle["Enabled"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","Reach = "..tostring(getgenv().Circle["Enabled"]))
			end
		elseif key == string.lower(getgenv().Keybinds["Toggle AC"]) then
			if getgenv().Configuration["Active"] == false then return end
			getgenv().Configuration["Auto Clicker"] = not getgenv().Configuration["Auto Clicker"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","AutoClicker = "..tostring(getgenv().Configuration["Auto Clicker"]))
			end
		elseif key == string.lower(getgenv().Keybinds["Fake Handle FTI Toggle"]) then
			if getgenv().Configuration["Active"] == false then return end
			getgenv().Configuration["Fake Handle FTI"] = not getgenv().Configuration["Fake Handle FTI"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","Fake Handle FTI = "..tostring(getgenv().Configuration["Fake Handle FTI"]))
			end
		elseif key == string.lower(getgenv().Keybinds["Increase Reach"]) then
			if getgenv().Configuration["Active"] == false then return end
			getgenv().Circle["Size"] = getgenv().Circle["Size"] + getgenv().Configuration["Increase Size"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","Size = "..getgenv().Circle["Size"])
			end
		elseif key == string.lower(getgenv().Keybinds["Decrease Reach"]) then
			if getgenv().Configuration["Active"] == false then return end
			getgenv().Circle["Size"] = getgenv().Circle["Size"] - getgenv().Configuration["Decrease Size"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","Size = "..getgenv().Circle["Size"])
			end
		elseif key == string.lower(getgenv().Keybinds["Notifications Toggle"]) then
			getgenv().Configuration["Notifications"] = not getgenv().Configuration["Notifications"]
			SendNotification("Xen-Zone","Notifications = "..tostring(getgenv().Configuration["Notifications"]))
		elseif key == string.lower(getgenv().Keybinds["Toggle Script"]) then
			getgenv().Configuration["Active"] = not getgenv().Configuration["Active"]
			if getgenv().Configuration["Notifications"] == true then
				SendNotification("Xen-Zone","Script = "..tostring(getgenv().Configuration["Active"]))
			end
		end
	end)

	hookfunction(gcinfo or collectgarbage, function(...)
		if getgenv().Configuration["Active"] == false then return end
		return math.random(200,400)
	end)

	local HPHook;

	HPHook = hookmetamethod(game, "__index", function(H, HP)
		if not checkcaller() then
			if tostring(H) == "Humanoid" and tostring(HP) == "Health" then
				return 0
			end
		end
		return HPHook(H, HP)
	end)

	local HitParts = {}
	local t = tick()

	local FTI = function(hit,handle)
		local Humanoid = hit.Parent:FindFirstChild("Humanoid")
		if Humanoid and Humanoid.Health ~= 0 and hit.Parent.Name ~= LocalPlayer.Character.Name then
			if getgenv().Configuration["Transparency Check"] == true then if hit.Transparency > 0.8 then return end end
			local Region = Region3.new(handle.Position + Vector3.new(-1,-1,-1), handle.Position + Vector3.new(1,1,1))
			local InRegion = game:GetService("Workspace"):FindPartsInRegion3(Region)
			if getgenv().Configuration["Fake Handle FTI"] then
				for _,v in pairs(InRegion) do
					if v:IsA("Part") and v:FindFirstChildOfClass("TouchTransmitter") and v.Name ~= "Handle" then
						if getgenv().Circle["Random FTI"] == true then
							for i,parts in pairs(hit.Parent:GetChildren()) do
								if parts:IsA("Part") then
									if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
										if not table.find(HitParts,parts.Name) then
											if #HitParts >= 6 then table.clear(HitParts) end
											table.insert(HitParts,parts.Name)
											if math.abs(tick() - t) < 0.05 then return end
											t = tick()
											firetouchinterest(parts,handle,0)
											firetouchinterest(parts,handle,1)
											firetouchinterest(parts,v,0)
											firetouchinterest(parts,v,1)
										end
									end
								end
							end
						else
							for i,parts in pairs(hit.Parent:GetChildren()) do
								if parts:IsA("Part") then
									if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
										firetouchinterest(parts,handle,0)
										firetouchinterest(parts,handle,1)
										firetouchinterest(parts,v,0)
										firetouchinterest(parts,v,1)
									end
								end
							end
						end
					end
				end
			else
				for _,v in pairs(InRegion) do
					if v:IsA("Part") and v:FindFirstChildOfClass("TouchTransmitter") then
						if getgenv().Circle["Random FTI"] == true then
							for i,parts in pairs(hit.Parent:GetChildren()) do
								if parts:IsA("Part") then
									if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
										if not table.find(HitParts,parts.Name) then
											if #HitParts >= 6 then table.clear(HitParts) end
											table.insert(HitParts,parts.Name)
											if math.abs(tick() - t) < 0.05 then return end
											t = tick()
											firetouchinterest(parts,v,0)
											firetouchinterest(parts,v,1)
										end
									end
								end
							end
						else
							for i,parts in pairs(hit.Parent:GetChildren()) do
								if parts:IsA("Part") then
									if table.find(getgenv().Circle["Whitelisted Limbs"],parts.Name) then
										firetouchinterest(parts,v,0)
										firetouchinterest(parts,v,1)
									end
								end
							end
						end
					end
				end
			end
		end
	end

	local IsTeam = function(Player)
		if Player.Team == LocalPlayer.Team then
			return true
		else
			return false
		end
	end

	game:GetService("RunService").RenderStepped:Connect(function()
		if getgenv().Configuration["Active"] == false then return end
		if getgenv().Circle["Enabled"] == false then return end
		local Tool = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
		if Tool then
			if getgenv().Configuration["Auto Clicker"] and LocalPlayer.Character.Humanoid.Health ~= 0 then Tool:Activate() Tool:Activate() end
			local Handle = Tool:FindFirstChild("Handle")
			if Handle then
				local Size = getgenv().Circle["Size"]
				if getgenv().Configuration["Team Check"] == true then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if IsTeam(v) == false then
							local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
							if HRP then
								local Distance = (HRP.Position - Handle.Position).Magnitude
								if Distance <= Size then
									FTI(HRP,Handle)
								end
							end
						end
					end
				else
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
						if HRP then
							local Distance = (HRP.Position - Handle.Position).Magnitude
							if Distance <= Size then
								FTI(HRP,Handle)
							end
						end
					end
				end
			end
		end
	end)
end)
