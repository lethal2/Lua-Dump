

getgenv().runService = game:GetService"RunService"
getgenv().textService = game:GetService"TextService"
getgenv().inputService = game:GetService"UserInputService"
getgenv().tweenService = game:GetService"TweenService"

local UserInputService = game:GetService("UserInputService")
local runService = runService
local textService = textService

local inputService = inputService
local tweenService = tweenService
local Camera = game:GetService("Workspace").CurrentCamera
if getgenv().library then
	getgenv().library:Unload()
end

getgenv().tocolor = function(l)
    return Color3.fromRGB(l.R * 255, l.G * 255, l.B * 255)
end

function isAlive(plr)
    if not plr then plr = localPlayer end
    return plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Head") and plr.Character.Humanoid.Health > 0 and true or false
end
local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

local AllKnives = {
	"CT Knife",
	"T Knife",
	"Banana",
	"Bayonet",
	"Bearded Axe",
	"Butterfly Knife",
	"Cleaver",
	"Crowbar",
	"Falchion Knife",
	"Flip Knife",
	"Gut Knife",
	"Huntsman Knife",
	"Karambit",
	"Sickle",
}
local ag = {
        ["Head"] = 4,
        ["FakeHead"] = 4,
        ["HeadHB"] = 4,
        ["UpperTorso"] = 1,
        ["LowerTorso"] = 1.25,
        ["LeftUpperArm"] = 1,
        ["LeftLowerArm"] = 1,
        ["LeftHand"] = 1,
        ["RightUpperArm"] = 1,
        ["RightLowerArm"] = 1,
        ["RightHand"] = 1,
        ["LeftUpperLeg"] = 0.75,
        ["LeftLowerLeg"] = 0.75,
        ["LeftFoot"] = 0.75,
        ["RightUpperLeg"] = 0.75,
        ["RightLowerLeg"] = 0.75,
        ["RightFoot"] = 0.75
    }

local S
local T = false
local mt = getrawmetatable(game)
local oldIndex = mt.__index
local players = game:GetService("Players") 
local localPlayer = players.LocalPlayer 
local Players = game:GetService("Players") 
local LocalPlayer = Players.LocalPlayer 
local Vec2 = Vector2.new
local Vec3 = Vector3.new
local CF = CFrame.new
local INST = Instance.new
local COL3 = Color3.new
local COL3RGB = Color3.fromRGB
local COL3HSV = Color3.fromHSV
local CLAMP = math.clamp
local DEG = math.deg
local FLOOR = math.floor
local ACOS = math.acos
local RANDOM = math.random
local ATAN2 = math.atan2
local HUGE = math.huge
local RAD = math.rad
local MIN = math.min
local POW = math.pow
local UDIM2 = UDim2.new
local CFAngles = CFrame.Angles
local FIND = string.find
local LEN = string.len
local SUB = string.sub
local GSUB = string.gsub
local RAY = Ray.new
local INSERT = table.insert
local TBLFIND = table.find
local TBLREMOVE = table.remove
local TBLSORT = table.sort
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local UserInput = game:GetService("UserInputService")



-- [UI Library Settings]
local library = {
	tabs = {},
	draggable = true,
	flags = {},
	title = "cutecatz",
	open = false,
	mousestate = inputService.MouseIconEnabled,
	popup = nil,
	instances = {},
	connections = {},
	options = {},
	notifications = {},
	tabSize = 0,
	theme = {},
	foldername = "CuteCatz.fun",
	fileext = ".fun"
}

getgenv().library = library

local dragging, dragInput, dragStart, startPos, dragObject
local blacklistedKeys = { 
	Enum.KeyCode.Unknown,
	Enum.KeyCode.W,
	Enum.KeyCode.A,
	Enum.KeyCode.S,
	Enum.KeyCode.D,
	Enum.KeyCode.Slash,
	Enum.KeyCode.Tab,
	Enum.KeyCode.Escape
}
local whitelistedMouseinputs = { 
	Enum.UserInputType.MouseButton1,
	Enum.UserInputType.MouseButton2,
	Enum.UserInputType.MouseButton3
}

library.round = function(num, bracket)
	bracket = bracket or 1
	local a
	if typeof(num) == "Vector2" then
		a = Vector2.new(library.round(num.X), library.round(num.Y))
	elseif typeof(num) == "Color3" then
		return library.round(num.r * 255), library.round(num.g * 255), library.round(num.b * 255)
	else
		a = math.floor(num / bracket + (math.sign(num) * 0.5)) * bracket
		if a < 0 then
			a = a + bracket
		end
		return a
	end
	return a
end

local chromaColor
spawn(function()
	while library and wait() do
		chromaColor = Color3.fromHSV(tick() % 6 / 6, 1, 1)
	end
end)

function library:Create(class, properties)
	properties = properties or {}
	if not class then
		return
	end
	local a = class == "Square" or class == "Line" or class == "Text" or class == "Quad" or class == "Circle" or class == "Triangle"
	local t = a and Drawing or Instance
	local inst = t.new(class)
	for property, value in next, properties do
		inst[property] = value
	end
	table.insert(self.instances, {
		object = inst,
		method = a
	})
	return inst
end

function library:AddConnection(connection, name, callback)
	callback = type(name) == "function" and name or callback
	connection = connection:connect(callback)
	if name ~= callback then
		self.connections[name] = connection
	else
		table.insert(self.connections, connection)
	end
	return connection
end

function library:Unload()
	inputService.MouseIconEnabled = self.mousestate
	for _, c in next, self.connections do
		c:Disconnect()
	end
	for _, i in next, self.instances do
		if i.method then
			pcall(function()
				i.object:Remove()
			end)
		else
			i.object:Destroy()
		end
	end
	for _, o in next, self.options do
		if o.type == "toggle" then
			pcall(function()
				o:SetState()
			end)
		end
	end
	library = nil
	getgenv().library = nil
end

function library:LoadConfig(config)
	if table.find(self:GetConfigs(), config) then
		local Read, Config = pcall(function()
			return game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. config .. self.fileext))
		end)
		Config = Read and Config or {}
		for _, option in next, self.options do
			if option.hasInit then
				if option.type ~= "button" and option.flag and not option.skipflag then
					if option.type == "toggle" then
						spawn(function()
							option:SetState(Config[option.flag] == 1)
						end)
					elseif option.type == "color" then
						if Config[option.flag] then
							spawn(function()
								option:SetColor(Config[option.flag])
							end)
							if option.trans then
								spawn(function()
									option:SetTrans(Config[option.flag .. " Transparency"])
								end)
							end
						end
					elseif option.type == "bind" then
						spawn(function()
							option:SetKey(Config[option.flag])
						end)
					else
						spawn(function()
							option:SetValue(Config[option.flag])
						end)
					end
				end
			end
		end
	end
end

function library:SaveConfig(config)
	local Config = {}
	if table.find(self:GetConfigs(), config) then
		Config = game:GetService"HttpService":JSONDecode(readfile(self.foldername .. "/" .. config .. self.fileext))
	end
	for _, option in next, self.options do
		if option.type ~= "button" and option.flag and not option.skipflag then
			if option.type == "toggle" then
				Config[option.flag] = option.state and 1 or 0
			elseif option.type == "color" then
				Config[option.flag] = {
					option.color.r,
					option.color.g,
					option.color.b
				}
				if option.trans then
					Config[option.flag .. " Transparency"] = option.trans
				end
			elseif option.type == "bind" then
				Config[option.flag] = option.key
			elseif option.type == "list" then
				Config[option.flag] = option.value
			else
				Config[option.flag] = option.value
			end
		end
	end
	writefile(self.foldername .. "/" .. config .. self.fileext, game:GetService"HttpService":JSONEncode(Config))
end

function library:GetConfigs()
	if not isfolder(self.foldername) then
		makefolder(self.foldername)
		return {}
	end
	local files = {}
	local a = 0
	for i, v in next, listfiles(self.foldername) do
		if v:sub(#v - #self.fileext + 1, #v) == self.fileext then
			a = a + 1
			v = v:gsub(self.foldername .. "\\", "")
			v = v:gsub(self.fileext, "")
			table.insert(files, a, v)
		end
	end
	return files
end

local function createLabel(option, parent)
	option.main = library:Create("TextLabel", {
		LayoutOrder = option.position,
		Position = UDim2.new(0, 6, 0, 0),
		Size = UDim2.new(1, -12, 0, 24),
		BackgroundTransparency = 1,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextWrapped = true,
		Parent = parent
	})
	setmetatable(option, {
		__newindex = function(t, i, v)
			if i == "Text" then
				option.main.Text = tostring(v)
				option.main.Size = UDim2.new(1, -12, 0, textService:GetTextSize(option.main.Text, 15, Enum.Font.Code, Vector2.new(option.main.AbsoluteSize.X, 9e9)).Y + 6)
			end
		end
	})
	option.Text = option.text
end

local function createDivider(option, parent)
	option.hasInit = true
	option.main = library:Create("Frame", {
		LayoutOrder = option.position,
		Size = UDim2.new(1, 0, 0, 18),
		BackgroundTransparency = 1,
		Parent = parent
	})
	library:Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, -24, 0, 1),
		BackgroundColor3 = Color3.fromRGB(71, 69, 71),
		BorderColor3 = Color3.new(),
		Parent = option.main
	})
	option.title = library:Create("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		TextColor3 =  Color3.new(1, 1, 1),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextXAlignment = Enum.TextXAlignment.Center,
		Parent = option.main
	})
	setmetatable(option, {
		__newindex = function(t, i, v)
			if i == "Text" then
				if v then
					option.title.Text = tostring(v)
					option.title.Size = UDim2.new(0, textService:GetTextSize(option.title.Text, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 12, 0, 20)
					option.main.Size = UDim2.new(1, 0, 0, 18)
				else
					option.title.Text = ""
					option.title.Size = UDim2.new()
					option.main.Size = UDim2.new(1, 0, 0, 6)
				end
			end
		end
	})
	option.Text = option.text
end

local function createToggle(option, parent)
	option.hasInit = true
	option.main = library:Create("Frame", {
		LayoutOrder = option.position,
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = parent
	})
	local tickbox
	local tickboxOverlay
	if option.style then
		tickbox = library:Create("ImageLabel", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.new(),
			Parent = option.main
		})
		library:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -2, 1, -2),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			Parent = tickbox
		})
		library:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = Color3.fromRGB(40, 40, 40),
			Parent = tickbox
		})
		tickboxOverlay = library:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, -6, 1, -6),
			BackgroundTransparency = 1,
			Image = "rbxassetid://3570695787",
			ImageColor3 = library.flags["Menu Accent Color"],
			Visible = option.state,
			Parent = tickbox
		})
		library:Create("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://5941353943",
			ImageTransparency = 0.6,
			Parent = tickbox
		})
		table.insert(library.theme, tickboxOverlay)
	else
		tickbox = library:Create("Frame", {
			Position = UDim2.new(0, 6, 0, 4),
			Size = UDim2.new(0, 12, 0, 12),
			BackgroundColor3 = library.flags["Menu Accent Color"],
			BorderColor3 = Color3.new(),
			Parent = option.main
		})
		tickboxOverlay = library:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = option.state and 1 or 0,
			BackgroundColor3 = Color3.fromRGB(50, 50, 50),
			BorderColor3 = Color3.new(),
			Image = "rbxassetid://4155801252",
			ImageTransparency = 0.6,
			ImageColor3 = Color3.new(),
			Parent = tickbox
		})
		library:Create("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2592362371",
			ImageColor3 = Color3.fromRGB(60, 60, 60),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 62, 62),
			Parent = tickbox
		})
		library:Create("ImageLabel", {
			Size = UDim2.new(1, -2, 1, -2),
			Position = UDim2.new(0, 1, 0, 1),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2592362371",
			ImageColor3 = Color3.new(),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 62, 62),
			Parent = tickbox
		})
		table.insert(library.theme, tickbox)
	end
	option.interest = library:Create("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 0, 20),
		BackgroundTransparency = 1,
		Parent = option.main
	})
	option.title = library:Create("TextLabel", {
		Position = UDim2.new(0, 24, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = option.text,
		TextColor3 =  option.state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(180, 180, 180),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = option.interest
	})
	option.interest.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			option:SetState(not option.state)
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				if option.style then
					tickbox.ImageColor3 = library.flags["Menu Accent Color"]
				else
					tickbox.BorderColor3 = library.flags["Menu Accent Color"]
					tickboxOverlay.BorderColor3 = library.flags["Menu Accent Color"]
				end
			end
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
	end)
	option.interest.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	option.interest.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.style then
				tickbox.ImageColor3 = Color3.new()
			else
				tickbox.BorderColor3 = Color3.new()
				tickboxOverlay.BorderColor3 = Color3.new()
			end
			library.tooltip.Position = UDim2.new(2)
		end
	end)

	function option:SetState(state, nocallback)
		state = typeof(state) == "boolean" and state
		state = state or false
		library.flags[self.flag] = state
		self.state = state
		option.title.TextColor3 = state and Color3.fromRGB(210, 210, 210) or Color3.fromRGB(160, 160, 160)
		if option.style then
			tickboxOverlay.Visible = state
		else
			tickboxOverlay.BackgroundTransparency = state and 1 or 0
		end
		if not nocallback then
			self.callback(state)
		end
	end
	if option.state then
		delay(1, function()
			if library then
				option.callback(true)
			end
		end)
	end
	setmetatable(option, {
		__newindex = function(t, i, v)
			if i == "Text" then
				option.title.Text = tostring(v)
			end
		end
	})
end

local function createButton(option, parent)
	option.hasInit = true
	option.main = library:Create("Frame", {
		LayoutOrder = option.position,
		Size = UDim2.new(1, 0, 0, 26),
		BackgroundTransparency = 1,
		Parent = parent
	})
	option.title = library:Create("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -5),
		Size = UDim2.new(1, -12, 0, 18),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = option.text,
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 15,
		Font = Enum.Font.Code,
		Parent = option.main
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.title
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.title
	})
	library:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 180)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(253, 253, 253)),
		}),
		Rotation = -90,
		Parent = option.title
	})
	option.title.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			option.callback()
			if library then
				library.flags[option.flag] = true
			end
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				option.title.BorderColor3 = library.flags["Menu Accent Color"]
			end
		end
	end)
	option.title.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	option.title.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			option.title.BorderColor3 = Color3.new()
			library.tooltip.Position = UDim2.new(2)
		end
	end)
end





local function createBind(option, parent)
	option.hasInit = true
	local binding
	local holding
	local Loop
	if option.sub then
		option.main = option:getMain()
	else
		option.main = option.main or library:Create("Frame", {
			LayoutOrder = option.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = parent
		})
		library:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = option.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = option.main
		})
	end

	local bindinput = library:Create(option.sub and "TextButton" or "TextLabel", {
		Position = UDim2.new(1, -6 - (option.subpos or 0), 0, option.sub and 2 or 3),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(160, 160, 160),
		TextXAlignment = Enum.TextXAlignment.Right,
		Parent = option.main
	})

	if option.sub then
		bindinput.AutoButtonColor = false
	end

	local interest = option.sub and bindinput or option.main
	local inContact
	interest.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			binding = true
			bindinput.Text = "[...]"
			bindinput.Size = UDim2.new(0, -textService:GetTextSize(bindinput.Text, 16, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 16)
			bindinput.TextColor3 = library.flags["Menu Accent Color"]
		end
	end)

	library:AddConnection(inputService.InputBegan, function(input)
		if inputService:GetFocusedTextBox() then
			return
		end
		if binding then
			local key = (table.find(whitelistedMouseinputs, input.UserInputType) and not option.nomouse) and input.UserInputType
			option:SetKey(key or (not table.find(blacklistedKeys, input.KeyCode)) and input.KeyCode)
		else
			if (input.KeyCode.Name == option.key or input.UserInputType.Name == option.key) and not binding then
				if option.mode == "toggle" then
					library.flags[option.flag] = not library.flags[option.flag]
					option.callback(library.flags[option.flag], 0)
				else
					library.flags[option.flag] = true
					if Loop then
						Loop:Disconnect()
						option.callback(true, 0)
					end
					Loop = library:AddConnection(runService.RenderStepped, function(step)
						if not inputService:GetFocusedTextBox() then
							option.callback(nil, step)
						end
					end)
				end
			end
		end
	end)
	library:AddConnection(inputService.InputEnded, function(input)
		if option.key ~= "none" then
			if input.KeyCode.Name == option.key or input.UserInputType.Name == option.key then
				if Loop then
					Loop:Disconnect()
					library.flags[option.flag] = false
					option.callback(true, 0)
				end
			end
		end
	end)

	function option:SetKey(key)
		binding = false
		bindinput.TextColor3 = Color3.fromRGB(160, 160, 160)
		if Loop then
			Loop:Disconnect()
			library.flags[option.flag] = false
			option.callback(true, 0)
		end
		self.key = (key and key.Name) or key or self.key
		if self.key == "Backspace" then
			self.key = "none"
			bindinput.Text = "[NONE]"
		else
			local a = self.key
			if self.key:match"Mouse" then
				a = self.key:gsub("Button", ""):gsub("Mouse", "M")
			elseif self.key:match"Shift" or self.key:match"Alt" or self.key:match"Control" then
				a = self.key:gsub("Left", "L"):gsub("Right", "R")
			end
			bindinput.Text = "[" .. a:gsub("Control", "CTRL"):upper() .. "]"
		end
		bindinput.Size = UDim2.new(0, -textService:GetTextSize(bindinput.Text, 16, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 16)
	end
	option:SetKey()
end

local function createSlider(option, parent)
	option.hasInit = true
	if option.sub then
		option.main = option:getMain()
		option.main.Size = UDim2.new(1, 0, 0, 42)
	else
		option.main = library:Create("Frame", {
			LayoutOrder = option.position,
			Size = UDim2.new(1, 0, 0, option.textpos and 24 or 40),
			BackgroundTransparency = 1,
			Parent = parent
		})
	end
	option.slider = library:Create("Frame", {
		Position = UDim2.new(0, 6, 0, (option.sub and 22 or option.textpos and 4 or 20)),
		Size = UDim2.new(1, -12, 0, 16),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = option.main
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = option.slider
	})
	option.fill = library:Create("Frame", {
		BackgroundColor3 = library.flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = option.slider
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.slider
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.slider
	})
	option.title = library:Create("TextBox", {
		Position = UDim2.new((option.sub or option.textpos) and 0.5 or 0, (option.sub or option.textpos) and 0 or 6, 0, 0),
		Size = UDim2.new(0, 0, 0, (option.sub or option.textpos) and 14 or 18),
		BackgroundTransparency = 1,
		Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix,
		TextSize = (option.sub or option.textpos) and 14 or 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.fromRGB(210, 210, 210),
		TextXAlignment = Enum.TextXAlignment[(option.sub or option.textpos) and "Center" or "Left"],
		Parent = (option.sub or option.textpos) and option.slider or option.main
	})
	table.insert(library.theme, option.fill)
	library:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(115, 115, 115)),
			ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
		}),
		Rotation = -90,
		Parent = option.fill
	})
	if option.min >= 0 then
		option.fill.Size = UDim2.new((option.value - option.min) / (option.max - option.min), 0, 1, 0)
	else
		option.fill.Position = UDim2.new((0 - option.min) / (option.max - option.min), 0, 0, 0)
		option.fill.Size = UDim2.new(option.value / (option.max - option.min), 0, 1, 0)
	end
	local manualInput
	option.title.Focused:connect(function()
		if not manualInput then
			option.title:ReleaseFocus()
			option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
		end
	end)
	option.title.FocusLost:connect(function()
		option.slider.BorderColor3 = Color3.new()
		if manualInput then
			if tonumber(option.title.Text) then
				option:SetValue(tonumber(option.title.Text))
			else
				option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
			end
		end
		manualInput = false
	end)
	local interest = (option.sub or option.textpos) and option.slider or option.main
	interest.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			if inputService:IsKeyDown(Enum.KeyCode.LeftControl) or inputService:IsKeyDown(Enum.KeyCode.RightControl) then
				manualInput = true
				option.title:CaptureFocus()
			else
				library.slider = option
				option.slider.BorderColor3 = library.flags["Menu Accent Color"]
				option:SetValue(option.min + ((input.Position.X - option.slider.AbsolutePosition.X) / option.slider.AbsoluteSize.X) * (option.max - option.min))
			end
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				option.slider.BorderColor3 = library.flags["Menu Accent Color"]
			end
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
	end)
	interest.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	interest.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			library.tooltip.Position = UDim2.new(2)
			if option ~= library.slider then
				option.slider.BorderColor3 = Color3.new()
			end
		end
	end)

	function option:SetValue(value, nocallback)
		if typeof(value) ~= "number" then
			value = 0
		end
		value = library.round(value, option.float)
		value = math.clamp(value, self.min, self.max)
		if self.min >= 0 then
			option.fill:TweenSize(UDim2.new((value - self.min) / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.05, true)
		else
			option.fill:TweenPosition(UDim2.new((0 - self.min) / (self.max - self.min), 0, 0, 0), "Out", "Quad", 0.05, true)
			option.fill:TweenSize(UDim2.new(value / (self.max - self.min), 0, 1, 0), "Out", "Quad", 0.1, true)
		end
		library.flags[self.flag] = value
		self.value = value
		option.title.Text = (option.text == "nil" and "" or option.text .. ": ") .. option.value .. option.suffix
		if not nocallback then
			self.callback(value)
		end
	end
	delay(1, function()
		if library then
			option:SetValue(option.value)
		end
	end)
end

local function createList(option, parent)
	option.hasInit = true
	if option.sub then
		option.main = option:getMain()
		option.main.Size = UDim2.new(1, 0, 0, 48)
	else
		option.main = library:Create("Frame", {
			LayoutOrder = option.position,
			Size = UDim2.new(1, 0, 0, option.text == "nil" and 30 or 48),
			BackgroundTransparency = 1,
			Parent = parent
		})
		if option.text ~= "nil" then
			library:Create("TextLabel", {
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 0, 18),
				BackgroundTransparency = 1,
				Text = option.text,
				TextSize = 15,
				Font = Enum.Font.Code,
				TextColor3 = Color3.fromRGB(210, 210, 210),
				TextXAlignment = Enum.TextXAlignment.Left,
				Parent = option.main
			})
		end
	end

	local function getMultiText()
		local s = ""
		for _, value in next, option.values do
			s = s .. (option.value[value] and (tostring(value) .. ", ") or "")
		end
		return string.sub(s, 1, #s - 2)
	end
	option.listvalue = library:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, (option.text == "nil" and not option.sub) and 4 or 22),
		Size = UDim2.new(1, -12, 0, 22),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Text = " " .. (typeof(option.value) == "string" and option.value or getMultiText()),
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		Parent = option.main
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = option.listvalue
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.listvalue
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.listvalue
	})
	option.arrow = library:Create("ImageLabel", {
		Position = UDim2.new(1, -16, 0, 7),
		Size = UDim2.new(0, 8, 0, 8),
		Rotation = 90,
		BackgroundTransparency = 1,
		Image = "rbxassetid://4918373417",
		ImageColor3 = Color3.new(1, 1, 1),
		ScaleType = Enum.ScaleType.Fit,
		ImageTransparency = 0.4,
		Parent = option.listvalue
	})
	option.holder = library:Create("TextButton", {
		ZIndex = 4,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		Text = "",
		AutoButtonColor = false,
		Visible = false,
		Parent = library.base
	})
	option.content = library:Create("ScrollingFrame", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarImageColor3 = Color3.new(),
		ScrollBarThickness = 3,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png",
		Parent = option.holder
	})
	library:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.holder
	})
	library:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.holder
	})
	local layout = library:Create("UIListLayout", {
		Padding = UDim.new(0, 2),
		Parent = option.content
	})
	library:Create("UIPadding", {
		PaddingTop = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 4),
		Parent = option.content
	})
	local valueCount = 0
	layout.Changed:connect(function()
		option.holder.Size = UDim2.new(0, option.listvalue.AbsoluteSize.X, 0, 8 + (valueCount > option.max and (-2 + (option.max * 22)) or layout.AbsoluteContentSize.Y))
		option.content.CanvasSize = UDim2.new(0, 0, 0, 8 + layout.AbsoluteContentSize.Y)
	end)
	local interest = option.sub and option.listvalue or option.main
	option.listvalue.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			if library.popup == option then
				library.popup:Close()
				return
			end
			if library.popup then
				library.popup:Close()
			end
			option.arrow.Rotation = -90
			option.open = true
			option.holder.Visible = true
			local pos = option.main.AbsolutePosition
			option.holder.Position = UDim2.new(0, pos.X + 6, 0, pos.Y + ((option.text == "nil" and not option.sub) and 66 or 84))
			library.popup = option
			option.listvalue.BorderColor3 = library.flags["Menu Accent Color"]
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				option.listvalue.BorderColor3 = library.flags["Menu Accent Color"]
			end
		end
	end)
	option.listvalue.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if not option.open then
				option.listvalue.BorderColor3 = Color3.new()
			end
		end
	end)
	interest.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
	end)
	interest.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	interest.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			library.tooltip.Position = UDim2.new(2)
		end
	end)

	local selected
	function option:AddValue(value, state)
		if self.labels[value] then
			return
		end
		valueCount = valueCount + 1
		if self.multiselect then
			self.values[value] = state
		else
			if not table.find(self.values, value) then
				table.insert(self.values, value)
			end
		end
		local label = library:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Text = value,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextTransparency = self.multiselect and (self.value[value] and 1 or 0) or self.value == value and 1 or 0,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = option.content
		})
		self.labels[value] = label
		local labelOverlay = library:Create("TextLabel", {
			ZIndex = 4,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 0.8,
			Text = " " .. value,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = library.flags["Menu Accent Color"],
			TextXAlignment = Enum.TextXAlignment.Left,
			Visible = self.multiselect and self.value[value] or self.value == value,
			Parent = label
		})
		selected = selected or self.value == value and labelOverlay
		table.insert(library.theme, labelOverlay)
		label.InputBegan:connect(function(input)
			if input.UserInputType.Name == "MouseButton1" then
				if self.multiselect then
					self.value[value] = not self.value[value]
					self:SetValue(self.value)
				else
					self:SetValue(value)
					self:Close()
				end
			end
		end)
	end
	for i, value in next, option.values do
		option:AddValue(tostring(typeof(i) == "number" and value or i))
	end

	function option:RemoveValue(value)
		local label = self.labels[value]
		if label then
			label:Destroy()
			self.labels[value] = nil
			valueCount = valueCount - 1
			if self.multiselect then
				self.values[value] = nil
				self:SetValue(self.value)
			else
				table.remove(self.values, table.find(self.values, value))
				if self.value == value then
					selected = nil
					self:SetValue(self.values[1] or "")
				end
			end
		end
	end

	function option:SetValue(value, nocallback)
		if self.multiselect and typeof(value) ~= "table" then
			value = {}
			for i, v in next, self.values do
				value[v] = false
			end
		end
		self.value = typeof(value) == "table" and value or tostring(table.find(self.values, value) and value or self.values[1])
		library.flags[self.flag] = self.value
		option.listvalue.Text = " " .. (self.multiselect and getMultiText() or self.value)
		if self.multiselect then
			for name, label in next, self.labels do
				label.TextTransparency = self.value[name] and 1 or 0
				if label:FindFirstChild"TextLabel" then
					label.TextLabel.Visible = self.value[name]
				end
			end
		else
			if selected then
				selected.TextTransparency = 0
				if selected:FindFirstChild"TextLabel" then
					selected.TextLabel.Visible = false
				end
			end
			if self.labels[self.value] then
				selected = self.labels[self.value]
				selected.TextTransparency = 1
				if selected:FindFirstChild"TextLabel" then
					selected.TextLabel.Visible = true
				end
			end
		end
		if not nocallback then
			self.callback(self.value)
		end
	end
	delay(1, function()
		if library then
			option:SetValue(option.value)
		end
	end)

	function option:Close()
		library.popup = nil
		option.arrow.Rotation = 90
		self.open = false
		option.holder.Visible = false
		option.listvalue.BorderColor3 = Color3.new()
	end
	return option
end

local function createBox(option, parent)
	option.hasInit = true
	option.main = library:Create("Frame", {
		LayoutOrder = option.position,
		Size = UDim2.new(1, 0, 0, option.text == "nil" and 28 or 44),
		BackgroundTransparency = 1,
		Parent = parent
	})
	if option.text ~= "nil" then
		option.title = library:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 0, 18),
			BackgroundTransparency = 1,
			Text = option.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = option.main
		})
	end
	option.holder = library:Create("Frame", {
		Position = UDim2.new(0, 6, 0, option.text == "nil" and 4 or 20),
		Size = UDim2.new(1, -12, 0, 20),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
		BorderColor3 = Color3.new(),
		Parent = option.main
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.8,
		Parent = option.holder
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.holder
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.holder
	})
	local inputvalue = library:Create("TextBox", {
		Position = UDim2.new(0, 4, 0, 0),
		Size = UDim2.new(1, -4, 1, 0),
		BackgroundTransparency = 1,
		Text = "  " .. option.value,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = true,
		ClearTextOnFocus = false,
		Parent = option.holder
	})
	inputvalue.FocusLost:connect(function(enter)
		option.holder.BorderColor3 = Color3.new()
		option:SetValue(inputvalue.Text, enter)
	end)
	inputvalue.Focused:connect(function()
		option.holder.BorderColor3 = library.flags["Menu Accent Color"]
	end)
	inputvalue.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			inputvalue.Text = ""
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				option.holder.BorderColor3 = library.flags["Menu Accent Color"]
			end
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
	end)
	inputvalue.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	inputvalue.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if not inputvalue:IsFocused() then
				option.holder.BorderColor3 = Color3.new()
			end
			library.tooltip.Position = UDim2.new(2)
		end
	end)

	function option:SetValue(value, enter)
		if tostring(value) == "" then
			inputvalue.Text = self.value
		else
			library.flags[self.flag] = tostring(value)
			self.value = tostring(value)
			inputvalue.Text = self.value
			self.callback(value, enter)
		end
	end
	delay(1, function()
		if library then
			option:SetValue(option.value)
		end
	end)
end

local function createColorPickerWindow(option)
	option.mainHolder = library:Create("TextButton", {
		ZIndex = 4,
		Size = UDim2.new(0, option.trans and 200 or 184, 0, 200),
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BorderColor3 = Color3.new(),
		AutoButtonColor = false,
		Visible = false,
		Parent = library.base
	})
	library:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.mainHolder
	})
	library:Create("ImageLabel", {
		ZIndex = 4,
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.mainHolder
	})
	local hue, sat, val = Color3.toHSV(option.color)
	hue, sat, val = hue == 0 and 1 or hue, sat + 0.005, val - 0.005
	local editinghue
	local editingsatval
	local editingtrans
	local transMain
	if option.trans then
		transMain = library:Create("ImageLabel", {
			ZIndex = 5,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = "rbxassetid://2454009026",
			ImageColor3 = Color3.fromHSV(hue, 1, 1),
			Rotation = 180,
			Parent = library:Create("ImageLabel", {
				ZIndex = 4,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -6, 0, 6),
				Size = UDim2.new(0, 10, 1, -12),
				BorderColor3 = Color3.new(),
				Image = "rbxassetid://4632082392",
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 5, 0, 5),
				Parent = option.mainHolder
			})
		})
		option.transSlider = library:Create("Frame", {
			ZIndex = 5,
			Position = UDim2.new(0, 0, option.trans, 0),
			Size = UDim2.new(1, 0, 0, 2),
			BackgroundColor3 = Color3.fromRGB(38, 41, 65),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			Parent = transMain
		})
		transMain.InputBegan:connect(function(Input)
			if Input.UserInputType.Name == "MouseButton1" then
				editingtrans = true
				option:SetTrans(1 - ((Input.Position.Y - transMain.AbsolutePosition.Y) / transMain.AbsoluteSize.Y))
			end
		end)
		transMain.InputEnded:connect(function(Input)
			if Input.UserInputType.Name == "MouseButton1" then
				editingtrans = false
			end
		end)
	end

	local hueMain = library:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 6, 1, -6),
		Size = UDim2.new(1, option.trans and -28 or -12, 0, 10),
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderColor3 = Color3.new(),
		Parent = option.mainHolder
	})

	local Gradient = library:Create("UIGradient", {
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
			ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
			ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
			ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
			ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
		}),
		Parent = hueMain
	})

	local hueSlider = library:Create("Frame", {
		ZIndex = 4,
		Position = UDim2.new(1 - hue, 0, 0, 0),
		Size = UDim2.new(0, 2, 1, 0),
		BackgroundColor3 = Color3.fromRGB(38, 41, 65),
		BorderColor3 = Color3.fromRGB(255, 255, 255),
		Parent = hueMain
	})
	hueMain.InputBegan:connect(function(Input)
		if Input.UserInputType.Name == "MouseButton1" then
			editinghue = true
			X = (hueMain.AbsolutePosition.X + hueMain.AbsoluteSize.X) - hueMain.AbsolutePosition.X
			X = math.clamp((Input.Position.X - hueMain.AbsolutePosition.X) / X, 0, 0.995)
			option:SetColor(Color3.fromHSV(1 - X, sat, val))
		end
	end)
	hueMain.InputEnded:connect(function(Input)
		if Input.UserInputType.Name == "MouseButton1" then
			editinghue = false
		end
	end)

	local satval = library:Create("ImageLabel", {
		ZIndex = 4,
		Position = UDim2.new(0, 6, 0, 6),
		Size = UDim2.new(1, option.trans and -28 or -12, 1, -28),
		BackgroundColor3 = Color3.fromHSV(hue, 1, 1),
		BorderColor3 = Color3.new(),
		Image = "rbxassetid://4155801252",
		ClipsDescendants = true,
		Parent = option.mainHolder
	})

	local satvalSlider = library:Create("Frame", {
		ZIndex = 4,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(sat, 0, 1 - val, 0),
		Size = UDim2.new(0, 4, 0, 4),
		Rotation = 45,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		Parent = satval
	})
	satval.InputBegan:connect(function(Input)
		if Input.UserInputType.Name == "MouseButton1" then
			editingsatval = true
			X = (satval.AbsolutePosition.X + satval.AbsoluteSize.X) - satval.AbsolutePosition.X
			Y = (satval.AbsolutePosition.Y + satval.AbsoluteSize.Y) - satval.AbsolutePosition.Y
			X = math.clamp((Input.Position.X - satval.AbsolutePosition.X) / X, 0.005, 1)
			Y = math.clamp((Input.Position.Y - satval.AbsolutePosition.Y) / Y, 0, 0.995)
			option:SetColor(Color3.fromHSV(hue, X, 1 - Y))
		end
	end)
	library:AddConnection(inputService.InputChanged, function(Input)
		if Input.UserInputType.Name == "MouseMovement" then
			if editingsatval then
				X = (satval.AbsolutePosition.X + satval.AbsoluteSize.X) - satval.AbsolutePosition.X
				Y = (satval.AbsolutePosition.Y + satval.AbsoluteSize.Y) - satval.AbsolutePosition.Y
				X = math.clamp((Input.Position.X - satval.AbsolutePosition.X) / X, 0.005, 1)
				Y = math.clamp((Input.Position.Y - satval.AbsolutePosition.Y) / Y, 0, 0.995)
				option:SetColor(Color3.fromHSV(hue, X, 1 - Y))
			elseif editinghue then
				X = (hueMain.AbsolutePosition.X + hueMain.AbsoluteSize.X) - hueMain.AbsolutePosition.X
				X = math.clamp((Input.Position.X - hueMain.AbsolutePosition.X) / X, 0, 0.995)
				option:SetColor(Color3.fromHSV(1 - X, sat, val))
			elseif editingtrans then
				option:SetTrans(1 - ((Input.Position.Y - transMain.AbsolutePosition.Y) / transMain.AbsoluteSize.Y))
			end
		end
	end)
	satval.InputEnded:connect(function(Input)
		if Input.UserInputType.Name == "MouseButton1" then
			editingsatval = false
		end
	end)
	function option:updateVisuals(Color)
		hue, sat, val = Color3.toHSV(Color)
		hue = hue == 0 and 1 or hue
		satval.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
		if option.trans then
			transMain.ImageColor3 = Color3.fromHSV(hue, 1, 1)
		end
		hueSlider.Position = UDim2.new(1 - hue, 0, 0, 0)
		satvalSlider.Position = UDim2.new(sat, 0, 1 - val, 0)
	end
	return option
end

local function createColor(option, parent)
	option.hasInit = true
	if option.sub then
		option.main = option:getMain()
	else
		option.main = library:Create("Frame", {
			LayoutOrder = option.position,
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			Parent = parent
		})
		option.title = library:Create("TextLabel", {
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			BackgroundTransparency = 1,
			Text = option.text,
			TextSize = 15,
			Font = Enum.Font.Code,
			TextColor3 = Color3.fromRGB(210, 210, 210),
			TextXAlignment = Enum.TextXAlignment.Left,
			Parent = option.main
		})
	end
	option.visualize = library:Create(option.sub and "TextButton" or "Frame", {
		Position = UDim2.new(1, -(option.subpos or 0) - 24, 0, 4),
		Size = UDim2.new(0, 18, 0, 12),
		SizeConstraint = Enum.SizeConstraint.RelativeYY,
		BackgroundColor3 = option.color,
		BorderColor3 = Color3.new(),
		Parent = option.main
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2454009026",
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.6,
		Parent = option.visualize
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.visualize
	})
	library:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = option.visualize
	})
	local interest = option.sub and option.visualize or option.main
	if option.sub then
		option.visualize.Text = ""
		option.visualize.AutoButtonColor = false
	end
	interest.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			if not option.mainHolder then
				createColorPickerWindow(option)
			end
			if library.popup == option then
				library.popup:Close()
				return
			end
			if library.popup then
				library.popup:Close()
			end
			option.open = true
			local pos = option.main.AbsolutePosition
			option.mainHolder.Position = UDim2.new(0, pos.X + 36 + (option.trans and -16 or 0), 0, pos.Y + 56)
			option.mainHolder.Visible = true
			library.popup = option
			option.visualize.BorderColor3 = library.flags["Menu Accent Color"]
		end
		if input.UserInputType.Name == "MouseMovement" then
			if not library.warning and not library.slider then
				option.visualize.BorderColor3 = library.flags["Menu Accent Color"]
			end
			if option.tip then
				library.tooltip.Text = option.tip
				library.tooltip.Size = UDim2.new(0, textService:GetTextSize(option.tip, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X, 0, 20)
			end
		end
	end)
	interest.InputChanged:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if option.tip then
				library.tooltip.Position = UDim2.new(0, input.Position.X + 26, 0, input.Position.Y + 36)
			end
		end
	end)
	interest.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseMovement" then
			if not option.open then
				option.visualize.BorderColor3 = Color3.new()
			end
			library.tooltip.Position = UDim2.new(2)
		end
	end)
	function option:SetColor(newColor, nocallback)
		if typeof(newColor) == "table" then
			newColor = Color3.new(newColor[1], newColor[2], newColor[3])
		end
		newColor = newColor or Color3.new(1, 1, 1)
		if self.mainHolder then
			self:updateVisuals(newColor)
		end
		option.visualize.BackgroundColor3 = newColor
		library.flags[self.flag] = newColor
		self.color = newColor
		if not nocallback then
			self.callback(newColor)
		end
	end
	if option.trans then
		function option:SetTrans(value, manual)
			value = math.clamp(tonumber(value) or 0, 0, 1)
			if self.transSlider then
				self.transSlider.Position = UDim2.new(0, 0, value, 0)
			end
			self.trans = value
			library.flags[self.flag .. " Transparency"] = 1 - value
			self.calltrans(value)
		end
		option:SetTrans(option.trans)
	end
	delay(1, function()
		if library then
			option:SetColor(option.color)
		end
	end)
    
	function option:Close()
		library.popup = nil
		self.open = false
		self.mainHolder.Visible = false
		option.visualize.BorderColor3 = Color3.new()
	end
end

function library:AddTab(title, pos)
	local tab = {
		canInit = true,
		columns = {},
		title = tostring(title)
	}
	table.insert(self.tabs, pos or #self.tabs + 1, tab)

	function tab:AddColumn()
		local column = {
			sections = {},
			position = #self.columns,
			canInit = true,
			tab = self
		}
		table.insert(self.columns, column)

		function column:AddSection(title)
			local section = {
				title = tostring(title),
				options = {},
				canInit = true,
				column = self
			}
			table.insert(self.sections, section)
        
			function section:AddLabel(text)
				local option = {
					text = text
				}
				option.section = self
				option.type = "label"
				option.position = #self.options
				option.canInit = true
				table.insert(self.options, option)
				if library.hasInit and self.hasInit then
					createLabel(option, self.content)
				else
					option.Init = createLabel
				end
				return option
			end

			function section:AddDivider(text)
				local option = {
					text = text
				}
				option.section = self
				option.type = "divider"
				option.position = #self.options
				option.canInit = true
				table.insert(self.options, option)
				if library.hasInit and self.hasInit then
					createDivider(option, self.content)
				else
					option.Init = createDivider
				end
				return option
			end

			function section:AddToggle(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.state = typeof(option.state) == "boolean" and option.state or false
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.type = "toggle"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.subcount = 0
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				option.style = option.style == 2
				library.flags[option.flag] = option.state
				table.insert(self.options, option)
				library.options[option.flag] = option

				function option:AddColor(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddColor(subOption)
				end

				function option:AddBind(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddBind(subOption)
				end

				function option:AddList(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddList(subOption)
				end

				function option:AddSlider(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddSlider(subOption)
				end
				if library.hasInit and self.hasInit then
					createToggle(option, self.content)
				else
					option.Init = createToggle
				end
				return option
			end

			function section:AddButton(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.type = "button"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.subcount = 0
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				table.insert(self.options, option)
				library.options[option.flag] = option

				function option:AddBind(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						option.main.Size = UDim2.new(1, 0, 0, 40)
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddBind(subOption)
				end

				function option:AddColor(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						option.main.Size = UDim2.new(1, 0, 0, 40)
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddColor(subOption)
				end
				if library.hasInit and self.hasInit then
					createButton(option, self.content)
				else
					option.Init = createButton
				end
				return option
			end

			function section:AddBind(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.key = (option.key and option.key.Name) or option.key or "none"
				option.nomouse = typeof(option.nomouse) == "boolean" and option.nomouse or false
				option.mode = typeof(option.mode) == "string" and (option.mode == "toggle" or option.mode == "hold" and option.mode) or "toggle"
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.type = "bind"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				table.insert(self.options, option)
				library.options[option.flag] = option
				if library.hasInit and self.hasInit then
					createBind(option, self.content)
				else
					option.Init = createBind
				end
				return option
			end

			function section:AddSlider(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.min = typeof(option.min) == "number" and option.min or 0
				option.max = typeof(option.max) == "number" and option.max or 0
				option.value = option.min < 0 and 0 or math.clamp(typeof(option.value) == "number" and option.value or option.min, option.min, option.max)
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.float = typeof(option.value) == "number" and option.float or 1
				option.suffix = option.suffix and tostring(option.suffix) or ""
				option.textpos = option.textpos == 2
				option.type = "slider"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.subcount = 0
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				library.flags[option.flag] = option.value
				table.insert(self.options, option)
				library.options[option.flag] = option
				function option:AddColor(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddColor(subOption)
				end

				function option:AddBind(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddBind(subOption)
				end
				if library.hasInit and self.hasInit then
					createSlider(option, self.content)
				else
					option.Init = createSlider
				end
				return option
			end

			function section:AddList(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.values = typeof(option.values) == "table" and option.values or {}
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.multiselect = typeof(option.multiselect) == "boolean" and option.multiselect or false
				option.value = option.multiselect and (typeof(option.value) == "table" and option.value or {}) or tostring(option.value or option.values[1] or "")
				if option.multiselect then
					for i, v in next, option.values do
						option.value[v] = false
					end
				end
				option.max = option.max or 4
				option.open = false
				option.type = "list"
				option.position = #self.options
				option.labels = {}
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.subcount = 0
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				library.flags[option.flag] = option.value
				table.insert(self.options, option)
				library.options[option.flag] = option

				function option:AddValue(value, state)
					if self.multiselect then
						self.values[value] = state
					else
						table.insert(self.values, value)
					end
				end

				function option:AddColor(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddColor(subOption)
				end

				function option:AddBind(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddBind(subOption)
				end
				if library.hasInit and self.hasInit then
					createList(option, self.content)
				else
					option.Init = createList
				end
				return option
			end

			function section:AddBox(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.value = tostring(option.value or "")
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.type = "box"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				library.flags[option.flag] = option.value
				table.insert(self.options, option)
				library.options[option.flag] = option
				if library.hasInit and self.hasInit then
					createBox(option, self.content)
				else
					option.Init = createBox
				end
				return option
			end

			function section:AddColor(option)
				option = typeof(option) == "table" and option or {}
				option.section = self
				option.text = tostring(option.text)
				option.color = typeof(option.color) == "table" and Color3.new(option.color[1], option.color[2], option.color[3]) or option.color or Color3.new(1, 1, 1)
				option.callback = typeof(option.callback) == "function" and option.callback or function()
				end
				option.calltrans = typeof(option.calltrans) == "function" and option.calltrans or (option.calltrans == 1 and option.callback) or function()
				end
				option.open = false
				option.trans = tonumber(option.trans)
				option.subcount = 1
				option.type = "color"
				option.position = #self.options
				option.flag = (library.flagprefix and library.flagprefix .. " " or "") .. (option.flag or option.text)
				option.canInit = (option.canInit ~= nil and option.canInit) or true
				option.tip = option.tip and tostring(option.tip)
				library.flags[option.flag] = option.color
				table.insert(self.options, option)
				library.options[option.flag] = option
				function option:AddColor(subOption)
					subOption = typeof(subOption) == "table" and subOption or {}
					subOption.sub = true
					subOption.subpos = self.subcount * 24
					function subOption:getMain()
						return option.main
					end
					self.subcount = self.subcount + 1
					return section:AddColor(subOption)
				end
				if option.trans then
					library.flags[option.flag .. " Transparency"] = option.trans
				end
				if library.hasInit and self.hasInit then
					createColor(option, self.content)
				else
					option.Init = createColor
				end
				return option
			end

			function section:SetTitle(newTitle)
				self.title = tostring(newTitle)
				if self.titleText then
					self.titleText.Text = tostring(newTitle)
					self.titleText.Size = UDim2.new(0, textService:GetTextSize(self.title, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 10, 0, 3)
				end
			end

			function section:Init()
				if self.hasInit then
					return
				end
				self.hasInit = true
				self.main = library:Create("Frame", {
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Parent = column.main
				})
				self.content = library:Create("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.fromRGB(60, 60, 60),
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				})
				library:Create("ImageLabel", {
					Size = UDim2.new(1, -2, 1, -2),
					Position = UDim2.new(0, 1, 0, 1),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.new(),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = self.main
				})
				table.insert(library.theme, library:Create("Frame", {
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = library.flags["Menu Accent Color"],
					BorderSizePixel = 0,
					BorderMode = Enum.BorderMode.Inset,
					Parent = self.main
				}))
				local layout = library:Create("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 2),
					Parent = self.content
				})
				library:Create("UIPadding", {
					PaddingTop = UDim.new(0, 12),
					Parent = self.content
				})
				self.titleText = library:Create("TextLabel", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, 12, 0, 0),
					Size = UDim2.new(0, textService:GetTextSize(self.title, 15, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 10, 0, 3),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderSizePixel = 0,
					Text = self.title,
					TextSize = 15,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = self.main
				})
				layout.Changed:connect(function()
					self.main.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y + 16)
				end)
				for _, option in next, self.options do
					if option.canInit then
						option.Init(option, self.content)
					end
				end
			end
			if library.hasInit and self.hasInit then
				section:Init()
			end
			return section
		end

		function column:Init()
			if self.hasInit then
				return
			end
			self.hasInit = true
			self.main = library:Create("ScrollingFrame", {
				ZIndex = 2,
				Position = UDim2.new(0, 6 + (self.position * 239), 0, 2),
				Size = UDim2.new(0, 233, 1, -4),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarImageColor3 = Color3.fromRGB(),
				ScrollBarThickness = 4,
				VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				Visible = false,
				Parent = library.columnHolder
			})
			local layout = library:Create("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 12),
				Parent = self.main
			})
			library:Create("UIPadding", {
				PaddingTop = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				Parent = self.main
			})
			layout.Changed:connect(function()
				self.main.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 14)
			end)
			for _, section in next, self.sections do
				if section.canInit and #section.options > 0 then
					section:Init()
				end
			end
		end
		if library.hasInit and self.hasInit then
			column:Init()
		end
		return column
	end

	function tab:Init()
		if self.hasInit then
			return
		end
		self.hasInit = true
		local size = textService:GetTextSize(self.title, 18, Enum.Font.Code, Vector2.new(9e9, 9e9)).X + 10
		self.button = library:Create("TextLabel", {
			Position = UDim2.new(0, library.tabSize, 0, 22),
			Size = UDim2.new(0, size, 0, 30),
			BackgroundTransparency = 1,
			Text = self.title,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
			Font = Enum.Font.Code,
			TextWrapped = true,
			ClipsDescendants = true,
			Parent = library.main
		})
		library.tabSize = library.tabSize + size
		self.button.InputBegan:connect(function(input)
			if input.UserInputType.Name == "MouseButton1" then
				library:selectTab(self)
			end
		end)
		for _, column in next, self.columns do
			if column.canInit then
				column:Init()
			end
		end
	end
	if self.hasInit then
		tab:Init()
	end
	return tab
end

function library:AddWarning(warning)
	warning = typeof(warning) == "table" and warning or {}
	warning.text = tostring(warning.text)
	warning.type = warning.type == "confirm" and "confirm" or ""
	local answer
	function warning:Show()
		library.warning = warning
		if warning.main and warning.type == "" then
			return
		end
		if library.popup then
			library.popup:Close()
		end
		if not warning.main then
			warning.main = library:Create("TextButton", {
				ZIndex = 2,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 0.6,
				BackgroundColor3 = Color3.new(),
				BorderSizePixel = 0,
				Text = "",
				AutoButtonColor = false,
				Parent = library.main
			})
			warning.message = library:Create("TextLabel", {
				ZIndex = 2,
				Position = UDim2.new(0, 20, 0.5, -60),
				Size = UDim2.new(1, -40, 0, 40),
				BackgroundTransparency = 1,
				TextSize = 16,
				Font = Enum.Font.Code,
				TextColor3 = Color3.new(1, 1, 1),
				TextWrapped = true,
				RichText = true,
				Parent = warning.main
			})
			if warning.type == "confirm" then
				local button = library:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -105, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "Yes",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = warning.main
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = button
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = button
				})
				local button1 = library:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, 5, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BorderColor3 = Color3.new(),
					Text = "No",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = warning.main
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = button1
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2592362371",
					ImageColor3 = Color3.fromRGB(60, 60, 60),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 62, 62),
					Parent = button1
				})
				button.InputBegan:connect(function(input)
					if input.UserInputType.Name == "MouseButton1" then
						answer = true
					end
				end)
				button1.InputBegan:connect(function(input)
					if input.UserInputType.Name == "MouseButton1" then
						answer = false
					end
				end)
			else
				local button = library:Create("TextLabel", {
					ZIndex = 2,
					Position = UDim2.new(0.5, -50, 0.5, -10),
					Size = UDim2.new(0, 100, 0, 20),
					BackgroundColor3 = Color3.fromRGB(30, 30, 30),
					BorderColor3 = Color3.new(),
					Text = "OK",
					TextSize = 16,
					Font = Enum.Font.Code,
					TextColor3 = Color3.new(1, 1, 1),
					Parent = warning.main
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Image = "rbxassetid://2454009026",
					ImageColor3 = Color3.new(),
					ImageTransparency = 0.8,
					Parent = button
				})
				library:Create("ImageLabel", {
					ZIndex = 2,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(1, -2, 1, -2),
					BackgroundTransparency = 1,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(50, 50, 50),
					Parent = button
				})
				button.InputBegan:connect(function(input)
					if input.UserInputType.Name == "MouseButton1" then
						answer = true
					end
				end)
			end
		end
		warning.main.Visible = true
		warning.message.Text = warning.text
		repeat
			wait()
		until answer ~= nil
		spawn(warning.Close)
		library.warning = nil
		return answer
	end

	function warning:Close()
		answer = nil
		if not warning.main then
			return
		end
		warning.main.Visible = false
	end
	return warning
end

function library:Close()
	self.open = not self.open
	if self.open then
		inputService.MouseIconEnabled = false
	else
		inputService.MouseIconEnabled = self.mousestate
	end
	if self.main then
		if self.popup then
			self.popup:Close()
		end
		self.main.Visible = self.open
		self.cursor.Visible  = self.open
		self.cursor1.Visible  = self.open
	end
end

function library:Init()
	if self.hasInit then
		return
	end
	self.hasInit = true
	self.base = library:Create("ScreenGui", {
		IgnoreGuiInset = true
	})
	if runService:IsStudio() then
		self.base.Parent = script.Parent.Parent
	elseif syn then
		syn.protect_gui(self.base)
		self.base.Parent = game:GetService"CoreGui"
	end
	self.main = self:Create("ImageButton", {
		AutoButtonColor = false,
		Position = UDim2.new(0, 100, 0, 46),
		Size = UDim2.new(0, 90, 0, 90), --500, 600
		BackgroundColor3 = Color3.fromRGB(20, 20, 20),
		BorderColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Tile,
		Modal = true,
		Visible = false,
		Parent = self.base
	})
	local top = self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30),
		BorderColor3 = Color3.new(),
		Parent = self.main
	})
	self:Create("TextLabel", {
		Position = UDim2.new(0, 6, 0, -1),
		Size = UDim2.new(0, 0, 0, 20),
		BackgroundTransparency = 1,
		Text = tostring(self.title),
		Font = Enum.Font.Code,
		TextSize = 18,
		TextColor3 = Color3.new(1, 1, 1),
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = self.main
	})
	table.insert(library.theme, self:Create("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 0, 24),
		BackgroundColor3 = library.flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	}))
	library:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ImageColor3 = Color3.new(),
		ImageTransparency = 0.4,
		Parent = top
	})
	self.tabHighlight = self:Create("Frame", {
		BackgroundColor3 = library.flags["Menu Accent Color"],
		BorderSizePixel = 0,
		Parent = self.main
	})
	table.insert(library.theme, self.tabHighlight)
	self.columnHolder = self:Create("Frame", {
		Position = UDim2.new(0, 5, 0, 55),
		Size = UDim2.new(1, -10, 1, -60),
		BackgroundTransparency = 1,
		Parent = self.main
	})
	self.cursor = self:Create("Triangle", {
		Color = Color3.fromRGB(180, 180, 180),
		Transparency = 0.6,
	})
	self.cursor1 = self:Create("Triangle", {
		Color = Color3.fromRGB(240, 240, 240),
		Transparency = 0.6,
	})
	self.tooltip = self:Create("TextLabel", {
		ZIndex = 2,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 15,
		Font = Enum.Font.Code,
		TextColor3 = Color3.new(1, 1, 1),
		Visible = true,
		Parent = self.base
	})
	self:Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		Size = UDim2.new(1, 10, 1, 0),
		Style = Enum.FrameStyle.RobloxRound,
		Parent = self.tooltip
	})
	self:Create("ImageLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.fromRGB(60, 60, 60),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = self.main
	})
	self:Create("ImageLabel", {
		Size = UDim2.new(1, -2, 1, -2),
		Position = UDim2.new(0, 1, 0, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://2592362371",
		ImageColor3 = Color3.new(),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(2, 2, 62, 62),
		Parent = self.main
	})
	top.InputBegan:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			dragObject = self.main
			dragging = true
			dragStart = input.Position
			startPos = dragObject.Position
			if library.popup then
				library.popup:Close()
			end
		end
	end)
	top.InputChanged:connect(function(input)
		if dragging and input.UserInputType.Name == "MouseMovement" then
			dragInput = input
		end
	end)
	top.InputEnded:connect(function(input)
		if input.UserInputType.Name == "MouseButton1" then
			dragging = false
		end
	end)
	function self:selectTab(tab)
		if self.currentTab == tab then
			return
		end
		if library.popup then
			library.popup:Close()
		end
		if self.currentTab then
			self.currentTab.button.TextColor3 = Color3.fromRGB(255, 255, 255)
			for _, column in next, self.currentTab.columns do
				column.main.Visible = false
			end
		end
		self.main.Size = UDim2.new(0, 16 + ((#tab.columns < 2 and 2 or #tab.columns) * 239), 0, 600)
		self.currentTab = tab
		tab.button.TextColor3 = library.flags["Menu Accent Color"]
		self.tabHighlight:TweenPosition(UDim2.new(0, tab.button.Position.X.Offset, 0, 50), "Out", "Quad", 0.2, true)
		self.tabHighlight:TweenSize(UDim2.new(0, tab.button.AbsoluteSize.X, 0, -1), "Out", "Quad", 0.1, true)
		for _, column in next, tab.columns do
			column.main.Visible = true
		end
	end
	spawn(function()
		while library do
			wait(1)
			local Configs = self:GetConfigs()
			for _, config in next, Configs do
				if not table.find(self.options["Config List"].values, config) then
					self.options["Config List"]:AddValue(config)
				end
			end
			for i, config in next, self.options["Config List"].values do
				if not table.find(Configs, config) then
					self.options["Config List"]:RemoveValue(config)
				end
			end
		end
	end)
	for _, tab in next, self.tabs do
		if tab.canInit then
			tab:Init()
			self:selectTab(tab)
		end
	end
	self:AddConnection(inputService.InputEnded, function(input)
		if input.UserInputType.Name == "MouseButton1" and self.slider then
			self.slider.slider.BorderColor3 = Color3.new()
			self.slider = nil
		end
	end)
	self:AddConnection(inputService.InputChanged, function(input)
		if self.open then
			if input.UserInputType.Name == "MouseMovement" then
				if self.cursor then
					local mouse = inputService:GetMouseLocation()
					local MousePos = Vector2.new(mouse.X, mouse.Y)
					self.cursor.PointA = MousePos
					self.cursor.PointB = MousePos + Vector2.new(12, 12)
					self.cursor.PointC = MousePos + Vector2.new(12, 12)
					self.cursor1.PointA = MousePos
					self.cursor1.PointB = MousePos + Vector2.new(11, 11)
					self.cursor1.PointC = MousePos + Vector2.new(11, 11)
				end
				if self.slider then
					self.slider:SetValue(self.slider.min + ((input.Position.X - self.slider.slider.AbsolutePosition.X) / self.slider.slider.AbsoluteSize.X) * (self.slider.max - self.slider.min))
				end
			end
			if input == dragInput and dragging and library.draggable then
				local delta = input.Position - dragStart
				local yPos = (startPos.Y.Offset + delta.Y) < -36 and -36 or startPos.Y.Offset + delta.Y
				dragObject:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, yPos), "Out", "Quint", 0.1, true)
			end
		end
	end)

	local Meta = getrawmetatable(game)
	local Old_index = Meta.__index
	local Old_new = Meta.__newindex
	setreadonly(Meta, false)
	Meta.__index = newcclosure(function(t, i)
		if checkcaller() then
			return Old_index(t, i)
		end
		if library and i == "MouseIconEnabled" then
			return library.mousestate
		end
		return Old_index(t, i)
	end)
	Meta.__newindex = newcclosure(function(t, i, v)
		if checkcaller() then
			return Old_new(t, i, v)
		end
		if library and i == "MouseIconEnabled" then
			library.mousestate = v
			if library.open then
				return
			end
		end
		return Old_new(t, i, v)
	end)
	setreadonly(Meta, true)
	if not getgenv().silent then
		delay(1, function()
			self:Close()
		end)
	end
end

--createhitelement
local MX_ONHIT = Instance.new("ScreenGui")
do
local OnHitFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local SampleFrame = Instance.new("Frame")
local Grad = Instance.new("Frame")
local SampleLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")

MX_ONHIT.Name = "MX_ONHIT"
MX_ONHIT.Parent = game.CoreGui
MX_ONHIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OnHitFrame.Name = "OnHitFrame"
OnHitFrame.Parent = MX_ONHIT
OnHitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnHitFrame.BackgroundTransparency = 1.000
OnHitFrame.Position = UDim2.new(0, 52, 0, -15)
OnHitFrame.Size = UDim2.new(0, 300, 0, 500)

UIListLayout.Parent = OnHitFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

SampleFrame.Name = "SampleFrame"
SampleFrame.Parent = OnHitFrame
SampleFrame.AutomaticSize = Enum.AutomaticSize.XY
SampleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SampleFrame.BackgroundTransparency = 1.000
SampleFrame.BorderColor3 = Color3.fromRGB(7, 0, 0)
SampleFrame.Size = UDim2.new(0, 0, 0, 24)

Grad.Name = "Grad"
Grad.Parent = SampleFrame
Grad.BackgroundColor3 = Color3.fromRGB(222, 232, 255)
Grad.BackgroundTransparency = 1.000
Grad.AutomaticSize = Enum.AutomaticSize.Y
Grad.BorderSizePixel = 0
Grad.Size = UDim2.new(0, 3, 0, 24)

SampleLabel.Name = "SampleLabel"
SampleLabel.Parent = Grad
SampleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.BackgroundTransparency = 1.000
SampleLabel.BorderSizePixel = 0
SampleLabel.Position = UDim2.new(1.97835922, 0, 0, 0)
SampleLabel.Size = UDim2.new(0, 0, 0, 24)
SampleLabel.Font = Enum.Font.Ubuntu
SampleLabel.Text = "TEST"
SampleLabel.TextTruncate = Enum.TextTruncate.AtEnd
SampleLabel.AutomaticSize = Enum.AutomaticSize.XY
SampleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.TextSize = 13.000
SampleLabel.TextStrokeTransparency = 0.000
SampleLabel.TextTransparency = 1.000
SampleLabel.TextXAlignment = Enum.TextXAlignment.Left

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
UIGradient.Rotation = 90
UIGradient.Parent = SampleFrame
end
 
local function CreateHitElement(text,col,time, size, size2, size3, size4)
    spawn(function()
		local Frame = MX_ONHIT.OnHitFrame.SampleFrame:Clone()
		local Grad = Frame.Grad
        local Label = Grad.SampleLabel
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 	
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})       
		library:Tween(Grad, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.000}) 
		
		Frame.Parent = MX_ONHIT.OnHitFrame
		Grad.Parent = Frame
		Label.Parent = Grad
		Label.TextColor3 = col
		Label.Text = text
		wait(time)
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})       
		library:Tween(Grad, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1.000})
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextStrokeTransparency = 1.000})
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		
		wait(0.8)
		Frame:Destroy()
		Grad:Destroy()
        Label:Destroy()
    end)
end





local function YRotation(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0)
end
local function XYRotation(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(x,y,0)
end
local function GetTeam(plr)
	return game.Teams[plr.Team.Name]
end
local Settings = {
	ESP = {
		Box = false,
		Name = false,
		Tracers = false,
		Chams = false,
		Font = 3,
		Teammates = false,
		VisibleOnly = false,
		UnlockTracers = false,
		TextSize = 16,
	}
}

local RageTab = library:AddTab("Rage")
local RageColumn = RageTab:AddColumn()
local RageColumn2 = RageTab:AddColumn()
local RageSection = RageColumn:AddSection("Main")
RageSection:AddToggle({text = "Enabled", flag = "rage_enabled"})
RageSection:AddToggle({text = "AutoWall", flag = "autowall"})
RageSection:AddSlider({text = "FOV", flag = "RageFOV", min = 0, max = 180, value = 180, suffix = "°"})
RageSection:AddSlider({text = "Min Dmg", flag = "MinDmg", min = 1, max = 100, value = 1, suffix = ""})
RageSection:AddList({text = "Hitboxes", flag = "hitboxes", values = {"Head", "Torso", "Pelvis", "Arms", "Legs"}, multiselect = true})
RageSection:AddToggle({text = "Prediction", flag = "predict"})
RageSection:AddToggle({text = "Resolver", flag = "resolver"})

local FakelagSection = RageColumn2:AddSection("Fake Lag")
FakelagSection:AddToggle({text = "Enabled"})
FakelagSection:AddList({text = "Type", flag = "fakelagType", values = {"Static", "Dynamic"}, value = "Static"})
FakelagSection:AddSlider({text = "Delay", flag = "fakelagDelay", min = 0, max = 16, value = 2, suffix = ""})

local MoreSection = RageColumn:AddSection("Knife Bot")
MoreSection:AddToggle({text = "Enabled", flag = "kbot"})
MoreSection:AddList({text = "Type", flag = "kbotType", values = {"Standard", "Knife Aura", "Gay", "Gay Aura"}, value = "Standard"})
MoreSection:AddToggle({text = "Rapid Knife Bot", flag = "kbot_rapid"})
MoreSection:AddSlider({text = "Distance", flag = "kbotDist", min = 1, max = 100, value = 20, suffix = " st"})

local ExploitsSection = RageColumn2:AddSection("Exploits")
ExploitsSection:AddToggle({text = "Kill All", flag = "killall"})
ExploitsSection:AddToggle({text = "Double Tab", flag = "doubletap"})
ExploitsSection:AddToggle({text = "Force HeadShot", flag = "forcehit"})
ExploitsSection:AddToggle({text = "Damage Modifier", flag = "dmgMod"})
ExploitsSection:AddSlider({ flag = "dmgModSlider", min = 1, max = 15, value = 1, suffix = ""})

local a = Players
local rtarget
local rhitbox
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris} 
local cam = workspace.CurrentCamera
local plrs = game:GetService("Players")
local c = localPlayer
local client = getsenv(lplr.PlayerGui.Client)
local Folder = Instance.new("Folder", workspace)
Folder.Name = "Hentai"
function CreateLaser(origin, target)
    local tracer = { }
    tracer.Color = library.flags.btracerColor

    tracer.Main = Instance.new("Model", Folder)
    tracer.Main.Name = "Bullet Tracer"

    tracer.StartAttachment = Instance.new("Part", tracer.Main)
    tracer.StartAttachment.Size = Vector3.new(1, 1, 1)
    tracer.StartAttachment.Transparency = 1
    tracer.StartAttachment.CanCollide = false
    tracer.StartAttachment.CFrame = CFrame.new(origin)
    tracer.StartAttachment.Anchored = true
    tracer.StartAttachment = Instance.new("Attachment", tracer.StartAttachment)

    tracer.EndAttachment = Instance.new("Part", tracer.Main)
    tracer.EndAttachment.Size = Vector3.new(1, 1, 1)
    tracer.EndAttachment.Transparency = 1
    tracer.EndAttachment.CanCollide = false
    tracer.EndAttachment.CFrame = CFrame.new(target)
    tracer.EndAttachment.Anchored = true
    tracer.EndAttachment = Instance.new("Attachment", tracer.EndAttachment)

    tracer.MainLaser = Instance.new("Beam", tracer.Main)
    tracer.MainLaser.FaceCamera = true
    tracer.MainLaser.Color = ColorSequence.new(tracer.Color)
    tracer.MainLaser.LightEmission = 1
    tracer.MainLaser.LightInfluence = 0
    tracer.MainLaser.Width0 = 1
    tracer.MainLaser.Width1 = 1
    tracer.MainLaser.Texture = "rbxassetid://446111271"
    tracer.MainLaser.TextureLength = 5
    tracer.MainLaser.TextureMode = Enum.TextureMode.Static
    tracer.MainLaser.TextureSpeed = 1
    tracer.MainLaser.Attachment0 = tracer.StartAttachment
    tracer.MainLaser.Attachment1 = tracer.EndAttachment
    tracer.MainLaser.Transparency = NumberSequence.new(0)

    delay(1.6, function()
        for i = 0, 1.3, 0.2 do
            wait()
            tracer.MainLaser.Transparency = NumberSequence.new(i)
        end
        tracer.Main:Remove()
    end)

    return tracer
end
local points = {
	["Head"] = {
		[1] = Vector3.new(0, 0.6, 0),
		[2] = Vector3.new(0.6, 0, 0),
		[3] = Vector3.new(-0.6, 0, 0),
		[4] = Vector3.new(0, 0, 0.6),
		[5] = Vector3.new(0, 0, -0.6),
	},
	["Torso"] = {
		[1] = Vector3.new(-1, 0.8, -0.5),
		[2] = Vector3.new(-1, 0.8, 0.5),
		[3] = Vector3.new(1, 0.8, -0.5),
		[4] = Vector3.new(1, 0.8, 0.5),
		[5] = Vector3.new(-1, -0.8, -0.5),
		[6] = Vector3.new(-1, -0.8, 0.5),
		[7] = Vector3.new(1, -0.8, -0.5),
		[8] = Vector3.new(1, -0.8, 0.5),
	},
	["Pelvis"] = {
		[1] = Vector3.new(-1, -0.2, -0.5),
		[2] = Vector3.new(-1, -0.2, 0.5),
		[3] = Vector3.new(1, -0.2, -0.5),
		[4] = Vector3.new(1, -0.2, 0.5),
	},
}
local Multipliers = { 
	["Head"] = 4, 
	["FakeHead"] = 4, 
	["HeadHB"] = 4, 
	["UpperTorso"] = 1, 
	["LowerTorso"] = 1.25, 
	["LeftUpperArm"] = 1, 
	["LeftLowerArm"] = 1, 
	["LeftHand"] = 1, 
	["RightUpperArm"] = 1, 
	["RightLowerArm"] = 1, 
	["RightHand"] = 1, 
	["LeftUpperLeg"] = 0.75, 
	["LeftLowerLeg"] = 0.75, 
	["LeftFoot"] = 0.75, 
	["RightUpperLeg"] = 0.75, 
	["RightLowerLeg"] = 0.75, 
	["RightFoot"] = 0.75, 
} 
local j = getsenv(localPlayer.PlayerGui.Client)
local RageGuy
local CamCFrame = Camera.CFrame
local RageTarget
local function GetDeg(pos1, pos2)
    local start = pos1.LookVector
    local vector = CFrame.new(pos1.Position, pos2).LookVector
    local angle = math.acos(start:Dot(vector))
    local deg = math.deg(angle)
    return deg
end
library:AddConnection(RunService.RenderStepped, function()
	--print(library.flags.hitboxes.value)
	--print(library.flags.hitboxes.values)
	local Ping = game.Stats.PerformanceStats.Ping:GetValue()
	local Filter = false
	RageTarget = nil
	if library.flags.killall and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
		for _,Player in pairs(Players:GetPlayers()) do
			if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
				local oh1 = Player.Character.Head
				local oh2 = Player.Character.Head.CFrame.p
				local oh3 = "Butterfly Knife"
				local oh4 = 16000
				local oh5 = LocalPlayer.Character.Gun
				local oh8 = RANDOM(160,99999)
				local oh9 = false
				local oh10 = true
				local oh11 = Vector3.new(0,0,0)
				local oh12 = 16000
				local oh13 = Vector3.new(0, 0, 0)
				game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
			end
		end
	end
	if IsAlive(c) then
		
		local Origin = LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or CamCFrame.p 
		local Root = LocalPlayer.Character.HumanoidRootPart
		for _,Player in pairs(Players:GetPlayers()) do 
			if workspace:FindFirstChild("Map") and Client.gun ~= "none" and Client.gun.Name ~= "C4" then 
				if Player.Character and Player.Character:FindFirstChild("Humanoid")  and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and not Player.Character:FindFirstChildOfClass("ForceField") and GetDeg(CamCFrame, Player.Character.Head.Position) <= 180 and Player ~= LocalPlayer then
					if Player.Team ~= LocalPlayer.Team and Player:FindFirstChild("Status") and Player.Status.Team.Value ~= LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then
						if Client.gun:FindFirstChild("Melee") and library.flags.kbot then
							local Ignore = {unpack(Collision)}
							table.insert(Ignore, workspace.Map.Clips)
							table.insert(Ignore, workspace.Map.SpawnPoints)
							table.insert(Ignore, LocalPlayer.Character)
							table.insert(Ignore, Player.Character.HumanoidRootPart)
							if Player.Character:FindFirstChild("BackC4") then
								table.insert(Ignore, Player.Character.BackC4)
							end
							if Player.Character:FindFirstChild("Gun") then
								table.insert(Ignore, Player.Character.Gun)
							end
							
							
							
								--local Origin = LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0)
								local Ray = Ray.new(Origin, (Player.Character.HumanoidRootPart.Position - Origin).unit * library.flags.kbotDist)
								--local Ray1 = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
								local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)			

								if Hit and Hit.Parent == Player.Character then
									
									RageGuy = Hit
									RageTarget = Hit
									Filter = true
									Client.firebullet()
									Filter = false

									if library.flags.kbotType == "Standard" then
										local Arguments = {
											[1] = Hit,
											[2] = Hit.Position,
											[3] = "Karambit",
											[4] = 4096,
											[5] = LocalPlayer.Character.Gun,
											[8] = RANDOM(5,25),
											[9] = false,
											[10] = false,
											[11] = Vector3.new(),
											[12] = 16868,
											[13] = Vector3.new()
										}
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									end
									if library.flags.kbotType == "Knife Aura" then
										local Arguments = {
											[1] = Hit,
											[2] = Hit.Position,
											[3] = "Banana",
											[4] = 4096,
											[5] = LocalPlayer.Character.Gun,
											[8] = RANDOM(5,25),
											[9] = false,
											[10] = false,
											[11] = Vector3.new(),
											[12] = 16868,
											[13] = Vector3.new()
										}
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									end
									if library.flags.kbotType == "Gay" then
										local Arguments = { 
											[1] = Hit, 
											[2] = Hit.Position, 
											[3] = "Karambit",
											[4] = RANDOM(1,360), 
											[5] = LocalPlayer.Character.Gun, 
											[8] = math.random(10, 90), 
											[9] = true, 
											[10] = true, 
											[11] = Vec3(), 
											[12] = 1, 
											[13] = Vec3() 
										} 
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									end
									if library.flags.kbotType == "Gay Aura" then
										local Arguments = { 
											[1] = Hit, 
											[2] = Hit.Position, 
											[3] = "Banana",
											[4] = RANDOM(1,360), 
											[5] = LocalPlayer.Character.Gun, 
											[8] = 999999, 
											[9] = true, 
											[10] = true, 
											[11] = Vec3(), 
											[12] = 1, 
											[13] = Vec3() 
										} 
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									end
									--CreateHitElement("   Hit "..Hit.Parent.Name.." in the "..Hit.Name,Color3.new(1,1,1))
								
								end
							
						else 
							if library.flags.rage_enabled then
								local Ignore = {unpack(Collision)}
								table.insert(Ignore, workspace.Map.Clips)
								table.insert(Ignore, workspace.Map.SpawnPoints)
								table.insert(Ignore, LocalPlayer.Character)
								table.insert(Ignore, Player.Character.HumanoidRootPart)
								if Player.Character:FindFirstChild("BackC4") then
									table.insert(Ignore, Player.Character.BackC4)
								end
								if Player.Character:FindFirstChild("Gun") then
									table.insert(Ignore, Player.Character.Gun)
								end
								
								local Hitboxes = {} 
								local amogusek = {"Head", "Torso", "Pelvis"}
								for _,Hitbox in ipairs(amogusek) do 
									if Hitbox == "Torso" and Player.Character:FindFirstChild("FakeHead") == nil then
										INSERT(Hitboxes, Player.Character.UpperTorso)
									elseif Hitbox == "Pelvis" then
										INSERT(Hitboxes, Player.Character.LowerTorso)
									elseif Hitbox == "Arms" then
										INSERT(Hitboxes, Player.Character.RightHand)
										INSERT(Hitboxes, Player.Character.LeftHand)

									elseif Hitbox == "Legs" then
										INSERT(Hitboxes, Player.Character.LeftFoot)
										INSERT(Hitboxes, Player.Character.RightFoot)
									elseif Hitbox == "Head" then  
										INSERT(Hitboxes, Player.Character.Head) 
									end 
								end


								for _,Hitbox in ipairs(Hitboxes) do
									local Ignore2 = {unpack(Ignore)}
									for _,Part in pairs(Player.Character:GetChildren()) do
										if Part ~= Hitbox then table.insert(Ignore2, Part) end
									end
									if library.flags.autowall then
										local Hits = {}
										local EndHit, Hit, Pos
										local Penetration = Client.gun.Penetration.Value * 0.01
										local Ray1 = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
										repeat
											Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true)
											if Hit ~= nil and Hit.Parent ~= nil then
												if Hit and Multipliers[Hit.Name] ~= nil then
													EndHit = Hit
												else
													table.insert(Ignore2, Hit)
													table.insert(Hits, {["Position"] = Pos,["Hit"] = Hit})
												end
											end
										until EndHit ~= nil or #Hits >= 4 or Hit == nil
										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= 4 then
											if #Hits == 0 then
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name]
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= library.flags.MinDmg then
													RageGuy = EndHit
													RageTarget = EndHit
													--[[if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end]]
													Filter = true
													--if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
														Client.firebullet()
														if library.flags.doubletap then
															Client.firebullet()
														end
													--[[elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
														Client.firebullet()
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = RANDOM(10,20),
															[9] = true,
															[10] = true,
															[11] = Vector3.new(),
															[12] = 100,
															[13] = Vector3.new()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = RANDOM(10,20),
																[9] = true,
																[10] = true,
																[11] = Vector3.new(),
																[12] = 100,
																[13] = Vector3.new()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
													end]]
													Filter = false
													break
												end
											else
												local penetration = Client.gun.Penetration.Value * 0.01
												local limit = 0
												local dmgmodifier = 1
												for i = 1, #Hits do
													local data = Hits[i]
													local part = data["Hit"]
													local pos = data["Position"]
													local modifier = 1
													if part.Material == Enum.Material.DiamondPlate then
														modifier = 3
													end
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
														modifier = 2
													end
													if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
														modifier = 0.1
													end
													if part.Name == "nowallbang" then
														modifier = 100
													end
													if part:FindFirstChild("PartModifier") then
														modifier = part.PartModifier.Value
													end
													if part.Transparency == 1 or part.CanCollide == false or part.Name == "Glass" or part.Name == "Cardboard" then
														modifier = 0
													end
													local direction = (Hitbox.Position - pos).unit * math.clamp(Client.gun.Range.Value, 1, 100)
													local ray = Ray.new(pos + direction * 1, direction * -2)
													local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true)
													local thickness = (endpos - pos).Magnitude
													thickness = thickness * modifier
													limit = math.min(penetration, limit + thickness)
													dmgmodifier = 1 - limit / penetration
												end
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= library.flags.MinDmg then
													RageGuy = EndHit
													RageTarget = EndHit
													--[[if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end]]
													Filter = true
													--if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
														Client.firebullet()
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = RANDOM(10,20),
															[9] = true,
															[10] = true,
															[11] = Vector3.new(),
															[12] = 100,
															[13] = Vector3.new()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if library.flags.doubletap then
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = RANDOM(10,20),
																[9] = true,
																[10] = true,
																[11] = Vector3.new(),
																[12] = 100,
																[13] = Vector3.new()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
														--[[elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = RANDOM(10,20),
																[9] = true,
																[10] = true,
																[11] = Vector3.new(),
																[12] = 100,
																[13] = Vector3.new()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
																Client.firebullet()
																local Arguments = {
																	[1] = EndHit,
																	[2] = EndHit.Position,
																	[3] = LocalPlayer.Character.EquippedTool.Value,
																	[4] = 100,
																	[5] = LocalPlayer.Character.Gun,
																	[8] = RANDOM(10,20),
																	[9] = true,
																	[10] = true,
																	[11] = Vector3.new(),
																	[12] = 100,
																	[13] = Vector3.new()
																}
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
													end]]
													Filter = false
													break
												end
											end
										end
									else
										local Ray = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
										local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore2, false, true)
										if Hit and Multipliers[Hit.Name] ~= nil then
											local Damage = Client.gun.DMG.Value * Multipliers[Hit.Name]
											if Player:FindFirstChild("Kevlar") then
												if string.find(Hit.Name, "Head") then
													if Player:FindFirstChild("Helmet") then
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												else
													Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
												end
											end
											Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - Hit.Position).Magnitude/500))
											if Damage >= library.flags.doubletap then
												RageGuy = Hit
												RageTarget = Hit
												--[[if not values.rage.aimbot["silent aim"].Toggle then
													Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position)
												end]]
												Filter = true
												--if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
													Client.firebullet()
													if library.flags.doubletap then
														Client.firebullet()
													end
													--[[elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
														Client.firebullet()
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = RANDOM(10,20),
															[9] = true,
															[10] = true,
															[11] = Vector3.new(),
															[12] = 100,
															[13] = Vector3.new()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = RANDOM(10,20),
																[9] = true,
																[10] = true,
																[11] = Vector3.new(),
																[12] = 100,
																[13] = Vector3.new()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
												end]]
												Filter = false
												break
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end) 



local function amogazenzESP(v)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,0,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(1,1,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local HealthBarOutline = Drawing.new("Square")
    HealthBarOutline.Thickness = 3
    HealthBarOutline.Filled = false
    HealthBarOutline.Color = Color3.new(0,0,0)
    HealthBarOutline.Transparency = 1
    HealthBarOutline.Visible = false

    local HealthBar = Drawing.new("Square")
    HealthBar.Thickness = 1
    HealthBar.Filled = false
    HealthBar.Transparency = 1
    HealthBar.Visible = false

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(1,1,1)
    Tracer.Thickness = 1
    Tracer.Transparency = 1

    local Name = Drawing.new("Text")
    Name.Transparency = 1
    Name.Visible = false
    Name.Color = Color3.new(1,1,1)
    Name.Size = 12
    Name.Center = true
    Name.Outline = true


    local Gun = Drawing.new("Text")
    Gun.Transparency = 1
    Gun.Visible = false
    Gun.Color = Color3.new(1,1,1)
    Gun.Size = 12
    Gun.Center = true
    Gun.Outline = true


    game:GetService("RunService").RenderStepped:Connect(function()
        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
            local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (CurrentCamera.CFrame.p - v.Character.HumanoidRootPart.Position).Magnitude
            local RootPart = v.Character.HumanoidRootPart
            local Head = v.Character.Head
            local RootPosition, RootVis = worldToViewportPoint(CurrentCamera, RootPart.Position)
            local HeadPosition = worldToViewportPoint(CurrentCamera, Head.Position + Vector3.new(0,0.5,0))
            local LegPosition = worldToViewportPoint(CurrentCamera, RootPart.Position - Vector3.new(0,3,0))

            if onScreen then
                if Settings.ESP.Box then
                    BoxOutline.Size = Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    BoxOutline.Position = Vector2.new(RootPosition.X - BoxOutline.Size.X / 2, RootPosition.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true

                    Box.Size = Vector2.new(2500 / RootPosition.Z, HeadPosition.Y - LegPosition.Y)
                    Box.Position = Vector2.new(RootPosition.X - Box.Size.X / 2, RootPosition.Y - Box.Size.Y / 2)
                    Box.Color = library.flags.box_color
                    Box.Visible = true

                    HealthBarOutline.Size = Vector2.new(2, HeadPosition.Y - LegPosition.Y)
                    HealthBarOutline.Position = BoxOutline.Position - Vector2.new(6,0)
                    HealthBarOutline.Visible = true

                    HealthBar.Size = Vector2.new(2, (HeadPosition.Y - LegPosition.Y) / (v.Character.Humanoid.MaxHealth / math.clamp(v.Character.Humanoid.Health, 0,v.Character.Humanoid.MaxHealth)))
                    HealthBar.Position = Vector2.new(Box.Position.X - 6, Box.Position.Y + (1 / HealthBar.Size.Y))
                    HealthBar.Color = Color3.fromRGB(255 - 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 255 / (v.Character.Humanoid.MaxHealth / v.Character.Humanoid.Health), 0)
                    HealthBar.Visible = true

                    if v.Team == game.Players.LocalPlayer.Team then
                        HealthBarOutline.Visible = false
                        BoxOutline.Visible = false
                        Box.Visible = false
                        HealthBar.Visible = false
                    end
                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    HealthBarOutline.Visible = false
                    HealthBar.Visible = false
                end

                if Settings.ESP.Tracers then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)

                    Tracer.Color = library.flags.tracers_color
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    Tracer.Visible = true

                    if v.Team == game.Players.LocalPlayer.Team then
                        Tracer.Visible = false
                    end
                else
                    Tracer.Visible = false
                end
				if Settings.ESP.Gun then 
					Gun.Font = 3
                    Gun.Size = Settings.ESP.TextSize 
                    Gun.Text = tostring(v.Character.EquippedTool.Value)
                    Gun.Position = Vector2.new(LegPosition.X, LegPosition.Y + 10)
                    Gun.Color = library.flags.name_color
                    Gun.Visible = true

                    if v.Team == game.Players.LocalPlayer.Team then
                        Gun.Visible = false
                    end
				else
                    Gun.Visible = false
                end

                if Settings.ESP.Name then
                    Name.Text = tostring(v.Name)
                    Name.Position = Vector2.new(workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).X, workspace.Camera:WorldToViewportPoint(v.Character.Head.Position).Y - 30)
                    Name.Visible = true
                    Name.Size = Settings.ESP.TextSize
                    Name.Color = library.flags.name_color
                    Name.Font = 3

                    if v.Team == game.Players.LocalPlayer.Team then
                        Name.Visible = false
                    end
                else
                    Name.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                HealthBarOutline.Visible = false
                HealthBar.Visible = false
                Tracer.Visible = false
                Name.Visible = false
                Gun.Visible = false
            end
        else
            BoxOutline.Visible = false
            Box.Visible = false
            HealthBarOutline.Visible = false
            HealthBar.Visible = false
            Tracer.Visible = false
            Name.Visible = false
            Gun.Visible = false
        end
    end)
end


for i,v in pairs(game.Players:GetChildren()) do
    amogazenzESP(v)
end

game.Players.PlayerAdded:Connect(function(v)
    amogazenzESP(v)
end)



--Visuals Tab
local VisualsTab = library:AddTab("Visuals");
local ViusalsColumn = VisualsTab:AddColumn();
local ViusalsColumn2 = VisualsTab:AddColumn();
local EspSectiom = ViusalsColumn:AddSection("ESP");

EspSectiom:AddToggle({text = "Enable", flag = "esp"})
EspSectiom:AddToggle({text = "Chams", flag = "esp_chams", callback = function(toggle)
	Settings.ESP.Chams = toggle
    if Settings.ESP.Chams then
        function chamgui(name,parent,face)
            local SG = Instance.new("SurfaceGui",parent)
            SG.Parent = parent
            SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            SG.Face = Enum.NormalId[face]
            SG.LightInfluence = 0
            SG.ResetOnSpawn = false
            SG.Name = name
            SG.AlwaysOnTop = true
            local Frame = Instance.new("Frame", SG)
            Frame.BackgroundColor3 = library.flags.chams_color
            Frame.Size = UDim2.new(1,0,1,0)
            Frame.Transparency = 0.5 --put this into slider later
        end
        local players = game:GetService('Players')
        local player = players.LocalPlayer
        while wait(1) do
            for i,v in pairs (game:GetService("Players"):GetPlayers()) do
                if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("cham") == nil and v.TeamColor ~= player.TeamColor then --Change these later maybe if you want
                    for i,v in pairs (v.Character:GetChildren()) do
                        if v:IsA("MeshPart") or v.Name == "Head" then
                            chamgui("cham",v,"Back")
                            chamgui("cham",v,"Front")
                            chamgui("cham",v,"Left")
                            chamgui("cham",v,"Right")
                            chamgui("cham",v,"Top")
                            chamgui("cham",v,"Bottom")
                        end
                    end
                end
            end
        end

    end
end}):AddColor({flag = "chams_color", color = Color3.new(1, 1, 1)})

EspSectiom:AddToggle({text = "Box ESP", flag = "esp_box", callback = function(toggle)
	Settings.ESP.Box = toggle
end}):AddColor({flag = "box_color", color = Color3.new(1,1,1)})
EspSectiom:AddToggle({text = "Name ESP", flag = "esp_name", callback = function(toggle)
	Settings.ESP.Name = toggle
end}):AddColor({flag = "name_color", color = Color3.new(1,1,1)})
EspSectiom:AddToggle({text = "Gun ESP", flag = "gun_name", callback = function(toggle)
	Settings.ESP.Gun = toggle
end}):AddColor({flag = "gun_color", color = Color3.new(1,1,1)})
--EspSectiom:AddToggle({text = "Health Bar", flag = "esp_health"}):AddColor({flag = "health_color", color = Color3.new(0, 1, 0.282352)})  
--EspSectiom:AddToggle({text = "Weapon ESP", flag = "esp_weapon"}):AddColor({flag = "weapon_color", color = Color3.new(1,1,1)})
EspSectiom:AddToggle({text = "Tracers", flag = "esp_tracers", callback = function(toggle)
	Settings.ESP.Tracers = toggle
end}):AddColor({flag = "tracers_color", color = Color3.new(1,1,1)})
EspSectiom:AddSlider({text = "Text Size", min = 15, max = 45, callback = function(val)
	Settings.ESP.TextSize = val
end})

local a = game:GetService("Players")
local c = a.LocalPlayer


local LocalSection = ViusalsColumn2:AddSection("Local");

LocalSection:AddToggle({text = "Force Crosshair", flag = "ForceCrosshair"})
LocalSection:AddToggle({text = "Better Shadows", flag = "betterShadows"})
LocalSection:AddToggle({text = "Remove Radio", flag = "RemoveRadio"})
LocalSection:AddToggle({text = "Remove Flash", flag = "RemoveFlash"})
LocalSection:AddToggle({text = "Remove Sleeve", flag = "RemoveSleeve"})
LocalSection:AddToggle({text = "Remove Glove", flag = "RemoveGlove"})
LocalSection:AddToggle({text = "Self Chams", flag = "SelfChams"}):AddColor({flag = "SelfChamsColor", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625)});
LocalSection:AddList({flag = "SelfChamsMaterial", value = "SmoothPlastic", values = {"SmoothPlastic", "Glass", "Neon", "ForceField"}});
LocalSection:AddToggle({text = "Weapon Chams", flag = "WeaponChams"}):AddColor({flag = "WeaponChamsColor", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625)})
LocalSection:AddList({flag = "WeaponChamsMaterial", value = "SmoothPlastic", values = {"SmoothPlastic", "Glass", "Neon", "ForceField"}})
LocalSection:AddSlider{text = "Reflectance", flag = "WeaponReflectance", min = 0, max = 100,  value = 0, suffix = ""}
LocalSection:AddToggle({text = "Arm Chams", flag = "ArmChams"}):AddColor({flag = "ArmChamsColor", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625)})
LocalSection:AddList({flag = "ArmChamsMaterial", value = "SmoothPlastic", values = {"SmoothPlastic", "Glass", "Neon", "ForceField"}})
LocalSection:AddSlider{text = "Transparency", flag = "ArmChamsTransparency", min = 0, max = 1,  float = 0.11, value = 0, suffix = "%"}



local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex

local ViewModelSection = ViusalsColumn2:AddSection("ViewModel");

ViewModelSection:AddToggle({text = "Viewmodel Enable", flag = "ViewmodelEnable"})
ViewModelSection:AddSlider{text = "X", flag = "ViewmodelX", min = -30, max = 30, value = 0, suffix = "", callback = function(v)
       ViewmodelOffset = CFrame.new(library.flags.ViewmodelX/7, library.flags.ViewmodelY/7, library.flags.ViewmodelZ/7) * CFrame.Angles(0, 0, library.flags.ViewmodelRoll/50)
end}
ViewModelSection:AddSlider{text = "Y", flag = "ViewmodelY", min = -30, max = 30, value = 0, suffix = "", callback = function(v)
       ViewmodelOffset = CFrame.new(library.flags.ViewmodelX/7, library.flags.ViewmodelY/7, library.flags.ViewmodelZ/7) * CFrame.Angles(0, 0, library.flags.ViewmodelRoll/50)
end}
ViewModelSection:AddSlider{text = "Z", flag = "ViewmodelZ", min = -30, max = 30, value = 0, suffix = "", callback = function(v)
       ViewmodelOffset = CFrame.new(library.flags.ViewmodelX/7, library.flags.ViewmodelY/7, library.flags.ViewmodelZ/7) * CFrame.Angles(0, 0, library.flags.ViewmodelRoll/50)
end}
ViewModelSection:AddSlider{text = "Roll", flag = "ViewmodelRoll", min = 0, max = 180, value = 0, suffix = "", callback = function(v)
       ViewmodelOffset = CFrame.new(library.flags.ViewmodelX/7, library.flags.ViewmodelY/7, library.flags.ViewmodelZ/7) * CFrame.Angles(0, 0, library.flags.ViewmodelRoll/50)
end}


oldNewIndex = hookfunc(getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__newindex, newcclosure(function(self, idx, val)
	if not checkcaller() then
		if self.Name == "Humanoid" and idx == "JumpPower" and val ~= 0 and library.flags.Jumpbug and library.flags.JumpbugBind and library.flags.BugMethod == "Default"  then
			spawn(function() Client.UnCrouch() end)
			val = 30 * 1.5
			
			elseif self.Name == "Humanoid" and idx == "JumpPower" and val ~= 0 and library.flags.Jumpbug and library.flags.JumpbugBind and library.flags.BugMethod == "HvH"  then
			spawn(function() Client.UnCrouch() end)
			val = 90 * 1.5	
			
			
			
			elseif self.Name == "Humanoid" and idx == "JumpPower" and val ~= 0 and library.flags.Edgebug and library.flags.BugBind then
			val = 0
			
			

			elseif self.Name == "Crosshair" and idx == "Visible" and val == false and LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.Visible == false and library.flags.ForceCrosshair then
			val = true
	end
	end
    return oldNewIndex(self, idx, val)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(new)
library:AddConnection(RunService.RenderStepped, function()
	if library.flags.betterShadows then
		local Lighting = game:GetService("Lighting")
		sethiddenproperty(Lighting, "Technology", library.flags.betterShadows and "ShadowMap" or "Legacy")
	end
	spawn(function()
	if new.Name == "Arms" and new:IsA("Model") then
		for i,v in pairs(new:GetChildren()) do
			if v:IsA("Model") and v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm") then
				local RightArm = v:FindFirstChild("Right Arm") or nil
				local LeftArm = v:FindFirstChild("Left Arm") or nil
					
				local RightGlove = (RightArm and (RightArm:FindFirstChild("Glove") or RightArm:FindFirstChild("RGlove"))) or nil
				local LeftGlove = (LeftArm and (LeftArm:FindFirstChild("Glove") or LeftArm:FindFirstChild("LGlove"))) or nil
					
				local RightSleeve = RightArm and RightArm:FindFirstChild("Sleeve") or nil
				local LeftSleeve = LeftArm and LeftArm:FindFirstChild("Sleeve") or nil
				
				if library.flags.ArmChams then
						RightArm.Transparency = library.flags.ArmChamsTransparency
						RightArm.Material = library.flags.ArmChamsMaterial == "SmoothPlastic" and "SmoothPlastic" or library.flags.ArmChamsMaterial == "Glass" and "Glass" or library.flags.ArmChamsMaterial == "Neon" and "Neon" or library.flags.ArmChamsMaterial == "ForceField" and "ForceField"
						RightArm.Color = library.flags.ArmChamsColor
						LeftArm.Transparency = library.flags.ArmChamsTransparency
						LeftArm.Material = library.flags.ArmChamsMaterial == "SmoothPlastic" and "SmoothPlastic" or library.flags.ArmChamsMaterial == "Glass" and "Glass" or library.flags.ArmChamsMaterial == "Neon" and "Neon" or library.flags.ArmChamsMaterial == "ForceField" and "ForceField"   
						LeftArm.Color = library.flags.ArmChamsColor
					end
					if library.flags.RemoveGlove then
						RightGlove.Transparency = 1
						LeftGlove.Transparency = 1
					end
					if library.flags.RemoveSleeve then
						RightSleeve.Transparency = 1
						LeftSleeve.Transparency = 1
					end
			elseif library.flags.WeaponChams and v:IsA("BasePart") and not table.find({"Right Arm", "Left Arm", "Flash"}, v.Name) and v.Transparency ~= 1 then
				if v:IsA("MeshPart") then v.TextureID = "" end
				if v:FindFirstChildOfClass("SpecialMesh") then v:FindFirstChildOfClass("SpecialMesh").TextureId = "" end

				v.Transparency = 0
				v.Color = library.flags.WeaponChamsColor
				v.Material = library.flags.WeaponChamsMaterial
				v.Reflectance = library.flags.WeaponReflectance/10
					if library.flags.WeaponChamsMaterial == "ForceField" then 
			v.TextureID = "rbxassetid://301464986"
		end
	end
		end
			end
	end)
	end)
end)  


local MiscSection = ViusalsColumn:AddSection("Misc");
MiscSection:AddToggle({text = "Remove Scope", flag = "RemoveScope"})
library:AddConnection(RunService.RenderStepped, function()
	if library.flags.RemoveScope then
		Camera.FieldOfView = 80
	end
end)


MiscSection:AddToggle({text = "Bullet Tracers", flag = "bullet_tracer"}):AddColor({flag = "btracerColor", color = Color3.new(0.599623620510101318359375, 0.447115242481231689453125, 0.97174417972564697265625)})
  
MiscSection:AddToggle({text = "Third Person", flag = "ThirdPerson"}):AddBind({flag = "ThirdPersonBind",  key = "X", callback = function(val)
	if val == true and library.flags.ThirdPersonBind then
		game:GetService("RunService"):BindToRenderStep("ThirdPerson", 100, function()
			if LocalPlayer.CameraMinZoomDistance ~= library.flags.ThirdPersonDistance then
				LocalPlayer.CameraMinZoomDistance = library.flags.ThirdPersonDistance
				LocalPlayer.CameraMaxZoomDistance = library.flags.ThirdPersonDistance
				workspace.ThirdPerson.Value = true
			end
		end)
	else
		game:GetService("RunService"):UnbindFromRenderStep("ThirdPerson")
		if IsAlive(LocalPlayer) and not library.flags.ThirdPersonBind then
			wait()
			workspace.ThirdPerson.Value = false
			LocalPlayer.CameraMinZoomDistance = 0
			LocalPlayer.CameraMaxZoomDistance = 0
		end
	end
end})
MiscSection:AddSlider{text = "Distance", flag = "ThirdPersonDistance", min = 1, max = 24, value = 1, suffix = ""}

-- Misc Tab
local MiscTab = library:AddTab("Misc");
local MiscColumn = MiscTab:AddColumn();
local MiscColumn2 = MiscTab:AddColumn();
local MainSection = MiscColumn:AddSection("Main");

MainSection:AddToggle({text = "Watermark", flag = "Watermark", callback = function(v)
if v == true then
		local Watermark = Instance.new("ScreenGui")
        local ScreenLabel = Instance.new("Frame")
        local Color = Instance.new("Frame")
        local UIGradient = Instance.new("UIGradient")
        local Container = Instance.new("Frame")
        local UIPadding = Instance.new("UIPadding")
        local Text = Instance.new("TextLabel")
        local Background = Instance.new("Frame")
        local UIGradient_2 = Instance.new("UIGradient")

        Watermark.Name = "Watermark"
        Watermark.Parent = game.CoreGui.ScreenGui

        ScreenLabel.Name = "ScreenLabel"
        ScreenLabel.Parent = Watermark
        ScreenLabel.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        ScreenLabel.BackgroundTransparency = 1.000
        ScreenLabel.BorderColor3 = Color3.fromRGB(20, 20, 20)
        ScreenLabel.Position = UDim2.new(0, 100, 0, -26)
        ScreenLabel.Size = UDim2.new(0, 300, 0, 25)

        Color.Name = "Color"
        Color.Parent = ScreenLabel
        Color.BackgroundColor3 = library.flags["Menu Accent Color"]
        Color.BorderSizePixel = 0
        Color.Size = UDim2.new(1.65, 0, 0, 5)
        Color.ZIndex = 2

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(60, 60, 60))}
        UIGradient.Rotation = 90
        UIGradient.Parent = Color

        Container.Name = "Container"
        Container.Parent = ScreenLabel
        Container.BackgroundTransparency = 1.000
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0, 0, 0, 5)
        Container.Size = UDim2.new(2.4, 0, 0, 14)
        Container.ZIndex = 3

        UIPadding.Parent = Container
        UIPadding.PaddingLeft = UDim.new(0, 4)

        Text.Name = "Text"
        Text.Parent = Container
        Text.BackgroundTransparency = 1.000
        Text.Position = UDim2.new(0.0230769236, 0, 0, 0)
        Text.Size = UDim2.new(1, 0, 1, 0)
        Text.ZIndex = 4
        Text.Font = Enum.Font.Code
        Text.Text = "CuteCatz| 00:00:00 | Oct.17, 2021 | Dev Build "
        Text.TextColor3 = Color3.fromRGB(255, 255, 255)
        Text.TextSize = 14.000
        Text.TextStrokeTransparency = 0.000
        Text.TextXAlignment = Enum.TextXAlignment.Left

        Background.Name = "Background"
        Background.Parent = ScreenLabel
        Background.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
        Background.BorderColor3 = Color3.fromRGB(20, 20, 20)
        Background.Size = UDim2.new(1.65, 0, 1, 0)

        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 90))}
        UIGradient_2.Rotation = 90
        UIGradient_2.Parent = Background

        local function UQHM_fake_script() -- Text.LocalScript 
            local script = Instance.new('LocalScript', Text)
            local fps = game.Workspace:GetRealPhysicsFPS()
            local mo = "A.M."
            local mont = nil
            while wait() do
                local l = math.fmod(tick(),86400)
                local h = math.floor(l/3600)
                local m = math.floor(l/60-h*60)
                local s = math.floor(math.fmod(l,60))
                local y = math.floor(1970+tick()/31579200)
                local mon = {{"January",31,31},{"February",59,28},{"March",90,31},{"April",120,30},{"May",151,31},{"June",181,30},{"July",212,31},{"August",243,31},{"September",273,30},{"October",304,31},{"November",334,30},{"December",365,31}}
                if y%4 == 0 then
                    mon[2][3] = 29
                    for i,v in pairs(mon) do
                        if i ~= 1 then
                            v[2] = v[2] + 1
                        end
                    end
                end
                local d = math.floor(tick()/86400%365.25+1)
                for i,v in pairs(mon) do
                    if v[2]-v[3]<=d then
                        mont = i
                    end
                end
                d = d + mon[mont][3]-mon[mont][2]
                if m <= 9 then
                    m = "0" ..m
                end
                if s <= 9 then
                    s = "0" ..s
                end
                if h >= 12 then
                    mo = "P.M."
                else
                    mo = "A.M."
                end
                if h > 12 then
                    h = h - 12
                end
                script.Parent.Text = "CuteCatz.fun".. " | " ..h.. ":" ..m.. ":" ..s.. " " ..mo.. " | "..mon[mont][1].. " " ..d.. ", " ..y.. " | Dev Build | "..math.floor(game:GetService('Stats').Network.ServerStatsItem["Data Ping"]:GetValue()).. "ms " 
            end
        end

        coroutine.wrap(UQHM_fake_script)()
        local function QQXIOK_fake_script() -- ScreenLabel.LocalScript 
            local script = Instance.new('LocalScript', ScreenLabel)
            
            local gui = script.Parent
            gui.Draggable = true
            gui.Active = true
        end
        coroutine.wrap(QQXIOK_fake_script)()
        
    elseif v == false then
        game.CoreGui.ScreenGui.Watermark:Destroy()
        end
end})local BunnyHopDirect = "directional"


MainSection:AddToggle({text = "BackTrack", flag = "backtrack"}):AddColor({flag = "btColor", color = Color3.new(1, 1, 1)})
MainSection:AddSlider({min = 1, max = 2000, value = 500, flag = "btSpeed"})
MainSection:AddSlider({text = "Transparency", flag = 'btTrans', min = 0, max = 100})
MainSection:AddToggle({text = "HitMarker", flag = "hitmarker"}):AddColor({flag = "markercolor", color = Color3.new(1,1,1)})
MainSection:AddToggle({text = "Anti Fall", flag = "antiFall"})
MainSection:AddSlider({text = "Distance", min = 5, max= 100, flag = "antifallDistance"})

local Camera = workspace.CurrentCamera 
LocalPlayer.Additionals.TotalDamage:GetPropertyChangedSignal("Value"):Connect(function(current) 
	if current == 0 then return end 
	coroutine.wrap(function() 
		if library.flags.hitmarker then 
			local Line = Drawing.new("Line") 
			local Line2 = Drawing.new("Line") 
			local Line3 = Drawing.new("Line") 
			local Line4 = Drawing.new("Line") 

			local x, y = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2 

			Line.From = Vec2(x + 4, y + 4) 
			Line.To = Vec2(x + 10, y + 10) 
			Line.Color = library.flags.markercolor
			Line.Visible = true 

			Line2.From = Vec2(x + 4, y - 4) 
			Line2.To = Vec2(x + 10, y - 10) 
			Line2.Color = library.flags.markercolor
			Line2.Visible = true 

			Line3.From = Vec2(x - 4, y - 4) 
			Line3.To = Vec2(x - 10, y - 10) 
			Line3.Color = library.flags.markercolor
			Line3.Visible = true 

			Line4.From = Vec2(x - 4, y + 4) 
			Line4.To = Vec2(x - 10, y + 10) 
			Line4.Color = library.flags.markercolor
			Line4.Visible = true 

			Line.Transparency = 1 
			Line2.Transparency = 1 
			Line3.Transparency = 1 
			Line4.Transparency = 1 

			Line.Thickness = 1 
			Line2.Thickness = 1 
			Line3.Thickness = 1 
			Line4.Thickness = 1 

			wait(0.3) 
			for i = 1,0,-0.1 do 
				wait() 
				Line.Transparency = i 
				Line2.Transparency = i 
				Line3.Transparency = i 
				Line4.Transparency = i 
			end 
			Line:Remove() 
			Line2:Remove() 
			Line3:Remove() 
			Line4:Remove() 
		end 
	end)() 
end)


local MovementSection = MiscColumn:AddSection("Movement");
MovementSection:AddToggle({text = "No Crouch CoolDown", flag = "NoCrouchCooldown"})
MovementSection:AddToggle({text = "Bunny Hop", flag = "bhop"});
MovementSection:AddList({text = "Type", flag = "bhopType", values = {'Gyro', "CFrame", "CFrame2"}})
MovementSection:AddSlider({min = 15, max = 150 , value = 15, flag = "bhopSpeed"})

local OtherSection = MiscColumn:AddSection("Other");
--OtherSection:AddToggle({text = "No Spread", flag = "noSpread"})
OtherSection:AddToggle({text = "No Recoil", flag = "noRecoil", callback = function(v)
	if v == true then
		game:GetService("RunService"):BindToRenderStep("NoRecoil", 100, function()
			Client.resetaccuracy()
			Client.RecoilX = 0
			Client.RecoilY = 0
		end)
	elseif v == false then
		game:GetService("RunService"):UnbindFromRenderStep("NoRecoil")
	end
end})
OtherSection:AddToggle({text = "No Spread", flag = "noSpread"})
local Warning = library:AddWarning({type = "confirm"});

OtherSection:AddToggle({text = "Kill Say", flag = "killsay"})
OtherSection:AddList({values = {"Standard", "Bloxsense", "CuteCatz.fun"}, flag = "sayType"})
OtherSection:AddToggle({text = "No Filter", flag = "NoFilter"})
OtherSection:AddButton({text = "Fake GodMode", callback = function(v)
	local bsb = 0
	local r, g, b = library.round(library.flags["Menu Accent Color"]);
	Warning.text = "Are you sure you want to <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>Enable Fake GodMode</font>?";
    if Warning:Show() then
		pcall(function()
			local ReplicatedStorage = game:GetService("ReplicatedStorage");
            local ApplyGun = ReplicatedStorage.Events.ApplyGun;
            ApplyGun:FireServer({
                Model = ReplicatedStorage.Hostage.Hostage,
                Name = "USP"
            }, game.Players.LocalPlayer);
		end)
    end
end})
OtherSection:AddButton({text = "Crash Server", callback = function(v)
	local bsb = 0
	local r, g, b = library.round(library.flags["Menu Accent Color"]);
	Warning.text = "Are you sure you want to <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>Crash the Server</font>?";
    if Warning:Show() then
		while bsb == 0 do
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				for i = 1,100,1 do	
					game:GetService("ReplicatedStorage").Events.DropMag:FireServer(LocalPlayer.Character.Gun.Mag)
				end
			end)
		end  
    end
end})

local ExploitSection = MiscColumn2:AddSection('Exploits');
ExploitSection:AddToggle({text = "Infinite Ammo", flag = "infAmmo"})
ExploitSection:AddToggle({text = "Infinite Cash", flag = "infCash"})
ExploitSection:AddToggle({text = "Remove Killers", flag = "removeKillers", callback = function(tbl)
	if tbl then
		if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then
			local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone()
			clone.Name = "KillersClone"
			clone.Parent = workspace:FindFirstChild("Map")

			workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy()
		end
	else
		if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("KillersClone") then
			workspace:FindFirstChild("Map"):FindFirstChild("KillersClone").Name = "Killers"
		end
	end
end})
ExploitSection:AddToggle({text = "Instant Reload", flag = "instReload"})
ExploitSection:AddToggle({text = "Instant Equip", flag = "instEquip"})
ExploitSection:AddToggle({text = "Range Modify", flag = "RangeModify"})
ExploitSection:AddToggle({text = "No Fall Damage", flag = "NoFallDamage"})
ExploitSection:AddToggle({text = "No Fire Damage", flag = "noFireDmg"})
ExploitSection:AddToggle({text = "Always Auto",  flag = 'AlwaysAuto'})
ExploitSection:AddToggle({text = "Anti VoteKick", flag = "antiKick"})
ExploitSection:AddToggle({text = "Anti Spectate", flag = "AntiSpectate"})
ExploitSection:AddToggle({text = "Firerate Modify", flag = "FirerateModify"})
ExploitSection:AddSlider({flag = "FirerateSlider", min = 1, max = 100, value = 1, suffix = "%"})
ExploitSection:AddToggle({text = "Shop Anywhere", flag = "Shopanywhere"})
ExploitSection:AddToggle({text = "Shop Infinite Time", flag = "Shopinftime"})
--ExploitSection:AddList({flag = "ShopMethod", values = {"Infinite Time", "Anywhere"}, multiselect = true});

local MemeSection = MiscColumn2:AddSection("Meme Features")
MemeSection:AddToggle({text = "NNs cant talk with u", flag = "nnDontTalk"})


local lines = {}
local lastPos = camera.ViewportSize.Y-90
local veloIndicator = Drawing.new("Text");veloIndicator.Center = true;veloIndicator.Outline = true;veloIndicator.Color = Color3.new(1,1,1);veloIndicator.Font = 2;veloIndicator.Size = 13;veloIndicator.Visible = false;veloIndicator.Text = "0"
MemeSection:AddToggle({text = "Enable Drawing", flag = 'velo_enable', callback = function()
	while library.flags["velo_enable"] do wait()
        local normalY = camera.ViewportSize.Y-90
        local alive = isAlive(LocalPlayer)
        local value = alive and math.floor(math.clamp((localPlayer.Character.HumanoidRootPart.Velocity * Vector3.new(1,0,1)).magnitude*14.85,0,400)) or 0
        if library.flags["velo_graph"] then
            local width = library.flags.graph_width+1
            local line = Drawing.new("Line")
            table.insert(lines,line)
            line.From = Vector2.new(camera.ViewportSize.X/2 + (60*width - width),lastPos)
            line.To = Vector2.new(camera.ViewportSize.X/2 + 60*width,normalY - value/4)
            line.Thickness = 1
            line.Transparency = 1
            line.Color = Color3.new(1,1,1)
            line.Visible = true
            if #lines > 1 then
                if #lines > 110 then
                    lines[1]:Remove()
                    table.remove(lines,1)
                    for i = 2,8 do
                        lines[i].Transparency = i/10
                    end
                    local count = 0
                    for i=110,110-6,-1 do
                        count = count + 1
                        lines[i].Transparency = count/10
                    end
                    lines[110-7].Transparency = 1
                end
                for i,v in ipairs(lines) do
                    v.To = v.To - Vector2.new(width,0)
                    v.From = v.From - Vector2.new(width,0)
                end
            end
            lastPos = line.To.Y
        end
        if library.flags["velo_indicator"] then
            veloIndicator.Text = tostring(value)
            veloIndicator.Position = Vector2.new(camera.ViewportSize.X/2,camera.ViewportSize.Y-75)
        end
    end
end})
MemeSection:AddToggle({text = "Velocity Indicator", flag = 'velo_indicator'})
MemeSection:AddToggle({text = "Velocity Graph", flag = 'velo_graph'}):AddColor({flag = "velo_color", color = Color3.new(1,1,1)})
MemeSection:AddSlider({text = "Graph Width",flag = "graph_width",min = 1,max = 5,value = 1})

local createNewMessage = getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage
getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage = function(plr, msg, teamcolor, msgcolor, offset, line)
	if library.flags.nnDontTalk and plr ~= game.Players.LocalPlayer.Name then
		msg = "i'm retarded"
	end
	
	return createNewMessage(plr, msg, teamcolor, msgcolor, offset, line)
end

library:AddConnection(RunService.RenderStepped, function()
	if library.flags.infAmmo then
		Client.ammocount = 666666666
		Client.primarystored = 666666666 
		Client.ammocount2 = 666666666 
		Client.secondarystored = 666666666
	end
	if library.flags.infCash then
		LocalPlayer.Cash.Value = 8666
	end 
end)

-- spam words
StandardSpamWords = {
	"Thats a 1!",
	"Get good get CuteCatz.fun",
	"0% better then deathcore",
	"How are you nn",
	"NN speaking gn",
	"Didn’t know br’s could play",
	"Hush mode nn",
	"Legit's worst nightmare",
}

local CuteCatzWords = {
							"No CuteCatz.fun? L",
							"Seems like u died to CuteCatz.fun",
							"You just got 1'ed by CuteCatz.fun",
							"Died to CuteCatz.fun? Just imagine",
							"1",
							"CuteCatz.fun UID!?, right none!!",
							"1, Couldn't have done it without CuteCatz.fun",
							"Died to CuteCatz.fun",
							"Died to a cheat made by MEMZDESTRUCTIVE.EXE, LOL!",
							"No UID?, nice uid issue u got there.",
							"Nice skidded cheat..",
							"When are u gonna win",
							"cant beat me with that cheat made by a retarded dev?",
							"Ooops didnt mean to kill you.",
							"RAWR SIT NN DOG!",
							"What cheat is that? bet its not CuteCatz.fun",
							"Wait arent you the guy who's mom I fucked last night?",	
							"It looks like your face is on 'Killed By CuteCatz.fun' list.",
							"Don't you love CuteCatz.fun, despite how many times it tapped you?",
							"1'ed by CuteCatz.fun, LOL!",
							"Dang imagine dying to CuteCatz.fun.",
							"HAH GOTTEM!",
							"CuteCatz.fun hijacked your mama's card",
							"Do you not smile?, i mean i feel ya. You got tapped by CuteCatz.fun no wonder ur not smiling.",
							"CuteCatz.fun killed your cheat",
							"CuteCatz.fun roasting yo mama!",
							"yo what happened! did your cheat miss on CuteCatz.fun!?"
}

local bO={"1 by bloxsense.gay","1'd by bloxsense.gay","you just got beamed bloxsense.gay","im sorry thats a 1, bloxsense.gay ontop","thats a 1 right there, could not have done it without bloxsense.gay"}
local StandardSpamWordsFix
local CuteCatzWordsFix
spawn(function()
    while wait(1/1000) do
		StandardSpamWordsFix = StandardSpamWords[math.random(1, #StandardSpamWords)]
        CuteCatzWordsFix = CuteCatzWords[math.random(1, #CuteCatzWords)]
        if library.flags.ChatSpam then
		    if library.flags.spamType == "Standard" then
			    game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(StandardSpamWordsFix, false, "Innocent", false, true)
		    end
		
		    if library.flags.spamType == "CuteCatz.fun" then
			    game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(CuteCatzWordsFix, false, "Innocent", false, true)
			end
		end
    end
end)
local bloxWords
game.Players.LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
	StandardSpamWordsFix = StandardSpamWords[math.random(1, #StandardSpamWords)]
	CuteCatzWordsFix = CuteCatzWords[math.random(1, #CuteCatzWords)]
	bloxWords =  bO[math.random(1, #bO)]
	if current == 0 then return end
	if library.flags.killsay then
		if library.flags.sayType == "Standard" then
			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(StandardSpamWordsFix, false, "Innocent", false, true)
		end
	
		if library.flags.sayType == "CuteCatz.fun" then
			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(CuteCatzWordsFix, false, "Innocent", false, true)
		end
		if library.flags.sayType == "Bloxsense" then
			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(bloxWords, false, "Innocent", false, true)
		end
	end
end)

game.ReplicatedStorage.Events.SendMsg.OnClientEvent:Connect(function(message)
	if library.flags.AntiKick then
		local msg = string.split(message, " ")
		
		if game.Players:FindFirstChild(msg[1]) and msg[7] == "1" and msg[12] == game.Players.LocalPlayer.Name then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
		end
	end
end)

local BodyVelocity = Instance.new("BodyVelocity")
library:AddConnection(RunService.RenderStepped, function()
    BodyVelocity:Destroy()
	BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.MaxForce = Vector3.new(math.huge,0,math.huge)
	
	local Camera = workspace.CurrentCamera
    local CamCFrame = Camera.CFrame
		if UserInputService:IsKeyDown("Space") and library.flags.bhop and IsAlive(LocalPlayer) then
			local add = 0
			local Root = LocalPlayer.Character.HumanoidRootPart
			if BunnyHopDirect == "directional" or BunnyHopDirect == "directional 2" then
				if UserInputService:IsKeyDown("A") then add = 90 end
				if UserInputService:IsKeyDown("S") then add = 190 end
				if UserInputService:IsKeyDown("D") then add = 280 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 55 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 325 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 235 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 155 end
			end
			local rot = YRotation(CamCFrame) * CFrame.Angles(0,math.rad(add),0)
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
			LocalPlayer.Character.Humanoid.Jump = true
			BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (library.flags.bhopSpeed * 2)
			if add == 0 and BunnyHopDirect == "directional" and not UserInputService:IsKeyDown("W") then
				BodyVelocity:Destroy()
			else
				if library.flags.bhopType == "CFrame" then
					BodyVelocity:Destroy()
					Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * library.flags.bhopSpeed/35 * 1.5/5
				end
			if library.flags.bhopType == "CFrame2" then
			    BodyVelocity:Destroy()
			    Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (library.flags.bhopSpeed * 4.5/30)
			end
			end
		end
		--[[if library.flags.antiFall and IsAlive(LocalPlayer) then
			local Root = LocalPlayer.Character.HumanoidRootPart 
			if Root.Velocity.Y < -(library.flags.antifallDistance) then 
				LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
			end
		end]]
		if library.flags.NoCrouchCooldown then
			Client.crouchcooldown = 0
		end

	if library.flags.RemoveFlash then
		LocalPlayer.PlayerGui.Blnd.Enabled = false
	else
		LocalPlayer.PlayerGui.Blnd.Enabled = true
	end
	if library.flags.RemoveRadio then
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.SuitZoom.Visible = false
	end
	if library.flags.SelfChams and IsAlive(LocalPlayer) then
		for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Material = Enum.Material[library.flags.SelfChamsMaterial]
				v.Color = library.flags.SelfChamsColor
				if v:IsA("MeshPart") then
					v.TextureID = "rbxassetid://0"
				end
				if v.Name == "FakeHead" then
					v.Transparency = 1
				elseif v.Name == "Head" then
					v.Transparency = 0
				end
			end
		end
	end
end)

oldIndex = hookfunc(getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__index, newcclosure(function(self, idx)
	if idx == "Value" then
		if self.Name == "Auto" and library.flags.AlwaysAuto then
			return true
		elseif self.Name == "FireRate" and library.flags.FirerateModify then
			return 0.001 * library.flags.FirerateSlider
		elseif self.Name == "ReloadTime" and library.flags.instReload then
			return 0.001
		elseif self.Name == "EquipTime" and library.flags.instEquip then
			return 0.001
		elseif self.Name == "Range" and library.flags.RangeModify then
			return 9999
		elseif self.Name == "RangeModifier" and library.flags.RangeModify then
			return 100
		--[[elseif (self.Name == "Spread" -or self.Parent.Name == "Spread") and library.flags.NoSpread then
			return 0
		elseif (self.Name == "AccuracyDivisor" or self.Name == "AccuracyOffset") and library.flags.NoSpread then
			return 0.001]]
		elseif self.Name == "BuyTime" and library.flags.Shopinftime then
			return 45
		end
	end

    return oldIndex(self, idx)
end))


oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = tostring(getnamecallmethod())
	local callingscript = getcallingscript()
    local args = {...}


	if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then
		if library.flags.ThirdPerson and library.flags.ThirdPersonBind and LocalPlayer.Character then
			args[1] = args[1] * CFrame.new(99, 99, 99)
		else
			if library.flags.ViewmodelEnable then
				args[1] = args[1] * ViewmodelOffset
			end
		end
	end
--[[
	if method == "FireServer" then
		if self.Name == "HitPart" then
			spawn(function()
				local hitplayer = players:FindFirstChild(args[1].Parent.Name)
                
                if library.flags["bullet_tracer"] and localPlayer.Character and  camera:FindFirstChild("Arms") then
                    coroutine.wrap(function()
						local selected = values.visuals.world['tracers material'].Dropdown

						local beam = INST('Part')
						beam.Anchored = true
						beam.CanCollide = false
						beam.Material = Enum.Material[selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass']
						beam.Transparency = values.visuals.world['bullet tracers'].Transparency
						beam.Color = values.visuals.world['bullet tracers'].Color

							pcall(function()
								beam.Size = Vec3(0.001*values.visuals.world['tracers thickness'].Slider, 0.001*values.visuals.world['tracers thickness'].Slider, (workspace.Camera.Arms.Flash.CFrame.Position - args[2]).Magnitude)
								beam.CFrame = CF(workspace.Camera.Arms.Flash.CFrame.Position, args[2]) * CF(0, 0, -beam.Size.Z / 2)
							end)
						beam.Parent = workspace.Debris
						spawn(function()
							tweenstuff = F_Tween(beam, 'Transparency', 1 , values.visuals.world['hit duration'].Slider, 1, 1, true)
							beam:Destroy()
						end)
					end)()
                end
			end)
		end
	end]]
	if method == "FireServer" and self.Name == "HitPart" then
		if library.flags.dmgMod then
			args[8] = args[8] * library.flags.dmgModSlider
		end
		if library.flags.predict and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
					
						local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 8 then
							args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2))
							args[4] = 0
							args[12] = args[12] - 500
						end
				
				end
			end)()
		end
		spawn(function()
		if library.flags.bullet_tracer then
			if library.flags.ThirdPerson and library.flags.ThirdPersonBind then
				CreateLaser(game.Players.LocalPlayer.Character.Gun.Flash.Position, args[2])
			else
				CreateLaser(game:GetService("Workspace").Camera.Arms.Flash.Position, args[2])
			end
		end
		end)
	end
	if not checkcaller() then
		if method == "Kick" then
			return
		elseif method == "FireServer" then
			if string.len(self.Name) == 38 then
				return wait(99e99)	
			elseif self.Name == "RemoteEvent" and typeof(args[1]) == "table" then
				return
			elseif args[1] == LocalPlayer.UserId then
				return
			elseif self.Name == "ApplyGun" and args[1] == game.ReplicatedStorage.Weapons.Banana or args[1] == game.ReplicatedStorage.Weapons["Flip Knife"] then
				args[1] = game.ReplicatedStorage.Weapons.Karambit
			elseif self.Name == "test" then
				return wait(99e99)
		    elseif self.Name == "ControlTurn"  then
			return
			elseif self.Name == "FallDamage" and (library.flags.NoFallDamage or library.flags.JumpBug and library.flags.JumpbugBind) then
				return
			elseif self.Name == "BURNME" and library.flags.NoFireDamage then
				return	

		elseif method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then
			if library.flags.InfinitePenetration then
				table.insert(args[2], workspace.Map)
			end	
			--[[if table.find(library.flags.noSpread) then
				args[1] = Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)
			end]]
			if table.find(library.flags.noSpread) then
				args[1] = Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)
			end
		end
		end
	       if self.Name == "PlayerChatted" and library.flags.ChatAlive then
			args[2] = false
			args[3] = "Innocent"
			args[4] = false
			args[5] = false
		end
	if method == "FindPartOnRayWithWhitelist" and not checkcaller() and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
		if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then
			local Team = LocalPlayer.Status.Team.Value

			if library.flags.Shopanywhere then
				return Team == "T" and args[2][1].BuyArea or Team == "CT" and  args[2][1].BuyArea2
			end
		end
	end
if self.Name == "ReplicateCamera" then
				if library.flags.AntiSpectate then
					args[1] = CFrame.new()
				end
		elseif method == "InvokeServer" then
			if self.Name == "Moolah" then
				return wait(99e99)
			elseif self.Name == "Hugh" then
				return wait(99e99)
			elseif self.Name == "Filter" and library.flags.NoFilter then
				return args[1]
			end
				
			end
				end
				
	return oldNamecall(self, unpack(args))
end)

CreateHitElement("Loaded!",Color3.new(1,1,1), 5)

-- [Library Settings UI] -----------------------------------------------------------------------------------------------------------------------------------------------------
local SettingsTab = library:AddTab("Settings"); 
local SettingsColumn = SettingsTab:AddColumn(); 
local SettingsColumn2 = SettingsTab:AddColumn(); 
local SettingSection = SettingsColumn:AddSection("Menu"); 
local ConfigSection = SettingsColumn2:AddSection("Configs");
local Warning = library:AddWarning({type = "confirm"});

SettingSection:AddBind({text = "Open / Close", flag = "UI Toggle", nomouse = true, key = "Delete", callback = function()
    library:Close();
end});

SettingSection:AddColor({text = "Accent Color", flag = "Menu Accent Color", color = Color3.new(1, 0, 0), callback = function(color)
    if library.currentTab then
        library.currentTab.button.TextColor3 = color;
    end
	if library.flags.Watermark then
        game:GetService("CoreGui").ScreenGui.Watermark.ScreenLabel.Color.BackgroundColor3 = color;
    end
    for i,v in pairs(library.theme) do
        v[(v.ClassName == "TextLabel" and "TextColor3") or (v.ClassName == "ImageLabel" and "ImageColor3") or "BackgroundColor3"] = color;
    end
end});

-- [Background List]
local backgroundlist = {
    Floral = "rbxassetid://5553946656",
    Flowers = "rbxassetid://6071575925",
    Circles = "rbxassetid://6071579801",
    Hearts = "rbxassetid://6073763717"
};

-- [Background List]
local back = SettingSection:AddList({text = "Background", max = 4, flag = "background", values = {"Floral", "Flowers", "Circles", "Hearts"}, value = "Floral", callback = function(v)
    if library.main then
        library.main.Image = backgroundlist[v];
    end
end});

-- [Background Color Picker]
back:AddColor({flag = "backgroundcolor", color = Color3.new(), callback = function(color)
    if library.main then
        library.main.ImageColor3 = color;
    end
end, trans = 0, calltrans = function(trans)
    if library.main then
        library.main.ImageTransparency = 1 - trans;
    end
end});

-- [Tile Size Slider]
SettingSection:AddSlider({text = "Tile Size", min = 50, max = 500, value = 50, callback = function(size)
    if library.main then
        library.main.TileSize = UDim2.new(0, size, 0, size);
    end
end});

-- [Discord Button]
SettingSection:AddButton({text = "Discord", callback = function()
end});

-- [Unload Button]
SettingSection:AddButton({text = "Unload", callback = function()
	getgenv().library:Unload()
end})

SettingSection:AddList({text = "test", skipflag = true, value = "test", flag = "test", values = {"test", "test1", "test3"}});
SettingSection:AddButton({text = "print test.value", callback = function()
	local amogus = library.flags.test
	print(amogus)
end})

-- [Config Box]
ConfigSection:AddBox({text = "Config Name", skipflag = true});

-- [Create Button]
ConfigSection:AddButton({text = "Create", callback = function()
    library:GetConfigs();
    writefile(library.foldername .. "/" .. library.flags["Config Name"] .. library.fileext, "{}");
    library.options["Config List"]:AddValue(library.flags["Config Name"]);
end});

-- [Config List]
ConfigSection:AddList({text = "Configs", skipflag = true, value = "", flag = "Config List", values = library:GetConfigs()});



-- [Save Button]
ConfigSection:AddButton({text = "Save", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to save the current settings to config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:SaveConfig(library.flags["Config List"]);
    end
end});

-- [Load Button]
ConfigSection:AddButton({text = "Load", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to load config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        library:LoadConfig(library.flags["Config List"]);
    end
end});

-- [Delete Button]
ConfigSection:AddButton({text = "Delete", callback = function()
    local r, g, b = library.round(library.flags["Menu Accent Color"]);
    Warning.text = "Are you sure you want to delete config <font color='rgb(" .. r .. "," .. g .. "," .. b .. ")'>" .. library.flags["Config List"] .. "</font>?";
    if Warning:Show() then
        local config = library.flags["Config List"];
        if table.find(library:GetConfigs(), config) and isfile(library.foldername .. "/" .. config .. library.fileext) then
            library.options["Config List"]:RemoveValue(config);
            delfile(library.foldername .. "/" .. config .. library.fileext);
        end
    end
end});

-- [Init] --------------------------------------------------------------------------------------------------------------------------------------------------------------------
library:Init();
library:selectTab(library.tabs[1]);


