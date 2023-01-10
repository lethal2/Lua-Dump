-- tinshits real real real real wow wow wow wow release
--[[
	upgraded loop kill now it's 1:1 as cuteware, 
	added hexagon kill all, 
	added whizz all (idk what does it do), 
	added god mode (better than hexagon one), 
	upgraded config list, 
	added hook weapons (leak = gay),
	added fake hps (thanks to @I feel bad#7826),
	fixed cortez step (abit) (thanks to @I feel bad#7826),
	added offset resolver (thanks to @I feel bad#7826),
	improved anti ping (thanks to @I feel bad#7826),
	added manual right and left
	added flick yaw base
]]--

getgenv().values = {}
local library = {} 
local Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
--local Api = loadstring(game:HttpGet("https://pastebin.com/raw/5L3wV43u"))() 
local ConfigSave = Signal.new("ConfigSave") 
local ConfigLoad = Signal.new("ConfigLoad") 
local ConfigLoad1 = Signal.new("ConfigLoad1")
ConfigSave1 = Signal.new("ConfigSave") 
ConfigUpdateCfgList = Signal.new('ConfigUpdateCfgList')
ConfigUpdateCfgList2 = Signal.new('ConfigUpdateCfgList2')
local MainUIColor = Color3.fromRGB(51, 255, 126)

local txt = game:GetService("TextService") 
local TweenService = game:GetService("TweenService") 
function library:Tween(...) TweenService:Create(...):Play() end 
local cfglocation = "tinshits_config/" 
makefolder("tinshits_config") 

local function insertwithoutdupes(tab, thethingyouneedtoinsert) -- my own code :sunglasses:
	if not table.find(tab, thethingyouneedtoinsert) then
		table.insert(tab, thethingyouneedtoinsert)
	end
end	
local function removewithoutdupes(tab, thethingyouneedtoremove) -- my own code :sunglasses:
	if table.find(tab, thethingyouneedtoremove) then
		table.remove(tab, table.find(tab, thethingyouneedtoremove))
	end
end	

-- caching   

local FIND = string.find 
local LEN = string.len 
local SUB = string.sub 
local GSUB = string.gsub 
local RAY = Ray.new 

local INSERT = table.insert 
local TBLFIND = table.find 
local TBLREMOVE = table.remove 
local TBLSORT = table.sort 

local loopkillplr = {}
for _,v in next, game.Players:GetPlayers() do 
	table.insert(loopkillplr, v.Name)
end

-- leak = gay	

workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Disabled

function rgbtotbl(rgb) 
	return {R = rgb.R, G = rgb.G, B = rgb.B} 
end 
function tbltorgb(tbl) 
	return Color3.new(tbl.R, tbl.G, tbl.B) 
end 
local function deepCopy(original) 
	local copy = {} 
	for k, v in next, original do 
		if type(v) == "table" then 
			v = deepCopy(v) 
		end 
		copy[k] = v 
	end 
	return copy 
end 
function library:ConfigFix(cfg) 
	local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg..".txt")) 
	for i,Tabs in next, copy do 
		for i,Sectors in next, Tabs do 
			for i,Elements in next, Sectors do 
				if Elements.Color ~= nil then 
					local a = Elements.Color 
					Elements.Color = tbltorgb(a) 
				end 
			end 
		end 
	end 
	return copy 
end	
function library:ConfigFix1(cfg) 
	local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg.."")) 
	for i,Tabs in next, copy do 
		for i,Sectors in next, Tabs do 
			for i,Elements in next, Sectors do 
				if Elements.Color ~= nil then 
					local a = Elements.Color 
					Elements.Color = tbltorgb(a) 
				end 
			end 
		end 
	end 
	return copy 
end 
function library:SaveConfig(cfg) 
	local copy = deepCopy(values) 
	for i,Tabs in next, copy do 
		for i,Sectors in next, Tabs do 
			for i,Elements in next, Sectors do 
				if Elements.Color ~= nil then 
					Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B} 
				end 
			end 
		end 
	end 
	writefile(cfglocation..cfg..".txt", game:GetService("HttpService"):JSONEncode(copy)) 
end 
function library:SaveConfig1(cfg) 
	local copy = deepCopy(values) 
	for i,Tabs in next, copy do 
		for i,Sectors in next, Tabs do 
			for i,Elements in next, Sectors do 
				if Elements.Color ~= nil then 
					Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B} 
				end 
			end 
		end 
	end 
	writefile(cfglocation..cfg.."", game:GetService("HttpService"):JSONEncode(copy)) 
end 

function library:New(name)  
	local menu = {}  

	local RITOWNSYA = Instance.new("ScreenGui")  
	local Menu = Instance.new("Frame") 
local MenuStroke = Instance.new("UIStroke")	
	local TextLabel = Instance.new("TextLabel")  
	local TabStroke = Instance.new("UIStroke") 
	local TabButtons = Instance.new("Frame") 
	local TabButtonsStroke = Instance.new("UIStroke")
	local TabsStroke = Instance.new("UIStroke")  	
	local UIListLayout = Instance.new("UIListLayout")  
	local Tabs = Instance.new("Frame")  

	RITOWNSYA.Name = "electric boogalo"  
	RITOWNSYA.ResetOnSpawn = false  
	RITOWNSYA.ZIndexBehavior = "Global"  
	RITOWNSYA.DisplayOrder = 420133769  

	local UIScale = Instance.new("UIScale")  
	UIScale.Parent = RITOWNSYA  

	function menu:SetScale(scale)  
		UIScale.Scale = scale  
	end  

	local but = Instance.new("TextButton")  
	but.Modal = true  
	but.Text = ""  
	but.BackgroundTransparency = 1  
	but.Parent = RITOWNSYA  

	local cursor = Instance.new("ImageLabel")  
	cursor.Name = "cursor"  
	cursor.Parent = RITOWNSYA  
	cursor.BackgroundTransparency = 1  
	cursor.Size = UDim2.new(0,17,0,17)  
	cursor.Image = "rbxassetid://518398610"  
	cursor.ZIndex = 1000  
	cursor.ImageColor3 = Color3.fromRGB(255,255,255)  

	local Players = game:GetService("Players")  
	local LocalPlayer = Players.LocalPlayer  
	local Mouse = LocalPlayer:GetMouse()  

	game:GetService("RunService").RenderStepped:connect(function()  
		cursor.Visible = RITOWNSYA.Enabled  
		cursor.Position = UDim2.new(0,Mouse.X-3,0,Mouse.Y+1)  
	end)  

	Menu.Name = "Menu"
	Menu.Parent = RITOWNSYA
	Menu.AnchorPoint = Vector2.new(0.5, 0.5)
	Menu.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Menu.BorderSizePixel = 2
	Menu.Position = UDim2.new(0.5, 0, 0.5, 0)
	Menu.Size = UDim2.new(0, 582, 0, 627)
	
		MenuStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	MenuStroke.LineJoinMode = Enum.LineJoinMode.Miter
	MenuStroke.Parent = Menu
	MenuStroke.Thickness = 1
	MenuStroke.Color = Color3.fromRGB(45, 45, 45)
	
	library.uiopen = true  

	game:GetService("UserInputService").InputBegan:Connect(function(key)  
		if key.KeyCode == Enum.KeyCode.Insert then  
			RITOWNSYA.Enabled = not RITOWNSYA.Enabled  
			library.uiopen = RITOWNSYA.Enabled  
		end  
	end)  

	local KeybindList = Instance.new("ScreenGui")  
	do  
		local TextLabel = Instance.new("TextLabel")  
		local Frame = Instance.new("Frame")  
		local UIListLayout = Instance.new("UIListLayout")  

		KeybindList.Name = "KeybindList"  
		KeybindList.ZIndexBehavior = Enum.ZIndexBehavior.Global  
		KeybindList.Enabled = false  

		TextLabel.Parent = KeybindList  
		TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 39)  
		TextLabel.BorderColor3 = Color3.fromRGB(51, 255, 126)  
		TextLabel.Position = UDim2.new(0, 1, 0.300000012, 0)  
		TextLabel.Size = UDim2.new(0, 155, 0, 24)  
		TextLabel.ZIndex = 2  
		TextLabel.Font = Enum.Font.Ubuntu
		TextLabel.Text = "keybinds"  
		TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
		TextLabel.TextSize = 14.000  

		Frame.Parent = TextLabel  
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
		Frame.BackgroundTransparency = 1.000  
		Frame.Position = UDim2.new(0, 0, 1, 1)  
		Frame.Size = UDim2.new(1, 0, 1, 0)  

		UIListLayout.Parent = Frame  
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

		KeybindList.Parent = game.CoreGui  
	end  

	function keybindadd(text)  
		if not KeybindList.TextLabel.Frame:FindFirstChild(text) then  
			local TextLabel = Instance.new("TextLabel")  
			TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 39)  
			TextLabel.BorderColor3 = Color3.fromRGB(51, 255, 126)  
			TextLabel.BorderSizePixel = 0  
			TextLabel.Size = UDim2.new(0, 155, 0, 24)  
			TextLabel.ZIndex = 2  
			TextLabel.Font = Enum.Font.Ubuntu
			TextLabel.Text = text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  
			TextLabel.TextSize = 14.000  
			TextLabel.Name = text
			TextLabel.Parent = KeybindList.TextLabel.Frame  
		end  
	end  
	function keybindremove(text)  
		if KeybindList.TextLabel.Frame:FindFirstChild(text) then  
			KeybindList.TextLabel.Frame:FindFirstChild(text):Destroy()  
		end  
	end  

	function library:SetKeybindVisible(Joe)  
		KeybindList.Enabled = Joe  
	end  

	library.dragging = false  
	do  
		local UserInputService = game:GetService("UserInputService")  
		local a = Menu  
		local dragInput
		local dragStart
		local startPos
		local function update(input)  
			local delta = input.Position - dragStart  
			a.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)  
		end  
		a.InputBegan:Connect(function(input)  
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then  
				library.dragging = true  
				dragStart = input.Position  
				startPos = a.Position  

				input.Changed:Connect(function()  
					if input.UserInputState == Enum.UserInputState.End then  
						library.dragging = false  
					end  
				end)  
			end  
		end)  
		a.InputChanged:Connect(function(input)  
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then  
				dragInput = input  
			end  
		end)  
		UserInputService.InputChanged:Connect(function(input)  
			if input == dragInput and library.dragging then  
				update(input)  
			end  
		end)  
	end  

	TextLabel.Parent = Menu
	TextLabel.Name = name
	TextLabel.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.522336721, 0, 4.86723728e-08, 604)
	TextLabel.Size = UDim2.new(0, 80, 0, 23)
	TextLabel.Font = Enum.Font.Ubuntu
	TextLabel.Text = name
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 15.000
	TextLabel.TextStrokeTransparency = 0.000

	TabButtons.Name = "TabButtons"
	TabButtons.Parent = Menu
	TabButtons.AnchorPoint = Vector2.new(0.5, 0)
	TabButtons.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	TabButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtons.BorderSizePixel = 2
	TabButtons.Position = UDim2.new(0.5, 0, 0, 5)
	TabButtons.Size = UDim2.new(0, 576, 0, 27)
	
	TabButtonsStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	TabButtonsStroke.LineJoinMode = Enum.LineJoinMode.Miter
	TabButtonsStroke.Thickness = 1
	TabButtonsStroke.Parent = TabButtons
	TabButtonsStroke.Color = Color3.fromRGB(45, 45, 45)
	
	UIListLayout.Parent = TabButtons
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 10)

	Tabs.Name = "Tabs"
	Tabs.Parent = Menu
	Tabs.AnchorPoint = Vector2.new(0.5, 0)
	Tabs.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Tabs.BorderSizePixel = 2
	Tabs.Position = UDim2.new(0.5, 0, 0, 40)
	Tabs.Size = UDim2.new(0, 576, 0, 562)
	
	TabsStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	TabsStroke.LineJoinMode = Enum.LineJoinMode.Miter
	TabsStroke.Thickness = 1
	TabsStroke.Parent = Tabs
	TabsStroke.Color = Color3.fromRGB(45, 45, 45)

	local first = true  
	local currenttab  

	function menu:Tab(text)  
		local tabname  
		tabname = text  
		local Tab = {}  
		values[tabname] = {}  

		local TextButton = Instance.new("TextButton")  
		TextButton.Parent = TabButtons
		TextButton.Name = text
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1.000
		TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Position = UDim2.new(0.088333331, 0, 0, 0)
		TextButton.Size = UDim2.new(0, 80, 0, 29)
		TextButton.Font = Enum.Font.Ubuntu
		TextButton.Text = text
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 15.000
		TextButton.TextStrokeTransparency = 0.000
		TextButton.TextTransparency = 0.5
		
		local Frame = Instance.new("Frame")
		Frame.Parent = TextButton
		Frame.BackgroundTransparency = 1
		Frame.BackgroundColor3 = Color3.fromRGB(51, 255, 126)
		Frame.Position = UDim2.new(0, 0, 0, 28)
		Frame.Size = UDim2.new(0, 80, 0, 1)

		local TabGui = Instance.new("Frame")  
		local Left = Instance.new("ScrollingFrame")  
		local UIListLayout = Instance.new("UIListLayout")  
		local Right = Instance.new("ScrollingFrame")  
		local UIListLayout_2 = Instance.new("UIListLayout")  

		TabGui.Name = "TabGui"
		TabGui.Parent = Tabs
		TabGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabGui.BackgroundTransparency = 1.000
		TabGui.Position = UDim2.new(0, 0, 0.01, 0)
		TabGui.Size = UDim2.new(1, 0, 0.969750881, 0) 
		TabGui.Visible = false  

		Left.Name = "Left"
		Left.Parent = TabGui
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Left.Size = UDim2.new(0.5, 0, 1, 0)
		Left.ScrollBarThickness = 0
		Left.CanvasSize = UDim2.new(0, 0, 0.5, 0)
		Left.AutomaticCanvasSize = "Y"

		UIListLayout.Parent = Left  
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  
		UIListLayout.Padding = UDim.new(0, 10)  

		Right.Name = "Right"
		Right.Parent = TabGui
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Right.Position = UDim2.new(0.5, 0, 0, 0)
		Right.Size = UDim2.new(0.5, 0, 1, 0)
		Right.CanvasSize = UDim2.new(0, 0, 0.5, 0)
		Right.ScrollBarThickness = 0
		Right.AutomaticCanvasSize = "Y"  

		UIListLayout_2.Parent = Right  
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center  
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder  
		UIListLayout_2.Padding = UDim.new(0, 10)  

		if first then  
			TextButton.TextTransparency = 0
			Frame.BackgroundTransparency = 0
			currenttab = text  
			TabGui.Visible = true  
			first = false  
		end  

		TextButton.MouseButton1Down:Connect(function()  
			if currenttab ~= text then  
				for i,v in next, TabButtons:GetChildren() do  
					if v:IsA("TextButton") then  
						library:Tween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.5})  
						library:Tween(v.Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}) 
					end  
				end  
				for i,v in next, Tabs:GetChildren() do  
					if v:IsA("Frame") then  
						v.Visible = false  
					end
				end  
				library:Tween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})  
				library:Tween(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}) 
				currenttab = text  
				TabGui.Visible = true  
			end  
		end)  

		function Tab:MSector(text, side) 
			local sectorname = text 
			local MSector = {} 
			values[tabname][text] = {} 

			local Section = Instance.new("Frame") 
			local SectionText = Instance.new("TextLabel") 
			local Inner = Instance.new("Frame") 
			local sectiontabs = Instance.new("Frame") 
			local UIListLayout_2 = Instance.new("UIListLayout") 

			Section.Name = "Section" 
			Section.Parent = TabGui[side] 
			Section.BackgroundColor3 = Color3.fromRGB(46, 46, 46) 
			Section.BackgroundTransparency = 1.000				
			Section.BorderColor3 = Color3.fromRGB(18, 18, 16) 
			Section.BorderSizePixel = 0 
			Section.Size = UDim2.new(0.95, 0, 0, 22)

			SectionText.Name = "SectionText" 
			SectionText.Parent = Section 
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
			SectionText.BackgroundTransparency = 1.000 
			SectionText.Position = UDim2.new(0, 0, 0, -4) 
			SectionText.Size = UDim2.new(1, 0, 0, 19) 
			SectionText.ZIndex = 2 
			SectionText.Font = Enum.Font.Ubuntu
			SectionText.Text = text 
			SectionText.TextStrokeTransparency = 0.000
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255) 
			SectionText.TextSize = 12.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Center

			Inner.Name = "Inner" 
			Inner.Parent = Section 
			Inner.BackgroundColor3 = Color3.fromRGB(31, 31, 31) 
			Inner.BackgroundTransparency = 0 
			Inner.BorderColor3 = Color3.fromRGB(18, 18, 16) 
			Inner.BorderSizePixel = 2
			Inner.Position = UDim2.new(0, 1, 0, 1) 
			Inner.Size = UDim2.new(1, -2, 1, -1)

			sectiontabs.Name = "sectiontabs" 
			sectiontabs.Parent = Section 
			sectiontabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
			sectiontabs.BackgroundTransparency = 1.000 
			sectiontabs.Position = UDim2.new(0, 0, 0, 6) 
			sectiontabs.Size = UDim2.new(1, 0, 0, 22) 

			UIListLayout_2.Parent = sectiontabs 
			UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal 
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center 
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder 
			UIListLayout_2.Padding = UDim.new(0,2)

			local firs = true  
			local selected  
			function MSector:Tab(text)  
				local tab = {}  
				values[tabname][sectorname][text] = {}  
				local tabtext = text  

				local tabsize = UDim2.new(0.95, 0, 0, 44)  

				local tab1 = Instance.new("Frame")  
				local UIPadding = Instance.new("UIPadding")  
				local UIListLayout = Instance.new("UIListLayout")  
				local TextButton = Instance.new("TextButton")  

				tab1.Name = text  
				tab1.Parent = Inner  
				tab1.BackgroundColor3 = Color3.fromRGB(31, 31, 31) 
				tab1.BorderColor3 = Color3.fromRGB(45, 45, 45) 
				tab1.BorderSizePixel = 0
				tab1.Position = UDim2.new(0, 0, 0, 30)  
				tab1.Size = UDim2.new(1, -2, 1, -30)  
				tab1.Name = text  
				tab1.Visible = false  

				UIPadding.Parent = tab1  
				UIPadding.PaddingTop = UDim.new(0, 0)  

				UIListLayout.Parent = tab1  
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  
				UIListLayout.Padding = UDim.new(0, 1)  

				TextButton.Parent = sectiontabs  
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
				TextButton.BackgroundTransparency = 1.000  
				TextButton.Size = UDim2.new(0, txt:GetTextSize(text, 14, Enum.Font.Ubuntu, Vector2.new(700,700)).X + 2, 1, 0)  
				TextButton.Font = Enum.Font.Ubuntu
				TextButton.Text = text  
				TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)  
				TextButton.TextSize = 14.000  
				TextButton.Name = text  

				TextButton.MouseButton1Down:Connect(function()  
					for i,v in next, Inner:GetChildren() do  
						v.Visible = false  
					end  
					for i,v in next, sectiontabs:GetChildren() do  
						if v:IsA("TextButton") then  
							library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})  
						end  
					end  
					Section.Size = tabsize
					tab1.Visible = true  
					library:Tween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
				end)  

				function tab:Element(type, text, data, callback)  
					local Element = {}  
					data = data or {}  
					callback = callback or function() end  
					values[tabname][sectorname][tabtext][text] = {}  

					if type == "Jumbobox" then  
						tabsize = tabsize + UDim2.new(0,0,0, 39)  
						Element.value = {Jumbobox = {}}  
						data.options = data.options or {}  

						local Dropdown = Instance.new("Frame")  
						local Button = Instance.new("TextButton")  
						local TextLabel = Instance.new("TextLabel")  
						local Drop = Instance.new("ScrollingFrame")  
						local Button_2 = Instance.new("TextButton")  
						local TextLabel_2 = Instance.new("TextLabel")  
						local UIListLayout = Instance.new("UIListLayout")  
						local ImageLabel = Instance.new("ImageLabel")  
						local TextLabel_3 = Instance.new("TextLabel")  

						Dropdown.Name = "Dropdown"  
						Dropdown.Parent = tab1  
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Dropdown.BackgroundTransparency = 1.000  
						Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)  
						Dropdown.Size = UDim2.new(1, 0, 0, 39)  

						Button.Name = "Button"  
						Button.Parent = Dropdown  
						Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Button.Position = UDim2.new(0, 30, 0, 16)  
						Button.Size = UDim2.new(0, 175, 0, 17)  
						Button.AutoButtonColor = false  
						Button.Font = Enum.Font.SourceSans  
						Button.Text = ""  
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
						Button.TextSize = 14.000  

						TextLabel.Parent = Button  
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel.BackgroundTransparency = 1.000  
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
						TextLabel.Position = UDim2.new(0, 5, 0, 0)  
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = "..."  
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel.TextSize = 14.000  
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

						local abcd = TextLabel  

						Drop.Name = "Drop"  
						Drop.Parent = Button  
						Drop.Active = true  
						Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Drop.Position = UDim2.new(0, 0, 1, 1)  
						Drop.Size = UDim2.new(1, 0, 0, 20)  
						Drop.Visible = false  
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
						Drop.ScrollBarThickness = 0 
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.AutomaticCanvasSize = "Y"  
						Drop.ZIndex = 5  
						Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

						UIListLayout.Parent = Drop  
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

						values[tabname][sectorname][tabtext][text] = Element.value  
						local num = #data.options  
						if num > 5 then  
							Drop.Size = UDim2.new(1, 0, 0, 85)  
						else  
							Drop.Size = UDim2.new(1, 0, 0, 17*num)  
						end  
						local first = true  

						local function updatetext()  
							local old = {}  
							for i,v in next, data.options do  
								if TBLFIND(Element.value.Jumbobox, v) then  
									INSERT(old, v)  
								else  
								end  
							end  
							local str = ""  


							if #old == 0 then  
								str = "..."  
							else  
								if #old == 1 then  
									str = old[1]  
								else  
									for i,v in next, old do  
										if i == 1 then  
											str = v  
										else  
											if i > 2 then  
												if i < 4 then  
													str = str..",  ..."  
												end  
											else  
												str = str..",  "..v  
											end  
										end  
									end  
								end  
							end  

							abcd.Text = str  
						end  
						for i,v in next, data.options do  
							do  
								local Button = Instance.new("TextButton")  
								local TextLabel = Instance.new("TextLabel")  

								Button.Name = v  
								Button.Parent = Drop  
								Button.BackgroundColor3 = Color3.fromRGB(35, 35, 47)  
								Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
								Button.Position = UDim2.new(0, 30, 0, 16)  
								Button.Size = UDim2.new(0, 175, 0, 17)  
								Button.AutoButtonColor = false  
								Button.Font = Enum.Font.SourceSans  
								Button.Text = ""  
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
								Button.TextSize = 14.000  
								Button.BorderSizePixel = 0  
								Button.ZIndex = 6  

								TextLabel.Parent = Button  
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
								TextLabel.BackgroundTransparency = 1.000  
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
								TextLabel.Position = UDim2.new(0, 5, 0, -1)  
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
								TextLabel.Font = Enum.Font.Ubuntu
								TextLabel.Text = v  
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
								TextLabel.TextSize = 14.000  
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
								TextLabel.ZIndex = 6  

								Button.MouseButton1Down:Connect(function()  
									if TBLFIND(Element.value.Jumbobox, v) then  
										for i,a in next, Element.value.Jumbobox do  
											if a == v then  
												TBLREMOVE(Element.value.Jumbobox, i)  
											end  
										end  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
									else  
										INSERT(Element.value.Jumbobox, v)  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(51, 255, 126)})  
									end  
									updatetext()  

									values[tabname][sectorname][tabtext][text] = Element.value  
									callback(Element.value)  
								end)  
								Button.MouseEnter:Connect(function()  
									if not TBLFIND(Element.value.Jumbobox, v) then  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
									end  
								end)  
								Button.MouseLeave:Connect(function()  
									if not TBLFIND(Element.value.Jumbobox, v) then  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
									end  
								end)  

								first = false  
							end  
						end  
						function Element:SetValue(val)  
							Element.value = val  
							for i,v in next, Drop:GetChildren() do  
								if v.Name ~= "UIListLayout" then  
									if TBLFIND(val.Jumbobox, v.Name) then  
										v.TextLabel.TextColor3 = Color3.fromRGB(175, 175, 175)  
									else  
										v.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
									end  
								end  
							end  
							updatetext()  
							values[tabname][sectorname][tabtext][text] = Element.value  
							callback(val)  
						end  
						if data.default then  
							Element:SetValue(data.default)  
						end  

						ImageLabel.Parent = Button  
						ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						ImageLabel.BackgroundTransparency = 1.000  
						ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
						ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

						TextLabel_3.Parent = Dropdown  
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel_3.BackgroundTransparency = 1.000  
						TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
						TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
						TextLabel_3.Font = Enum.Font.Ubuntu
						TextLabel_3.Text = text  
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel_3.TextSize = 14.000  
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

						Button.MouseButton1Down:Connect(function()  
							Drop.Visible = not Drop.Visible  
							if not Drop.Visible then  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end)  
						local indrop = false  
						local ind = false  
						Drop.MouseEnter:Connect(function()  
							indrop = true  
						end)  
						Drop.MouseLeave:Connect(function()  
							indrop = false  
						end)  
						Button.MouseEnter:Connect(function()  
							ind = true  
						end)  
						Button.MouseLeave:Connect(function()  
							ind = false  
						end)  
						game:GetService("UserInputService").InputBegan:Connect(function(input)  
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
								if Drop.Visible == true and not indrop and not ind then  
									Drop.Visible = false  
									Drop.CanvasPosition = Vector2.new(0,0)  
								end  
							end  
						end)  
					elseif type == "Toggle" then  
						tabsize = tabsize + UDim2.new(0,0,0,16)  
						Element.value = {Toggle = data.default and data.default.Toggle or false}  

						local Toggle = Instance.new("Frame")  
						local Button = Instance.new("TextButton")  
						local Color = Instance.new("Frame")  
						local TextLabel = Instance.new("TextLabel")  

						Toggle.Name = "Toggle"  
						Toggle.Parent = tab1  
						Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Toggle.BackgroundTransparency = 1.000  
						Toggle.Size = UDim2.new(1, 0, 0, 15)  

						Button.Name = "Button"  
						Button.Parent = Toggle  
						Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Button.BackgroundTransparency = 1.000  
						Button.Size = UDim2.new(1, 0, 1, 0)  
						Button.Font = Enum.Font.SourceSans  
						Button.Text = ""  
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
						Button.TextSize = 14.000  

						Color.Name = "Color"  
						Color.Parent = Button  
						Color.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Color.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Color.Position = UDim2.new(0, 15, 0.5, -5)  
						Color.Size = UDim2.new(0, 8, 0, 8)  

						TextLabel.Parent = Button  
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel.BackgroundTransparency = 1.000  
						TextLabel.Position = UDim2.new(0, 32, 0, -1)  
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)  
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = text  
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel.TextSize = 14.000  
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

						local function update()  
							if Element.value.Toggle then  
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(51, 255, 126)})  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
							else  
								keybindremove(text)  
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
							end  
							values[tabname][sectorname][tabtext][text] = Element.value  
						end  

						Button.MouseButton1Down:Connect(function()  
							Element.value.Toggle = not Element.value.Toggle  
							update()  
							values[tabname][sectorname][tabtext][text] = Element.value  
							callback(Element.value)  
						end)  
						if data.default then  
							update()  
						end  
						values[tabname][sectorname][tabtext][text] = Element.value  
						function Element:SetValue(value)  
							Element.value = value  
							values[tabname][sectorname][tabtext][text] = Element.value  
							update()  
							callback(Element.value)  
						end  
					elseif type == "Dropdown" then  
						tabsize = tabsize + UDim2.new(0,0,0,39)  
						Element.value = {Dropdown = data.options[1]}  

						local Dropdown = Instance.new("Frame")  
						local Button = Instance.new("TextButton")  
						local TextLabel = Instance.new("TextLabel")  
						local Drop = Instance.new("ScrollingFrame")  
						local Button_2 = Instance.new("TextButton")  
						local TextLabel_2 = Instance.new("TextLabel")  
						local UIListLayout = Instance.new("UIListLayout")  
						local ImageLabel = Instance.new("ImageLabel")  
						local TextLabel_3 = Instance.new("TextLabel")  

						Dropdown.Name = "Dropdown"  
						Dropdown.Parent = tab1  
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Dropdown.BackgroundTransparency = 1.000  
						Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)  
						Dropdown.Size = UDim2.new(1, 0, 0, 39)  

						Button.Name = "Button"  
						Button.Parent = Dropdown  
						Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Button.Position = UDim2.new(0, 30, 0, 16)  
						Button.Size = UDim2.new(0, 175, 0, 17)  
						Button.AutoButtonColor = false  
						Button.Font = Enum.Font.SourceSans  
						Button.Text = ""  
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
						Button.TextSize = 14.000  

						TextLabel.Parent = Button  
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel.BackgroundTransparency = 1.000  
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
						TextLabel.Position = UDim2.new(0, 5, 0, 0)  
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = Element.value.Dropdown  
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel.TextSize = 14.000  
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

						local abcd = TextLabel  

						Drop.Name = "Drop"  
						Drop.Parent = Button  
						Drop.Active = true  
						Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Drop.Position = UDim2.new(0, 0, 1, 1)  
						Drop.Size = UDim2.new(1, 0, 0, 20)  
						Drop.Visible = false  
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
						Drop.ScrollBarThickness = 0  
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
						Drop.AutomaticCanvasSize = "Y"  
						Drop.ZIndex = 5  
						Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

						UIListLayout.Parent = Drop  
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

						local num = #data.options  
						if num > 5 then  
							Drop.Size = UDim2.new(1, 0, 0, 85)  
						else  
							Drop.Size = UDim2.new(1, 0, 0, 17*num)  
						end  
						Drop.CanvasSize = UDim2.new(1, 0, 0, 17*num)  
						local first = true  
						for i,v in next, data.options do  
							do  
								local Button = Instance.new("TextButton")  
								local TextLabel = Instance.new("TextLabel")  

								Button.Name = v  
								Button.Parent = Drop  
								Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
								Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
								Button.Position = UDim2.new(0, 30, 0, 16)  
								Button.Size = UDim2.new(0, 175, 0, 17)  
								Button.AutoButtonColor = false  
								Button.Font = Enum.Font.SourceSans  
								Button.Text = ""  
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
								Button.TextSize = 14.000  
								Button.BorderSizePixel = 0  
								Button.ZIndex = 6  

								TextLabel.Parent = Button  
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
								TextLabel.BackgroundTransparency = 1.000  
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
								TextLabel.Position = UDim2.new(0, 5, 0, -1)  
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
								TextLabel.Font = Enum.Font.Ubuntu
								TextLabel.Text = v  
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
								TextLabel.TextSize = 14.000  
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
								TextLabel.ZIndex = 6  

								Button.MouseButton1Down:Connect(function()  
									Drop.Visible = false  
									Element.value.Dropdown = v  
									abcd.Text = v  
									values[tabname][sectorname][tabtext][text] = Element.value  
									callback(Element.value)  
									Drop.CanvasPosition = Vector2.new(0,0)  
								end)  
								Button.MouseEnter:Connect(function()  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})  
								end)  
								Button.MouseLeave:Connect(function()  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})  
								end)  

								first = false  
							end  
						end  

						function Element:SetValue(val)  
							Element.value = val  
							abcd.Text = val.Dropdown  
							values[tabname][sectorname][tabtext][text] = Element.value  
							callback(val)  
						end  

						ImageLabel.Parent = Button  
						ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						ImageLabel.BackgroundTransparency = 1.000  
						ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
						ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

						TextLabel_3.Parent = Dropdown  
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel_3.BackgroundTransparency = 1.000  
						TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
						TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
						TextLabel_3.Font = Enum.Font.Ubuntu
						TextLabel_3.Text = text  
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel_3.TextSize = 14.000  
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

						Button.MouseButton1Down:Connect(function()  
							Drop.Visible = not Drop.Visible  
							if not Drop.Visible then  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end)  
						local indrop = false  
						local ind = false  
						Drop.MouseEnter:Connect(function()  
							indrop = true  
						end)  
						Drop.MouseLeave:Connect(function()  
							indrop = false  
						end)  
						Button.MouseEnter:Connect(function()  
							ind = true  
						end)  
						Button.MouseLeave:Connect(function()  
							ind = false  
						end)  
						game:GetService("UserInputService").InputBegan:Connect(function(input)  
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
								if Drop.Visible == true and not indrop and not ind then  
									Drop.Visible = false  
									Drop.CanvasPosition = Vector2.new(0,0)  
								end  
							end  
						end)  
						values[tabname][sectorname][tabtext][text] = Element.value  
					elseif type == "Slider" then  

						tabsize = tabsize + UDim2.new(0,0,0,30)  

						local Slider = Instance.new("Frame")  
						local TextLabel = Instance.new("TextLabel")  
						local Button = Instance.new("TextButton")  
						local Frame = Instance.new("Frame")  
						local UIGradient = Instance.new("UIGradient")  
						local Value = Instance.new("TextLabel")  

						Slider.Name = "Slider"  
						Slider.Parent = tab1  
						Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Slider.BackgroundTransparency = 1.000  
						Slider.Position = UDim2.new(0, 0, 0.653061211, 0)  
						Slider.Size = UDim2.new(1, 0, 0, 25)  

						TextLabel.Parent = Slider  
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel.BackgroundTransparency = 1.000  
						TextLabel.Position = UDim2.new(0, 32, 0, -2)  
						TextLabel.Size = UDim2.new(0, 2, 0, 15)  
						TextLabel.AutomaticSize = "X"
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = text..": "
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel.TextSize = 14.000  
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

						Button.Name = "Button"  
						Button.Parent = Slider  
						Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Button.Position = UDim2.new(0, 30, 0, 15)  
						Button.Size = UDim2.new(0, 175, 0, 10)  
						Button.AutoButtonColor = false  
						Button.Font = Enum.Font.SourceSans  
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
						Button.TextSize = 14.000  

						Frame.Parent = Button  
						Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Frame.BorderSizePixel = 0  
						Frame.Size = UDim2.new(0.5, 0, 1, 0)  
						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(51, 255, 126)), ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 155, 96))}  
						UIGradient.Rotation = 90  
						UIGradient.Parent = Frame  

						Value.Name = "Value"  
						Value.Parent = TextLabel
						Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						Value.BackgroundTransparency = 1.000  
						Value.Position = UDim2.new(1, 0, 0, 0)  
						Value.Size = UDim2.new(0, 55, 0, 15)  
						Value.Font = Enum.Font.Ubuntu
						Value.Text = "50"  
						Value.TextColor3 = Color3.fromRGB(200, 200, 200)  
						Value.TextSize = 14.000  
						Value.TextXAlignment = Enum.TextXAlignment.Left  
						local min, max, default = data.min or 0, data.max or 100, data.default or 0  
						Element.value = {Slider = default}  

						function Element:SetValue(value)  
							Element.value = value  
							local a  
							if min > 0 then  
								a = ((Element.value.Slider - min)) / (max-min)  
							else  
								a = (Element.value.Slider-min)/(max-min)  
							end  
							Value.Text = Element.value.Slider  
							Frame.Size = UDim2.new(a,0,1,0)  
							values[tabname][sectorname][tabtext][text] = Element.value  
							callback(value)  
						end  
						local a  
						if min > 0 then  
							a = ((Element.value.Slider - min)) / (max-min)  
						else  
							a = (Element.value.Slider-min)/(max-min)  
						end  
						Value.Text = Element.value.Slider  
						Frame.Size = UDim2.new(a,0,1,0)  
						values[tabname][sectorname][tabtext][text] = Element.value  
						local uis = game:GetService("UserInputService")  
						local mouse = game.Players.LocalPlayer:GetMouse()  
						local val  
						Button.MouseButton1Down:Connect(function()  
							Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
							val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0  
							Value.Text = val  
							Element.value.Slider = val  
							values[tabname][sectorname][tabtext][text] = Element.value  
							callback(Element.value)  
							moveconnection = mouse.Move:Connect(function()  
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))  
								Value.Text = val  
								Element.value.Slider = val  
								values[tabname][sectorname][tabtext][text] = Element.value  
								callback(Element.value)  
							end)  
							releaseconnection = uis.InputEnded:Connect(function(Mouse)  
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
									Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
									val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))  
									values[tabname][sectorname][tabtext][text] = Element.value  
									callback(Element.value)  
									moveconnection:Disconnect()  
									releaseconnection:Disconnect()  
								end  
							end)  
						end)  
					end  
					ConfigLoad:Connect(function(cfg)  
						local fix = library:ConfigFix(cfg)  
						if fix[tabname][sectorname][tabtext][text] ~= nil then  
							Element:SetValue(fix[tabname][sectorname][tabtext][text])  
						end  
					end)  
													ConfigLoad1:Connect(function(cfg) 
									local fix = library:ConfigFix1(cfg) 
									if fix[tabname][sectorname][tabtext][text] ~= nil then 
										Element:SetValue(fix[tabname][sectorname][tabtext][text]) 
									end 
								end)

					return Element  
				end  


				if firs then  
					coroutine.wrap(function()  
						game:GetService("RunService").RenderStepped:Wait()  
						Section.Size = tabsize  
					end)()  
					selected = text  
					TextButton.TextColor3 = Color3.fromRGB(255,255,255)  
					tab1.Visible = true  
					firs = false  
				end  

				return tab  
			end  
			return MSector  
		end  
		function Tab:Sector(text, side) 
			local sectorname = text 
			local Sector = {} 
			values[tabname][text] = {} 
			local Section = Instance.new("Frame") 
			local SectionText = Instance.new("TextLabel") 
			local Inner = Instance.new("Frame") 
			local UIListLayout = Instance.new("UIListLayout") 


			Section.Name = "Section" 
			Section.Parent = TabGui[side] 
			Section.BackgroundTransparency = 1.000 
			Section.BackgroundColor3 = Color3.fromRGB(46, 46, 46) 
			Section.BorderColor3 = Color3.fromRGB(18, 18, 16) 
			Section.BorderSizePixel = 0 
			Section.Position = UDim2.new(0.00358422939, 0, 0, 0) 
			Section.Size = UDim2.new(0.95, 0, 0, 22) 

			SectionText.Name = "SectionText" 
			SectionText.Parent = Section 
			SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
			SectionText.BackgroundTransparency = 1.000 
			SectionText.Position = UDim2.new(0, 0, 0, -4) 
			SectionText.Size = UDim2.new(1, 0, 0, 19) 
			SectionText.ZIndex = 2 
			SectionText.Font = Enum.Font.Ubuntu
			SectionText.Text = text 
			SectionText.TextStrokeTransparency = 0.000
			SectionText.TextColor3 = Color3.fromRGB(255, 255, 255) 
			SectionText.TextSize = 12.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Center

			Inner.Name = "Inner" 
			Inner.Parent = Section 
			Inner.BackgroundColor3 = Color3.fromRGB(31, 31, 31) 
			Inner.BackgroundTransparency = 0.000 
			Inner.BorderColor3 = Color3.fromRGB(18, 18, 16) 
			Inner.BorderSizePixel = 2
			Inner.Position = UDim2.new(0, 1, 0, 1) 
			Inner.Size = UDim2.new(1, -2, 1, -2) 

			local UIPadding = Instance.new("UIPadding") 

			UIPadding.Parent = Inner 
			UIPadding.PaddingTop = UDim.new(0, 10) 

			UIListLayout.Parent = Inner 
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
			UIListLayout.Padding = UDim.new(0,1) 

			function Sector:Element(type, text, data, callback)  
				local Element = {}  
				data = data or {}  
				callback = callback or function() end  
				values[tabname][sectorname][text] = {}  
				if type == "ScrollDrop" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,39)  
					Element.value = {Scroll = {}, Dropdown = ""}  

					for i,v in next, data.options do  
						Element.value.Scroll[i] = v[1]  
					end  

					local joe = {}  
					if data.alphabet then  
						local copy = {}  
						for i,v in next, data.options do  
							INSERT(copy, i)  
						end  
						TBLSORT(copy, function(a,b)  
							return a < b  
						end)  
						joe = copy  
					else  
						for i,v in next, data.options do  
							INSERT(joe, i)  
						end  
					end  

					local Dropdown = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local TextLabel = Instance.new("TextLabel")  
					local Drop = Instance.new("ScrollingFrame")  
					local Button_2 = Instance.new("TextButton")  
					local TextLabel_2 = Instance.new("TextLabel")  
					local UIListLayout = Instance.new("UIListLayout")  
					local ImageLabel = Instance.new("ImageLabel")  
					local TextLabel_3 = Instance.new("TextLabel")  

					Dropdown.Name = "Dropdown"  
					Dropdown.Parent = Inner  
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Dropdown.BackgroundTransparency = 1.000  
					Dropdown.Position = UDim2.new(0, 0, 0, 0)  
					Dropdown.Size = UDim2.new(1, 0, 0, 39)  

					Button.Name = "Button"  
					Button.Parent = Dropdown  
					Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button.Position = UDim2.new(0, 30, 0, 16)  
					Button.Size = UDim2.new(0, 175, 0, 17)  
					Button.AutoButtonColor = false  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					local TextLabel = Instance.new("TextLabel")  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
					TextLabel.Position = UDim2.new(0, 5, 0, 0)  
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = "lol"  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local abcd = TextLabel  

					Drop.Name = "Drop"  
					Drop.Parent = Button  
					Drop.Active = true  
					Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Drop.Position = UDim2.new(0, 0, 1, 1)  
					Drop.Size = UDim2.new(1, 0, 0, 20)  
					Drop.Visible = false  
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
					Drop.ScrollBarThickness = 0  
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.AutomaticCanvasSize = "Y"  
					Drop.ZIndex = 5  
					Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

					UIListLayout.Parent = Drop  
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  


					local amount = data.Amount or 6  
					Section.Size = Section.Size + UDim2.new(0,0,0,amount * 16 + 8)  

					local num = #joe  
					if num > 5 then  
						Drop.Size = UDim2.new(1, 0, 0, 85)  
					else  
						Drop.Size = UDim2.new(1, 0, 0, 17*num)  
					end  
					local first = true  
					for i,v in next, joe do  
						do  
							local joell = v  
							local Scroll = Instance.new("Frame")  
							local joe2 = data.options[v]  
							local Button = Instance.new("TextButton")  
							local TextLabel = Instance.new("TextLabel")  

							Button.Name = v  
							Button.Parent = Drop  
							Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
							Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
							Button.Position = UDim2.new(0, 30, 0, 16)  
							Button.Size = UDim2.new(0, 175, 0, 17)  
							Button.AutoButtonColor = false  
							Button.Font = Enum.Font.SourceSans  
							Button.Text = ""  
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
							Button.TextSize = 14.000  
							Button.BorderSizePixel = 0  
							Button.ZIndex = 6  

							TextLabel.Parent = Button  
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
							TextLabel.BackgroundTransparency = 1.000  
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
							TextLabel.Position = UDim2.new(0, 5, 0, -1)  
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = v  
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
							TextLabel.TextSize = 14.000  
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
							TextLabel.ZIndex = 6  

							Button.MouseButton1Down:Connect(function()  
								Drop.Visible = false  
								Drop.CanvasPosition = Vector2.new(0,0)  
								abcd.Text = v  
								for i,v in next, Scroll.Parent:GetChildren() do  
									if v:IsA("Frame") then  
										v.Visible = false  
									end  
								end  
								Element.value.Dropdown = v  
								Scroll.Visible = true  
								callback(Element.value)  
							end)  
							Button.MouseEnter:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})  
							end)  
							Button.MouseLeave:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})  
							end)  

							if first then  
								abcd.Text = v  
								Element.value.Dropdown = v  
							end  
							local Frame = Instance.new("ScrollingFrame")  
							local UIListLayout = Instance.new("UIListLayout")  

							Scroll.Name = "Scroll"  
							Scroll.Parent = Dropdown  
							Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
							Scroll.BackgroundTransparency = 1.000  
							Scroll.Position = UDim2.new(0, 0, 0, 0)  
							Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8)  
							Scroll.Visible = first  
							Scroll.Name = v  


							Frame.Name = "Frame"  
							Frame.Parent = Scroll  
							Frame.Active = true  
							Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
							Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)  
							Frame.Position = UDim2.new(0, 30, 0, 40)  
							Frame.Size = UDim2.new(0, 175, 0, 16 * amount)  
							Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
							Frame.CanvasSize = UDim2.new(0, 0, 0, 0)  
							Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
							Frame.ScrollBarThickness = 4  
							Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
							Frame.AutomaticCanvasSize = "Y"  
							Frame.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

							UIListLayout.Parent = Frame  
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  
							local joll = true  
							for i,v in next, joe2 do  
								local Button = Instance.new("TextButton")  
								local TextLabel = Instance.new("TextLabel")  

								Button.Name = v  
								Button.Parent = Frame  
								Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
								Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
								Button.BorderSizePixel = 0  
								Button.Position = UDim2.new(0, 30, 0, 16)  
								Button.Size = UDim2.new(1, 0, 0, 16)  
								Button.AutoButtonColor = false  
								Button.Font = Enum.Font.SourceSans  
								Button.Text = ""  
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
								Button.TextSize = 14.000  

								TextLabel.Parent = Button  
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
								TextLabel.BackgroundTransparency = 1.000  
								TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
								TextLabel.Position = UDim2.new(0, 4, 0, -1)  
								TextLabel.Size = UDim2.new(1, 1, 1, 1)  
								TextLabel.Font = Enum.Font.Ubuntu
								TextLabel.Text = v  
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
								TextLabel.TextSize = 14.000  
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
								if joll then  
									joll = false  
									TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
								end  

								Button.MouseButton1Down:Connect(function()  

									for i,v in next, Frame:GetChildren() do  
										if v:IsA("TextButton") then  
											library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
										end  
									end  

									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  

									Element.value.Scroll[joell] = v  

									values[tabname][sectorname][text] = Element.value  
									callback(Element.value)  
								end)  
								Button.MouseEnter:Connect(function()  
									if Element.value.Scroll[joell] ~= v then  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
									end  
								end)  
								Button.MouseLeave:Connect(function()  
									if Element.value.Scroll[joell] ~= v then  
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
									end  
								end)  
							end  
							first = false  
						end  
					end  

					ImageLabel.Parent = Button  
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ImageLabel.BackgroundTransparency = 1.000  
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

					TextLabel_3.Parent = Dropdown  
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel_3.BackgroundTransparency = 1.000  
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
					TextLabel_3.Font = Enum.Font.Ubuntu
					TextLabel_3.Text = text  
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel_3.TextSize = 14.000  
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

					Button.MouseButton1Down:Connect(function()  
						Drop.Visible = not Drop.Visible  
						if not Drop.Visible then  
							Drop.CanvasPosition = Vector2.new(0,0)  
						end  
					end)  
					local indrop = false  
					local ind = false  
					Drop.MouseEnter:Connect(function()  
						indrop = true  
					end)  
					Drop.MouseLeave:Connect(function()  
						indrop = false  
					end)  
					Button.MouseEnter:Connect(function()  
						ind = true  
					end)  
					Button.MouseLeave:Connect(function()  
						ind = false  
					end)  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if Drop.Visible == true and not indrop and not ind then  
								Drop.Visible = false  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end  
					end)  

					function Element:SetValue(tbl)  
						Element.value = tbl  
						abcd.Text = tbl.Dropdown  
						values[tabname][sectorname][text] = Element.value  
						for i,v in next, Dropdown:GetChildren() do  
							if v:IsA("Frame") then  
								if v.Name == Element.value.Dropdown then  
									v.Visible = true  
								else  
									v.Visible = false  
								end  
								for _,bad in next, v.Frame:GetChildren() do  
									if bad:IsA("TextButton") then  
										bad.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
										if bad.Name == Element.value.Scroll[v.Name] then  
											bad.TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
										end  
									end  
								end  
							end  
						end  
					end  

					if data.default then  
						Element:SetValue(data.default)  
					end  

					values[tabname][sectorname][text] = Element.value  

				elseif type == "Scroll" then  
					local amount = data.Amount or 6  
					Section.Size = Section.Size + UDim2.new(0,0,0,amount * 16 + 8)  
					if data.alphabet then  
						TBLSORT(data.options, function(a,b)  
							return a < b  
						end)  
					end  
					Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}  

					local Scroll = Instance.new("Frame")  
					local Frame = Instance.new("ScrollingFrame")  
					local UIListLayout = Instance.new("UIListLayout")  

					Scroll.Name = "Scroll"  
					Scroll.Parent = Inner  
					Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Scroll.BackgroundTransparency = 1.000  
					Scroll.Position = UDim2.new(0, 0, 00, 0)  
					Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8)  


					Frame.Name = "Frame"  
					Frame.Parent = Scroll  
					Frame.Active = true  
					Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Frame.Position = UDim2.new(0, 30, 0, 0)  
					Frame.Size = UDim2.new(0, 175, 0, 16 * amount)  
					Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
					Frame.CanvasSize = UDim2.new(0, 0, 0, 0)  
					Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
					Frame.ScrollBarThickness = 4  
					Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
					Frame.AutomaticCanvasSize = "Y"  
					Frame.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

					UIListLayout.Parent = Frame  
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  
					local first = true  
					for i,v in next, data.options do  
						local Button = Instance.new("TextButton")  
						local TextLabel = Instance.new("TextLabel")  

						Button.Name = v  
						Button.Parent = Frame  
						Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Button.BorderSizePixel = 0  
						Button.Position = UDim2.new(0, 30, 0, 16)  
						Button.Size = UDim2.new(1, 0, 0, 16)  
						Button.AutoButtonColor = false  
						Button.Font = Enum.Font.SourceSans  
						Button.Text = ""  
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
						Button.TextSize = 14.000  

						TextLabel.Parent = Button  
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
						TextLabel.BackgroundTransparency = 1.000  
						TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
						TextLabel.Position = UDim2.new(0, 4, 0, -1)  
						TextLabel.Size = UDim2.new(1, 1, 1, 1)  
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = v  
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
						TextLabel.TextSize = 14.000  
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
						if first then first = false  
							TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
						end  

						Button.MouseButton1Down:Connect(function()  

							for i,v in next, Frame:GetChildren() do  
								if v:IsA("TextButton") then  
									library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
								end  
							end  

							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  

							Element.value.Scroll = v  

							values[tabname][sectorname][text] = Element.value  
							callback(Element.value)  
						end)  
						Button.MouseEnter:Connect(function()  
							if Element.value.Scroll ~= v then  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
							end  
						end)  
						Button.MouseLeave:Connect(function()  
							if Element.value.Scroll ~= v then  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
							end  
						end)  
					end  

					function Element:SetValue(val)  
						Element.value = val  

						for i,v in next, Frame:GetChildren() do  
							if v:IsA("TextButton") then  
								library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
							end  
						end  

						library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end  
					values[tabname][sectorname][text] = Element.value  
				elseif type == "Jumbobox" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,39)  
					Element.value = {Jumbobox = {}}  
					data.options = data.options or {}  

					local Dropdown = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local TextLabel = Instance.new("TextLabel")  
					local Drop = Instance.new("ScrollingFrame")  
					local Button_2 = Instance.new("TextButton")  
					local TextLabel_2 = Instance.new("TextLabel")  
					local UIListLayout = Instance.new("UIListLayout")  
					local ImageLabel = Instance.new("ImageLabel")  
					local TextLabel_3 = Instance.new("TextLabel")  

					Dropdown.Name = "Dropdown"  
					Dropdown.Parent = Inner  
					Dropdown.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Dropdown.BackgroundTransparency = 1.000  
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)  
					Dropdown.Size = UDim2.new(1, 0, 0, 39)  

					Button.Name = "Button"  
					Button.Parent = Dropdown  
					Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button.Position = UDim2.new(0, 30, 0, 16)  
					Button.Size = UDim2.new(0, 175, 0, 17)  
					Button.AutoButtonColor = false  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
					TextLabel.Position = UDim2.new(0, 5, 0, 0)  
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = "..."  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local abcd = TextLabel  

					Drop.Name = "Drop"  
					Drop.Parent = Button  
					Drop.Active = true  
					Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Drop.Position = UDim2.new(0, 0, 1, 1)  
					Drop.Size = UDim2.new(1, 0, 0, 20)  
					Drop.Visible = false  
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
					Drop.ScrollBarThickness = 0  
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
					--Drop.AutomaticCanvasSize = "Y"  
					for i,v in next, data.options do  
						Drop.CanvasSize = Drop.CanvasSize + UDim2.new(0, 0, 0, 17)  
					end  
					Drop.ZIndex = 5  
					Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

					UIListLayout.Parent = Drop  
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

					values[tabname][sectorname][text] = Element.value  

					local num = #data.options  
					if num > 5 then  
						Drop.Size = UDim2.new(1, 0, 0, 85)  
					else  
						Drop.Size = UDim2.new(1, 0, 0, 17*num)  
					end  
					local first = true  

					local function updatetext()  
						local old = {}  
						for i,v in next, data.options do  
							if TBLFIND(Element.value.Jumbobox, v) then  
								INSERT(old, v)  
							else  
							end  
						end  
						local str = ""  


						if #old == 0 then  
							str = "..."  
						else  
							if #old == 1 then  
								str = old[1]  
							else  
								for i,v in next, old do  
									if i == 1 then  
										str = v  
									else  
										if i > 2 then  
											if i < 4 then  
												str = str..",  ..."  
											end  
										else  
											str = str..",  "..v  
										end  
									end  
								end  
							end  
						end  

						abcd.Text = str  
					end  
					for i,v in next, data.options do  
						do  
							local Button = Instance.new("TextButton")  
							local TextLabel = Instance.new("TextLabel")  

							Button.Name = v  
							Button.Parent = Drop  
							Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
							Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
							Button.Position = UDim2.new(0, 30, 0, 16)  
							Button.Size = UDim2.new(0, 175, 0, 17)  
							Button.AutoButtonColor = false  
							Button.Font = Enum.Font.SourceSans  
							Button.Text = ""  
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
							Button.TextSize = 14.000  
							Button.BorderSizePixel = 0  
							Button.ZIndex = 6  

							TextLabel.Parent = Button  
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
							TextLabel.BackgroundTransparency = 1.000  
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
							TextLabel.Position = UDim2.new(0, 5, 0, -1)  
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = v  
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
							TextLabel.TextSize = 14.000  
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
							TextLabel.ZIndex = 6  

							Button.MouseButton1Down:Connect(function()  
								if TBLFIND(Element.value.Jumbobox, v) then  
									for i,a in next, Element.value.Jumbobox do  
										if a == v then  
											TBLREMOVE(Element.value.Jumbobox, i)  
										end  
									end  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
								else  
									INSERT(Element.value.Jumbobox, v)  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(51, 255, 126)})  
								end  
								updatetext()  

								values[tabname][sectorname][text] = Element.value  
								callback(Element.value)  
							end)  
							Button.MouseEnter:Connect(function()  
								if not TBLFIND(Element.value.Jumbobox, v) then  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
								end  
							end)  
							Button.MouseLeave:Connect(function()  
								if not TBLFIND(Element.value.Jumbobox, v) then  
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
								end  
							end)  

							first = false  
						end  
					end  
					function Element:SetValue(val)  
						Element.value = val  
						for i,v in next, Drop:GetChildren() do  
							if v.Name ~= "UIListLayout" then  
								if TBLFIND(val.Jumbobox, v.Name) then  
									v.TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
								else  
									v.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
								end  
							end  
						end  
						updatetext()  
						values[tabname][sectorname][text] = Element.value  
						callback(val)  
					end  
					if data.default then  
						Element:SetValue(data.default)  
					end  

					ImageLabel.Parent = Button  
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ImageLabel.BackgroundTransparency = 1.000  
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

					TextLabel_3.Parent = Dropdown  
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel_3.BackgroundTransparency = 1.000  
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
					TextLabel_3.Font = Enum.Font.Ubuntu
					TextLabel_3.Text = text  
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel_3.TextSize = 14.000  
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

					Button.MouseButton1Down:Connect(function()  
						Drop.Visible = not Drop.Visible  
						if not Drop.Visible then  
							Drop.CanvasPosition = Vector2.new(0,0)  
						end  
					end)  
					local indrop = false  
					local ind = false  
					Drop.MouseEnter:Connect(function()  
						indrop = true  
					end)  
					Drop.MouseLeave:Connect(function()  
						indrop = false  
					end)  
					Button.MouseEnter:Connect(function()  
						ind = true  
					end)  
					Button.MouseLeave:Connect(function()  
						ind = false  
					end)  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if Drop.Visible == true and not indrop and not ind then  
								Drop.Visible = false  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end  
					end)  
				elseif type == "ToggleKeybind" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,16)  
					Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}  

					local Toggle = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local Color = Instance.new("Frame")  
					local TextLabel = Instance.new("TextLabel")  

					Toggle.Name = "Toggle"  
					Toggle.Parent = Inner  
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Toggle.BackgroundTransparency = 1.000  
					Toggle.Size = UDim2.new(1, 0, 0, 15)  

					Button.Name = "Button"  
					Button.Parent = Toggle  
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Button.BackgroundTransparency = 1.000  
					Button.Size = UDim2.new(1, 0, 1, 0)  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					Color.Name = "Color"  
					Color.Parent = Button  
					Color.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Color.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Color.Position = UDim2.new(0, 15, 0.5, -5)  
					Color.Size = UDim2.new(0, 8, 0, 8)  
					local binding = false  
					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel.Size = UDim2.new(0, 5, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text..":"  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.AutomaticSize = "X"
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local function update()  
						if Element.value.Toggle then  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(51, 255, 126)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						else  
							keybindremove(text)  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						end  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end  

					Button.MouseButton1Down:Connect(function()  
						if not binding then  
							Element.value.Toggle = not Element.value.Toggle  
							update()  
							values[tabname][sectorname][text] = Element.value  
							callback(Element.value)  
						end  
					end)  
					if data.default then  
						update()  
					end  
					values[tabname][sectorname][text] = Element.value  
					do  
						local Keybind = Instance.new("TextButton")  
						local Frame = Instance.new("Frame")  
						local Always = Instance.new("TextButton")  
						local UIListLayout = Instance.new("UIListLayout")  
						local Hold = Instance.new("TextButton")  
						local Toggle = Instance.new("TextButton")  

						Keybind.Name = "Keybind"  
						Keybind.Parent = TextLabel  
						Keybind.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Keybind.BackgroundTransparency = 1
						Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Keybind.Position = UDim2.new(1, 0, 0.5, 0)  
						Keybind.Text = "[...]"  
						Keybind.Size = UDim2.new(0, 43, 0, 12)  
						Keybind.Size = UDim2.new(0,txt:GetTextSize("[...]", 14, Enum.Font.Ubuntu, Vector2.new(700, 12)).X + 5,0, 12)  
						Keybind.AutoButtonColor = false  
						Keybind.Font = Enum.Font.Ubuntu
						Keybind.TextColor3 = Color3.fromRGB(200, 200, 200)  
						Keybind.TextSize = 14.000  
						Keybind.AnchorPoint = Vector2.new(0,0.5)  
						Keybind.ZIndex = 3  

						Frame.Parent = Keybind  
						Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Frame.Position = UDim2.new(1, -49, 0, 1)  
						Frame.Size = UDim2.new(0, 49, 0, 49)  
						Frame.Visible = false  
						Frame.ZIndex = 3  

						Always.Name = "Always"  
						Always.Parent = Frame  
						Always.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Always.BackgroundTransparency = 1.000  
						Always.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Always.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)  
						Always.Size = UDim2.new(1, 0, 0, 16)  
						Always.AutoButtonColor = false  
						Always.Font = Enum.Font.SourceSansBold  
						Always.Text = "Always"  
						Always.TextColor3 = Color3.fromRGB(173, 24, 72)  
						Always.TextSize = 14.000  
						Always.ZIndex = 3  

						UIListLayout.Parent = Frame  
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

						Hold.Name = "Hold"  
						Hold.Parent = Frame  
						Hold.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Hold.BackgroundTransparency = 1.000  
						Hold.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Hold.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)  
						Hold.Size = UDim2.new(1, 0, 0, 16)  
						Hold.AutoButtonColor = false  
						Hold.Font = Enum.Font.Ubuntu
						Hold.Text = "Hold"  
						Hold.TextColor3 = Color3.fromRGB(200, 200, 200)  
						Hold.TextSize = 14.000  
						Hold.ZIndex = 3  

						Toggle.Name = "Toggle"  
						Toggle.Parent = Frame  
						Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
						Toggle.BackgroundTransparency = 1.000  
						Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)  
						Toggle.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)  
						Toggle.Size = UDim2.new(1, 0, 0, 16)  
						Toggle.AutoButtonColor = false  
						Toggle.Font = Enum.Font.Ubuntu
						Toggle.Text = "Toggle"  
						Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)  
						Toggle.TextSize = 14.000  
						Toggle.ZIndex = 3  

						for _,button in next, Frame:GetChildren() do  
							if button:IsA("TextButton") then  
								button.MouseButton1Down:Connect(function()  
									Element.value.Type = button.Text  
									Frame.Visible = false  
									if Element.value.Active ~= (Element.value.Type == "Always" and true or false) then  
										Element.value.Active = Element.value.Type == "Always" and true or false  
										callback(Element.value)  
									end  
									if button.Text == "Always" then  
										keybindremove(text)  
									end  
									for _,button in next, Frame:GetChildren() do  
										if button:IsA("TextButton") and button.Text ~= Element.value.Type then  
											button.Font = Enum.Font.Ubuntu
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})  
										end  
									end  
									button.Font = Enum.Font.SourceSansBold  
									button.TextColor3 = Color3.fromRGB(173, 24, 74)  
									values[tabname][sectorname][text] = Element.value  
								end)  
								button.MouseEnter:Connect(function()  
									if Element.value.Type ~= button.Text then  
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255,255,255)})  
									end  
								end)  
								button.MouseLeave:Connect(function()  
									if Element.value.Type ~= button.Text then  
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})  
									end  
								end)  
							end  
						end  
						Keybind.MouseButton1Down:Connect(function()  
							if not binding then  
								wait()  
								binding = true  
								Keybind.Text = "..."  
								Keybind.Size = UDim2.new(0,txt:GetTextSize("...", 14, Enum.Font.Ubuntu, Vector2.new(700, 12)).X + 4,0, 12)  
							end  
						end)  
						Keybind.MouseButton2Down:Connect(function()  
							if not binding then  
								Frame.Visible = not Frame.Visible  
							end  
						end)  
						local Player = game.Players.LocalPlayer  
						local Mouse = Player:GetMouse()  
						local InFrame = false  
						Frame.MouseEnter:Connect(function()  
							InFrame = true  
						end)  
						Frame.MouseLeave:Connect(function()  
							InFrame = false  
						end)  
						local InFrame2 = false  
						Keybind.MouseEnter:Connect(function()  
							InFrame2 = true  
						end)  
						Keybind.MouseLeave:Connect(function()  
							InFrame2 = false  
						end)  
						game:GetService("UserInputService").InputBegan:Connect(function(input)  
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then  
								if Frame.Visible == true and not InFrame and not InFrame2 then  
									Frame.Visible = false  
								end  
							end  
							if binding then  
								binding = false  
								Keybind.Text = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()  
								Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vector2.new(700, 12)).X + 5,0, 12)  
								Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name  
								if input.KeyCode.Name == "Backspace" then  
									Keybind.Text = "[...]"  
									Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vector2.new(700, 12)).X + 4,0, 12)  
									Element.value.Key = nil  
									Element.value.Active = true  
								end  
								callback(Element.value)  
							else  
								if Element.value.Key ~= nil then  
									if FIND(Element.value.Key, "Mouse") then  
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then  
											if Element.value.Type == "Hold" then  
												Element.value.Active = true  
												callback(Element.value)  
												if Element.value.Active and Element.value.Toggle then  
													keybindadd(text)  
												else  
													keybindremove(text)  
												end  
											elseif Element.value.Type == "Toggle" then  
												Element.value.Active = not Element.value.Active  
												callback(Element.value)  
												if Element.value.Active and Element.value.Toggle then  
													keybindadd(text)  
												else  
													keybindremove(text)  
												end  
											end  
										end  
									else  
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then  
											if Element.value.Type == "Hold" then  
												Element.value.Active = true  
												callback(Element.value)  
												if Element.value.Active and Element.value.Toggle then  
													keybindadd(text)  
												else  
													keybindremove(text)  
												end  
											elseif Element.value.Type == "Toggle" then  
												Element.value.Active = not Element.value.Active  
												callback(Element.value)  
												if Element.value.Active and Element.value.Toggle then  
													keybindadd(text)  
												else  
													keybindremove(text)  
												end  
											end  
										end  
									end  
								else  
									Element.value.Active = true  
								end  
							end  
							values[tabname][sectorname][text] = Element.value  
						end)  
						game:GetService("UserInputService").InputEnded:Connect(function(input)  
							if Element.value.Key ~= nil then  
								if FIND(Element.value.Key, "Mouse") then  
									if input.UserInputType == Enum.UserInputType[Element.value.Key] then  
										if Element.value.Type == "Hold" then  
											Element.value.Active = false  
											callback(Element.value)  
											if Element.value.Active then  
												keybindadd(text)  
											else  
												keybindremove(text)  
											end  
										end  
									end  
								else  
									if input.KeyCode == Enum.KeyCode[Element.value.Key] then  
										if Element.value.Type == "Hold" then  
											Element.value.Active = false  
											callback(Element.value)  
											if Element.value.Active then  
												keybindadd(text)  
											else  
												keybindremove(text)  
											end  
										end  
									end  
								end  
							end  
							values[tabname][sectorname][text] = Element.value  
						end)  
					end  
					function Element:SetValue(value)  
						Element.value = value  
						update()  
					end  
				elseif type == "Toggle" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,16)  
					Element.value = {Toggle = data.default and data.default.Toggle or false}  

					local Toggle = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local Color = Instance.new("Frame")  
					local TextLabel = Instance.new("TextLabel")  

					Toggle.Name = "Toggle"  
					Toggle.Parent = Inner  
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Toggle.BackgroundTransparency = 1.000  
					Toggle.Size = UDim2.new(1, 0, 0, 15)  

					Button.Name = "Button"  
					Button.Parent = Toggle  
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Button.BackgroundTransparency = 1.000  
					Button.Size = UDim2.new(1, 0, 1, 0)  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					Color.Name = "Color"  
					Color.Parent = Button  
					Color.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Color.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Color.Position = UDim2.new(0, 15, 0.5, -5)  
					Color.Size = UDim2.new(0, 8, 0, 8)  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local function update()  
						if Element.value.Toggle then  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(51, 255, 126)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						else  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						end  
						values[tabname][sectorname][text] = Element.value  
					end  

					Button.MouseButton1Down:Connect(function()  
						Element.value.Toggle = not Element.value.Toggle  
						update()  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end)  
					if data.default then  
						update()  
					end  
					values[tabname][sectorname][text] = Element.value  
					function Element:SetValue(value)  
						Element.value = value  
						values[tabname][sectorname][text] = Element.value  
						update()  
						callback(Element.value)  
					end  
				elseif type == "ToggleColor" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,16)  
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255)}  

					local Toggle = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local Color = Instance.new("Frame")  
					local TextLabel = Instance.new("TextLabel")  

					Toggle.Name = "Toggle"  
					Toggle.Parent = Inner  
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Toggle.BackgroundTransparency = 1.000  
					Toggle.Size = UDim2.new(1, 0, 0, 15)  

					Button.Name = "Button"  
					Button.Parent = Toggle  
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Button.BackgroundTransparency = 1.000  
					Button.Size = UDim2.new(1, 0, 1, 0)  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					Color.Name = "Color"  
					Color.Parent = Button  
					Color.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Color.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Color.Position = UDim2.new(0, 15, 0.5, -5)  
					Color.Size = UDim2.new(0, 8, 0, 8)  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local function update()  
						if Element.value.Toggle then  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(51, 255, 126)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						else  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						end  
						values[tabname][sectorname][text] = Element.value  
					end  

					local ColorH,ColorS,ColorV  

					local ColorP = Instance.new("TextButton")  
					local Frame = Instance.new("Frame")  
					local Colorpick = Instance.new("ImageButton")  
					local ColorDrag = Instance.new("Frame")  
					local Huepick = Instance.new("ImageButton")  
					local Huedrag = Instance.new("Frame")  

					ColorP.Name = "ColorP"  
					ColorP.Parent = Button  
					ColorP.AnchorPoint = Vector2.new(1, 0)  
					ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  
					ColorP.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					ColorP.Position = UDim2.new(0, 270, 0.5, -4)  
					ColorP.Size = UDim2.new(0, 18, 0, 8)  
					ColorP.AutoButtonColor = false  
					ColorP.Font = Enum.Font.Ubuntu
					ColorP.Text = ""  
					ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)  
					ColorP.TextSize = 14.000  

					Frame.Parent = ColorP  
					Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)  
					Frame.Size = UDim2.new(0, 200, 0, 170)  
					Frame.Visible = false  
					Frame.ZIndex = 3  

					Colorpick.Name = "Colorpick"  
					Colorpick.Parent = Frame  
					Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Colorpick.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Colorpick.ClipsDescendants = false  
					Colorpick.Position = UDim2.new(0, 40, 0, 10)  
					Colorpick.Size = UDim2.new(0, 150, 0, 150)  
					Colorpick.AutoButtonColor = false  
					Colorpick.Image = "rbxassetid://4155801252"  
					Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)  
					Colorpick.ZIndex = 3  

					ColorDrag.Name = "ColorDrag"  
					ColorDrag.Parent = Colorpick  
					ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)  
					ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ColorDrag.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					ColorDrag.Size = UDim2.new(0, 4, 0, 4)  
					ColorDrag.ZIndex = 3  

					Huepick.Name = "Huepick"  
					Huepick.Parent = Frame  
					Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Huepick.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Huepick.ClipsDescendants = false  
					Huepick.Position = UDim2.new(0, 10, 0, 10)  
					Huepick.Size = UDim2.new(0, 20, 0, 150)  
					Huepick.AutoButtonColor = false  
					Huepick.Image = "rbxassetid://3641079629"  
					Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)  
					Huepick.ImageTransparency = 1  
					Huepick.BackgroundTransparency = 0  
					Huepick.ZIndex = 3  

					local HueFrameGradient = Instance.new("UIGradient")  
					HueFrameGradient.Rotation = 90  
					HueFrameGradient.Name = "HueFrameGradient"  
					HueFrameGradient.Parent = Huepick  
					HueFrameGradient.Color = ColorSequence.new {  
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),  
						ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),  
						ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),  
						ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),  
						ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),  
						ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),  
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))  
					}	  

					Huedrag.Name = "Huedrag"  
					Huedrag.Parent = Huepick  
					Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Huedrag.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Huedrag.Size = UDim2.new(1, 0, 0, 2)  
					Huedrag.ZIndex = 3  

					ColorP.MouseButton1Down:Connect(function()  
						Frame.Visible = not Frame.Visible  
					end)  
					local abc = false  
					local inCP = false  
					ColorP.MouseEnter:Connect(function()  
						abc = true  
					end)  
					ColorP.MouseLeave:Connect(function()  
						abc = false  
					end)  
					Frame.MouseEnter:Connect(function()  
						inCP = true  
					end)  
					Frame.MouseLeave:Connect(function()  
						inCP = false  
					end)  

					ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)  
					ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)  
					ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)  

					if data.default and data.default.Color ~= nil then  
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()  

						ColorH = math.clamp(ColorH,0,1)  
						ColorS = math.clamp(ColorS,0,1)  
						ColorV = math.clamp(ColorV,0,1)  
						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  

						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)  

						values[tabname][sectorname][text] = data.default.Color  
					end  

					local mouse = LocalPlayer:GetMouse()  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if not dragging and not abc and not inCP then  
								Frame.Visible = false  
							end  
						end  
					end)  

					local function updateColor()  
						local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)  
						local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)  
						ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)  
						ColorS = 1-ColorX  
						ColorV = 1-ColorY  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						values[tabname][sectorname][text] = Element.value  
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)  
						callback(Element.value)  
					end  
					local function updateHue()  
						local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)  
						Huedrag.Position = UDim2.new(0, 0, 0, y)  
						hue = y/148  
						ColorH = 1-hue  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						values[tabname][sectorname][text] = Element.value  
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)  
						callback(Element.value)  
					end  
					Colorpick.MouseButton1Down:Connect(function()  
						updateColor()  
						moveconnection = mouse.Move:Connect(function()  
							updateColor()  
						end)  
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								updateColor()  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  
					Huepick.MouseButton1Down:Connect(function()  
						updateHue()  
						moveconnection = mouse.Move:Connect(function()  
							updateHue()  
						end)  
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								updateHue()  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  

					Button.MouseButton1Down:Connect(function()  
						Element.value.Toggle = not Element.value.Toggle  
						update()  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end)  
					if data.default then  
						update()  
					end  
					values[tabname][sectorname][text] = Element.value  
					function Element:SetValue(value)  
						Element.value = value  
						local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)  
						ColorH, ColorS, ColorV = duplicate:ToHSV()  
						ColorH = math.clamp(ColorH,0,1)  
						ColorS = math.clamp(ColorS,0,1)  
						ColorV = math.clamp(ColorV,0,1)  

						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						update()  
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)  

						callback(value)  
					end  
				elseif type == "ToggleTrans" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,16)  
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}  

					local Toggle = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local Color = Instance.new("Frame")  
					local TextLabel = Instance.new("TextLabel")  

					Toggle.Name = "Toggle"  
					Toggle.Parent = Inner  
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Toggle.BackgroundTransparency = 1.000  
					Toggle.Size = UDim2.new(1, 0, 0, 15)  

					Button.Name = "Button"  
					Button.Parent = Toggle  
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Button.BackgroundTransparency = 1.000  
					Button.Size = UDim2.new(1, 0, 1, 0)  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					Color.Name = "Color"  
					Color.Parent = Button  
					Color.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Color.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Color.Position = UDim2.new(0, 15, 0.5, -5)  
					Color.Size = UDim2.new(0, 8, 0, 8)  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local function update()  
						if Element.value.Toggle then  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 155, 155)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						else  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						end  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end  

					local ColorH,ColorS,ColorV  

					local ColorP = Instance.new("TextButton")  
					local Frame = Instance.new("Frame")  
					local Colorpick = Instance.new("ImageButton")  
					local ColorDrag = Instance.new("Frame")  
					local Huepick = Instance.new("ImageButton")  
					local Huedrag = Instance.new("Frame")  

					ColorP.Name = "ColorP"  
					ColorP.Parent = Button  
					ColorP.AnchorPoint = Vector2.new(1, 0)  
					ColorP.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  
					ColorP.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					ColorP.Position = UDim2.new(0, 270, 0.5, -4)  
					ColorP.Size = UDim2.new(0, 18, 0, 8)  
					ColorP.AutoButtonColor = false  
					ColorP.Font = Enum.Font.Ubuntu
					ColorP.Text = ""  
					ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)  
					ColorP.TextSize = 14.000  

					Frame.Parent = ColorP  
					Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)  
					Frame.Size = UDim2.new(0, 200, 0, 190)  
					Frame.Visible = false  
					Frame.ZIndex = 3  

					Colorpick.Name = "Colorpick"  
					Colorpick.Parent = Frame  
					Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Colorpick.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Colorpick.ClipsDescendants = false  
					Colorpick.Position = UDim2.new(0, 40, 0, 10)  
					Colorpick.Size = UDim2.new(0, 150, 0, 150)  
					Colorpick.AutoButtonColor = false  
					Colorpick.Image = "rbxassetid://4155801252"  
					Colorpick.ImageColor3 = Color3.fromRGB(255, 0, 0)  
					Colorpick.ZIndex = 3  

					ColorDrag.Name = "ColorDrag"  
					ColorDrag.Parent = Colorpick  
					ColorDrag.AnchorPoint = Vector2.new(0.5, 0.5)  
					ColorDrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ColorDrag.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					ColorDrag.Size = UDim2.new(0, 4, 0, 4)  
					ColorDrag.ZIndex = 3  

					Huepick.Name = "Huepick"  
					Huepick.Parent = Frame  
					Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Huepick.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Huepick.ClipsDescendants = true  
					Huepick.Position = UDim2.new(0, 10, 0, 10)  
					Huepick.Size = UDim2.new(0, 20, 0, 150)  
					Huepick.AutoButtonColor = false  
					Huepick.Image = "rbxassetid://3641079629"  
					Huepick.ImageColor3 = Color3.fromRGB(255, 0, 0)  
					Huepick.ImageTransparency = 1  
					Huepick.BackgroundTransparency = 0  
					Huepick.ZIndex = 3  

					local HueFrameGradient = Instance.new("UIGradient")  
					HueFrameGradient.Rotation = 90  
					HueFrameGradient.Name = "HueFrameGradient"  
					HueFrameGradient.Parent = Huepick  
					HueFrameGradient.Color = ColorSequence.new {  
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),  
						ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),  
						ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),  
						ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),  
						ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),  
						ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),  
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))  
					}	  

					Huedrag.Name = "Huedrag"  
					Huedrag.Parent = Huepick  
					Huedrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Huedrag.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Huedrag.Size = UDim2.new(1, 0, 0, 2)  
					Huedrag.ZIndex = 3  

					local Transpick = Instance.new("ImageButton")  
					local Transcolor = Instance.new("ImageLabel")  
					local Transdrag = Instance.new("Frame")  

					Transpick.Name = "Transpick"  
					Transpick.Parent = Frame  
					Transpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Transpick.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Transpick.Position = UDim2.new(0, 10, 0, 167)  
					Transpick.Size = UDim2.new(0, 180, 0, 15)  
					Transpick.AutoButtonColor = false  
					Transpick.Image = "rbxassetid://3887014957"  
					Transpick.ScaleType = Enum.ScaleType.Tile  
					Transpick.TileSize = UDim2.new(0, 10, 0, 10)  
					Transpick.ZIndex = 3  

					Transcolor.Name = "Transcolor"  
					Transcolor.Parent = Transpick  
					Transcolor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Transcolor.BackgroundTransparency = 1.000  
					Transcolor.Size = UDim2.new(1, 0, 1, 0)  
					Transcolor.Image = "rbxassetid://3887017050"  
					Transcolor.ImageColor3 = Color3.fromRGB(255, 0, 4)  
					Transcolor.ZIndex = 3  

					Transdrag.Name = "Transdrag"  
					Transdrag.Parent = Transcolor  
					Transdrag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Transdrag.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Transdrag.Position = UDim2.new(0, -1, 0, 0)  
					Transdrag.Size = UDim2.new(0, 2, 1, 0)  
					Transdrag.ZIndex = 3  

					ColorP.MouseButton1Down:Connect(function()  
						Frame.Visible = not Frame.Visible  
					end)  
					local abc = false  
					local inCP = false  
					ColorP.MouseEnter:Connect(function()  
						abc = true  
					end)  
					ColorP.MouseLeave:Connect(function()  
						abc = false  
					end)  
					Frame.MouseEnter:Connect(function()  
						inCP = true  
					end)  
					Frame.MouseLeave:Connect(function()  
						inCP = false  
					end)  

					ColorH = (math.clamp(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)  
					ColorS = 1-(math.clamp(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)  
					ColorV = 1-(math.clamp(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)  

					if data.default and data.default.Color ~= nil then  
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()  

						ColorH = math.clamp(ColorH,0,1)  
						ColorS = math.clamp(ColorS,0,1)  
						ColorV = math.clamp(ColorV,0,1)  
						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  

						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  

						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)  
					end  
					if data.default and data.default.Transparency ~= nil then  
						Transdrag.Position = UDim2.new(data.default.Transparency, -1, 0, 0)  
					end  
					local mouse = LocalPlayer:GetMouse()  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if not dragging and not abc and not inCP then  
								Frame.Visible = false  
							end  
						end  
					end)  

					local function updateColor()  
						local ColorX = (math.clamp(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)  
						local ColorY = (math.clamp(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)  
						ColorDrag.Position = UDim2.new(ColorX, 0, ColorY, 0)  
						ColorS = 1-ColorX  
						ColorV = 1-ColorY  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						values[tabname][sectorname][text] = Element.value  
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)  
						callback(Element.value)  
					end  
					local function updateHue()  
						local y = math.clamp(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)  
						Huedrag.Position = UDim2.new(0, 0, 0, y)  
						hue = y/148  
						ColorH = 1-hue  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						Transcolor.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						values[tabname][sectorname][text] = Element.value  
						Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)  
						callback(Element.value)  
					end  
					local function updateTrans()  
						local x = math.clamp(mouse.X - Transpick.AbsolutePosition.X, 0, 178)  
						Transdrag.Position = UDim2.new(0, x, 0, 0)  
						Element.value.Transparency = (x/178)  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end  
					Transpick.MouseButton1Down:Connect(function()  
						updateTrans()  
						moveconnection = mouse.Move:Connect(function()  
							updateTrans()  
						end)  
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								updateTrans()  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  
					Colorpick.MouseButton1Down:Connect(function()  
						updateColor()  
						moveconnection = mouse.Move:Connect(function()  
							updateColor()  
						end)  
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								updateColor()  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  
					Huepick.MouseButton1Down:Connect(function()  
						updateHue()  
						moveconnection = mouse.Move:Connect(function()  
							updateHue()  
						end)  
						releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								updateHue()  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  

					Button.MouseButton1Down:Connect(function()  
						Element.value.Toggle = not Element.value.Toggle  
						update()  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end)  
					if data.default then  
						if Element.value.Toggle then  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(155, 155, 155)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
						else  
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(15, 15, 15)})  
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						end  
						values[tabname][sectorname][text] = Element.value  
					end  
					values[tabname][sectorname][text] = Element.value  
					function Element:SetValue(value)  
						Element.value = value  
						local duplicate = Color3.new(value.Color.R, value.Color.G, value.Color.B)  
						ColorH, ColorS, ColorV = duplicate:ToHSV()  
						ColorH = math.clamp(ColorH,0,1)  
						ColorS = math.clamp(ColorS,0,1)  
						ColorV = math.clamp(ColorV,0,1)  

						ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)  
						Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)  
						ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)  
						update()  
						Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)  
					end  
				elseif type == "TextBox" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,30)  
					Element.value = {Text = data.default and data.default.text or ""}  

					local Box = Instance.new("Frame")  
					local TextBox = Instance.new("TextBox")  

					Box.Name = "Box"  
					Box.Parent = Inner  
					Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Box.BackgroundTransparency = 1.000  
					Box.Position = UDim2.new(0, 0, 0.542059898, 0)  
					Box.Size = UDim2.new(1, 0, 0, 30)  

					TextBox.Parent = Box  
					TextBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					TextBox.Position = UDim2.new(0.108303241, 0, 0.224465579, 0)  
					TextBox.Size = UDim2.new(0, 175, 0, 20)  
					TextBox.Font = Enum.Font.SourceSans  
					TextBox.PlaceholderText = data.placeholder  
					TextBox.Text = Element.value.Text  
					TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)  
					TextBox.TextSize = 14.000  

					values[tabname][sectorname][text] = Element.value  

					TextBox:GetPropertyChangedSignal("Text"):Connect(function()  
						if LEN(TextBox.Text) > 10 then  
							TextBox.Text = SUB(TextBox.Text, 1, 10)  
						end  
						Element.value.Text = TextBox.Text  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
					end)  

					function Element:SetValue(value)  
						Element.value = value  
						values[tabname][sectorname][text] = Element.value  
						TextBox.Text = Element.value.Text  
					end  

				elseif type == "Dropdown" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,39)  
					Element.value = {Dropdown = data.options[1]}  

					local Dropdown = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local TextLabel = Instance.new("TextLabel")  
					local Drop = Instance.new("ScrollingFrame")  
					local Button_2 = Instance.new("TextButton")  
					local TextLabel_2 = Instance.new("TextLabel")  
					local UIListLayout = Instance.new("UIListLayout")  
					local ImageLabel = Instance.new("ImageLabel")  
					local TextLabel_3 = Instance.new("TextLabel")  

					Dropdown.Name = "Dropdown"  
					Dropdown.Parent = Inner  
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Dropdown.BackgroundTransparency = 1.000  
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)  
					Dropdown.Size = UDim2.new(1, 0, 0, 39)  

					Button.Name = "Button"  
					Button.Parent = Dropdown  
					Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button.Position = UDim2.new(0, 30, 0, 16)  
					Button.Size = UDim2.new(0, 175, 0, 17)  
					Button.AutoButtonColor = false  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
					TextLabel.Position = UDim2.new(0, 5, 0, 0)  
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = Element.value.Dropdown  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local abcd = TextLabel  

					Drop.Name = "Drop"  
					Drop.Parent = Button  
					Drop.Active = true  
					Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Drop.Position = UDim2.new(0, 0, 1, 1)  
					Drop.Size = UDim2.new(1, 0, 0, 20)  
					Drop.Visible = false  
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
					Drop.ScrollBarThickness = 0  
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.AutomaticCanvasSize = "Y"  
					Drop.ZIndex = 5  
					Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

					UIListLayout.Parent = Drop  
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

					local num = #data.options  
					if num > 5 then  
						Drop.Size = UDim2.new(1, 0, 0, 85)  
					else  
						Drop.Size = UDim2.new(1, 0, 0, 17*num)  
					end  
					local first = true  
					for i,v in next, data.options do  
						do  
							local Button = Instance.new("TextButton")  
							local TextLabel = Instance.new("TextLabel")  

							Button.Name = v  
							Button.Parent = Drop  
							Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
							Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
							Button.Position = UDim2.new(0, 30, 0, 16)  
							Button.Size = UDim2.new(0, 175, 0, 17)  
							Button.AutoButtonColor = false  
							Button.Font = Enum.Font.SourceSans  
							Button.Text = ""  
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
							Button.TextSize = 14.000  
							Button.BorderSizePixel = 0  
							Button.ZIndex = 6  

							TextLabel.Parent = Button  
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
							TextLabel.BackgroundTransparency = 1.000  
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
							TextLabel.Position = UDim2.new(0, 5, 0, -1)  
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = v  
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
							TextLabel.TextSize = 14.000  
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
							TextLabel.ZIndex = 6  

							Button.MouseButton1Down:Connect(function()  
								Drop.Visible = false  
								Element.value.Dropdown = v  
								abcd.Text = v  
								values[tabname][sectorname][text] = Element.value  
								callback(Element.value)  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end)  
							Button.MouseEnter:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})  
							end)  
							Button.MouseLeave:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})  
							end)  

							first = false  
						end  
					end  

					function Element:SetValue(val)  
						Element.value = val  
						abcd.Text = val.Dropdown  
						values[tabname][sectorname][text] = Element.value  
						callback(val)  
					end  

					ImageLabel.Parent = Button  
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ImageLabel.BackgroundTransparency = 1.000  
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

					TextLabel_3.Parent = Dropdown  
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel_3.BackgroundTransparency = 1.000  
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
					TextLabel_3.Font = Enum.Font.Ubuntu
					TextLabel_3.Text = text  
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel_3.TextSize = 14.000  
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

					Button.MouseButton1Down:Connect(function()  
						Drop.Visible = not Drop.Visible  
						if not Drop.Visible then  
							Drop.CanvasPosition = Vector2.new(0,0)  
						end  
					end)  
					local indrop = false  
					local ind = false  
					Drop.MouseEnter:Connect(function()  
						indrop = true  
					end)  
					Drop.MouseLeave:Connect(function()  
						indrop = false  
					end)  
					Button.MouseEnter:Connect(function()  
						ind = true  
					end)  
					Button.MouseLeave:Connect(function()  
						ind = false  
					end)  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if Drop.Visible == true and not indrop and not ind then  
								Drop.Visible = false  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end  
					end)  
					values[tabname][sectorname][text] = Element.value 

				elseif type == "lmao" then  
					Section.Size = Section.Size + UDim2.new(0,0,0,39)  
					Element.value = {Dropdown = data.options[1]}  

					local Dropdown = Instance.new("Frame")  
					local Button = Instance.new("TextButton")  
					local TextLabel = Instance.new("TextLabel")  
					local Drop = Instance.new("ScrollingFrame")  
					local Button_2 = Instance.new("TextButton")  
					local TextLabel_2 = Instance.new("TextLabel")  
					local UIListLayout = Instance.new("UIListLayout")  
					local ImageLabel = Instance.new("ImageLabel")  
					local TextLabel_3 = Instance.new("TextLabel")  

					Dropdown.Name = "Dropdown"  
					Dropdown.Parent = Inner  
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Dropdown.BackgroundTransparency = 1.000  
					Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)  
					Dropdown.Size = UDim2.new(1, 0, 0, 39)  

					Button.Name = "Button"  
					Button.Parent = Dropdown  
					Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button.Position = UDim2.new(0, 30, 0, 16)  
					Button.Size = UDim2.new(0, 175, 0, 17)  
					Button.AutoButtonColor = false  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					TextLabel.Parent = Button  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
					TextLabel.Position = UDim2.new(0, 5, 0, 0)  
					TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = Element.value.Dropdown  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					local abcd = TextLabel  

					Drop.Name = "Drop"  
					Drop.Parent = Button  
					Drop.Active = true  
					Drop.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Drop.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Drop.Position = UDim2.new(0, 0, 1, 1)  
					Drop.Size = UDim2.new(1, 0, 0, 20)  
					Drop.Visible = false  
					Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.CanvasSize = UDim2.new(1, 1, 1, 1)  
					Drop.ScrollBarThickness = 0  
					Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"  
					Drop.AutomaticCanvasSize = "Y"  
					Drop.ZIndex = 5  
					Drop.ScrollBarImageColor3 = Color3.fromRGB(51, 255, 126)  

					UIListLayout.Parent = Drop  
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center  
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder  

					local num = #data.options  
					if num > 5 then  
						Drop.Size = UDim2.new(1, 0, 0, 85)  
					else  
						Drop.Size = UDim2.new(1, 0, 0, 17*num)  
					end  
					local first = true  
function gay()
					for i,v in next, data.options do  
						do  
							local Button = Instance.new("TextButton")  
							local TextLabel = Instance.new("TextLabel")  

							Button.Name = v  
							Button.Parent = Drop  
							Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
							Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
							Button.Position = UDim2.new(0, 30, 0, 16)  
							Button.Size = UDim2.new(0, 175, 0, 17)  
							Button.AutoButtonColor = false  
							Button.Font = Enum.Font.SourceSans  
							Button.Text = ""  
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
							Button.TextSize = 14.000  
							Button.BorderSizePixel = 0  
							Button.ZIndex = 6  

							TextLabel.Parent = Button  
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
							TextLabel.BackgroundTransparency = 1.000  
							TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
							TextLabel.Position = UDim2.new(0, 5, 0, -1)  
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)  
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = v  
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
							TextLabel.TextSize = 14.000  
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left  
							TextLabel.ZIndex = 6  

							Button.MouseButton1Down:Connect(function()  
								Drop.Visible = false  
								Element.value.Dropdown = v  
								abcd.Text = v  
								values[tabname][sectorname][text] = Element.value  
								callback(Element.value)  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end)  
							Button.MouseEnter:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(255, 255, 255)})  
							end)  
							Button.MouseLeave:Connect(function()  
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(200, 200, 200)})  
							end)  

							first = false 
							Players.PlayerAdded:Connect(function(player)
								Button:Destroy()
								TextLabel:Destroy()
							end)
 
							Players.PlayerRemoving:Connect(function(player) 
								Button:Destroy()
								TextLabel:Destroy()
							end)							
						end  
					end 
end				
gay()



Players.PlayerAdded:Connect(function(player)
insertwithoutdupes(data.options, player.Name)
 gay()
end)
 
Players.PlayerRemoving:Connect(function(player) 
removewithoutdupes(data.options, player.Name)
	gay()
end)	

					function Element:SetValue(val)  
						Element.value = val  
						abcd.Text = val.Dropdown  
						values[tabname][sectorname][text] = Element.value  
						callback(val)  
					end  

					ImageLabel.Parent = Button  
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					ImageLabel.BackgroundTransparency = 1.000  
					ImageLabel.Position = UDim2.new(0, 165, 0, 6)  
					ImageLabel.Size = UDim2.new(0, 6, 0, 4)  
					ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"  

					TextLabel_3.Parent = Dropdown  
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel_3.BackgroundTransparency = 1.000  
					TextLabel_3.Position = UDim2.new(0, 32, 0, -1)  
					TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)  
					TextLabel_3.Font = Enum.Font.Ubuntu
					TextLabel_3.Text = text  
					TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel_3.TextSize = 14.000  
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left  

					Button.MouseButton1Down:Connect(function()  
						Drop.Visible = not Drop.Visible  
						if not Drop.Visible then  
							Drop.CanvasPosition = Vector2.new(0,0)  
						end  
					end)  
					local indrop = false  
					local ind = false  
					Drop.MouseEnter:Connect(function()  
						indrop = true  
					end)  
					Drop.MouseLeave:Connect(function()  
						indrop = false  
					end)  
					Button.MouseEnter:Connect(function()  
						ind = true  
					end)  
					Button.MouseLeave:Connect(function()  
						ind = false  
					end)  
					game:GetService("UserInputService").InputBegan:Connect(function(input)  
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then  
							if Drop.Visible == true and not indrop and not ind then  
								Drop.Visible = false  
								Drop.CanvasPosition = Vector2.new(0,0)  
							end  
						end  
					end)  
					values[tabname][sectorname][text] = Element.value

				elseif type == "Label" then 
								Section.Size = Section.Size + UDim2.new(0,0,0,17) 
								Element.value = {Text = data.default and data.options.text or '', stringchange} 

								local Toggle = Instance.new("Frame") 
								local TextLabel = Instance.new("TextLabel") 

								Toggle.Name = "Toggle" 
								Toggle.Parent = Inner 
								Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
								Toggle.BackgroundTransparency = 1.000 
								Toggle.Size = UDim2.new(1, 0, 0, 15) 

								TextLabel.Parent = Toggle 
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
								TextLabel.BackgroundTransparency = 1.000 
								TextLabel.Position = UDim2.new(0, 32, 0, -1) 
								TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0) 
								TextLabel.Font = Enum.Font.Gotham 
								TextLabel.Text = text 
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200) 
								TextLabel.TextSize = 12.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
								
								Element.value.stringchange = function(text)
								TextLabel.Text = text
								end
								
								values[tabname][sectorname][text] = Element.value 

								function Element:SetValue(value) 
									Element.value = value 
									values[tabname][sectorname][text] = Element.value 
									update() 
									callback(Element.value) 
								end 

												elseif type == "cfgtype" then 
							local amount = data.Amount or 6 
								Section.Size = Section.Size + UDim2.new(0,0,0,amount * 16 + 8) 
								if data.alphabet then 
									table.sort(data.options, function(a,b) 
										return a < b 
									end) 
								end 
								Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}

								local Scroll = Instance.new("Frame") 
								local Frame = Instance.new("ScrollingFrame") 
								local UIListLayout = Instance.new("UIListLayout") 

								Scroll.Name = "Scroll" 
								Scroll.Parent = Inner 
								Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
								Scroll.BackgroundTransparency = 1.000 
								Scroll.Position = UDim2.new(0, 0, 00, 0) 
								Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8) 


								Frame.Name = "Frame" 
								Frame.Parent = Scroll --  
								Frame.Active = true 
								Frame.BackgroundColor3 = Color3.fromRGB(46, 46, 46) 
								Frame.BorderColor3 = Color3.fromRGB(18, 18, 16) 
								Frame.Position = UDim2.new(0, 30, 0, 0) 
								Frame.Size = UDim2.new(0, 175, 0, 16 * amount) 
								Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282" 
								Frame.CanvasSize = UDim2.new(0, 0, 0, 0) 
								Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282" 
								Frame.ScrollBarThickness = 4 
								Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282" 
								Frame.AutomaticCanvasSize = "Y" 
								Frame.ScrollBarImageColor3 = MainUIColor 

								UIListLayout.Parent = Frame 
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
								local first = true 
ConfigUpdateCfgList:Connect(function() 
								for i,v in next, data.options do 
									local Button = Instance.new("TextButton") 
									local TextLabel = Instance.new("TextLabel") 

									Button.Name = v 
									Button.Parent = Frame 
									Button.BackgroundColor3 = Color3.fromRGB(46, 46, 46) 
									Button.BorderColor3 = Color3.fromRGB(18, 18, 16) 
									Button.BorderSizePixel = 0 
									Button.Position = UDim2.new(0, 30, 0, 16) 
									Button.Size = UDim2.new(1, 0, 0, 16) 
									Button.AutoButtonColor = false 
									Button.Font = Enum.Font.SourceSans 
									Button.Text = "" 
									Button.TextColor3 = Color3.fromRGB(0, 0, 0) 
									Button.TextSize = 11.000

									TextLabel.Parent = Button 
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
									TextLabel.BackgroundTransparency = 1.000 
									TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53) 
									TextLabel.Position = UDim2.new(0, 4, 0, -1) 
									TextLabel.Size = UDim2.new(1, 1, 1, 1) 
									TextLabel.Font = Enum.Font.Gotham 
									TextLabel.Text = v 
									TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200) 
									TextLabel.TextSize = 11.000
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
									if first then first = false 
										TextLabel.TextColor3 = MainUIColor 
									end 
ConfigUpdateCfgList2:Connect(function()
Button:Destroy()
TextLabel:Destroy()
end)
									Button.MouseButton1Down:Connect(function() 

										for i,v in next, Frame:GetChildren() do 
											if v:IsA("TextButton") then 
												library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)}) 
											end 
										end 

										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = MainUIColor}) 

										Element.value.Scroll = v 

										values[tabname][sectorname][text] = Element.value 
										callback(Element.value) 
									end) 
									Button.MouseEnter:Connect(function() 
										if Element.value.Scroll ~= v then 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = MainUIColor}) 
										end 
									end) 
									Button.MouseLeave:Connect(function() 
										if Element.value.Scroll ~= v then 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)}) 
										end 
									end) 
								end
end)
ConfigUpdateCfgList:Fire()

								function Element:SetValue(val) 
									Element.value = val 

									for i,v in next, Frame:GetChildren() do 
										if v:IsA("TextButton") then 
											library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)}) 
										end 
									end 

									library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)}) 
									values[tabname][sectorname][text] = Element.value 
									callback(Element.value) 
								end 
								values[tabname][sectorname][text] = Element.value	
					
					
					
				elseif type == "Slider" then  

					Section.Size = Section.Size + UDim2.new(0,0,0,30)  

					local Slider = Instance.new("Frame")  
					local TextLabel = Instance.new("TextLabel")  
					local Button = Instance.new("TextButton")  
					local Frame = Instance.new("Frame")  
					local UIGradient = Instance.new("UIGradient")  
					local Value = Instance.new("TextLabel")  

					Slider.Name = "Slider"  
					Slider.Parent = Inner  
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Slider.BackgroundTransparency = 1.000  
					Slider.Position = UDim2.new(0, 0, 0.653061211, 0)  
					Slider.Size = UDim2.new(1, 0, 0, 30)  

					TextLabel.Parent = Slider  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.Position = UDim2.new(0, 32, 0, -2)  
					TextLabel.Size = UDim2.new(0, 100, 0, 15)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text..":"
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  
					TextLabel.AutomaticSize = "X"
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left  

					Button.Name = "Button"  
					Button.Parent = Slider  
					Button.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button.Position = UDim2.new(0, 30, 0, 15)  
					Button.Size = UDim2.new(0, 175, 0, 10)  
					Button.AutoButtonColor = false  
					Button.Font = Enum.Font.SourceSans  
					Button.Text = ""  
					Button.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button.TextSize = 14.000  

					Frame.Parent = Button  
					Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Frame.BorderSizePixel = 0  
					Frame.Size = UDim2.new(0.5, 0, 1, 0)  

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(51, 255, 126)), ColorSequenceKeypoint.new(1, Color3.fromRGB(31, 155, 96))}  
					UIGradient.Rotation = 90  
					UIGradient.Parent = Frame  

					Value.Name = "Value"  
					Value.Parent = TextLabel 
					Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Value.BackgroundTransparency = 1.000  
					Value.Position = UDim2.new(1, 0, 0, 0)  
					Value.Size = UDim2.new(0, 55, 0, 15)  
					Value.Font = Enum.Font.Ubuntu
					Value.Text = "50"  
					Value.TextColor3 = Color3.fromRGB(200, 200, 200)  
					Value.TextSize = 14.000  
					Value.TextXAlignment = Enum.TextXAlignment.Left 
					local min, max, default = data.min or 0, data.max or 100, data.default or 0  
					Element.value = {Slider = default}  

					function Element:SetValue(value)  
						Element.value = value  
						local a  
						if min > 0 then  
							a = ((Element.value.Slider - min)) / (max-min)  
						else  
							a = (Element.value.Slider-min)/(max-min)  
						end  
						Value.Text = Element.value.Slider  
						Frame.Size = UDim2.new(a,0,1,0)  
						values[tabname][sectorname][text] = Element.value  
						callback(value)  
					end  
					local a  
					if min > 0 then  
						a = ((Element.value.Slider - min)) / (max-min)  
					else  
						a = (Element.value.Slider-min)/(max-min)  
					end  
					Value.Text = Element.value.Slider  
					Frame.Size = UDim2.new(a,0,1,0)  
					values[tabname][sectorname][text] = Element.value  
					local uis = game:GetService("UserInputService")  
					local mouse = game.Players.LocalPlayer:GetMouse()  
					local val  
					Button.MouseButton1Down:Connect(function()  
						Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
						val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0  
						Value.Text = val  
						Element.value.Slider = val  
						values[tabname][sectorname][text] = Element.value  
						callback(Element.value)  
						moveconnection = mouse.Move:Connect(function()  
							Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
							val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))  
							Value.Text = val  
							Element.value.Slider = val  
							values[tabname][sectorname][text] = Element.value  
							callback(Element.value)  
						end)  
						releaseconnection = uis.InputEnded:Connect(function(Mouse)  
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then  
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 10)  
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))  
								values[tabname][sectorname][text] = Element.value  
								callback(Element.value)  
								moveconnection:Disconnect()  
								releaseconnection:Disconnect()  
							end  
						end)  
					end)  
				elseif type == "Button" then  

					Section.Size = Section.Size + UDim2.new(0,0,0,24)  
					local Button = Instance.new("Frame")  
					local Button_2 = Instance.new("TextButton")  
					local TextLabel = Instance.new("TextLabel")  

					Button.Name = "Button"  
					Button.Parent = Inner  
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					Button.BackgroundTransparency = 1.000  
					Button.Position = UDim2.new(0, 0, 0.236059487, 0)  
					Button.Size = UDim2.new(1, 0, 0, 24)  

					Button_2.Name = "Button"  
					Button_2.Parent = Button  
					Button_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)  
					Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)  
					Button_2.Position = UDim2.new(0, 30, 0.5, -9)  
					Button_2.Size = UDim2.new(0, 175, 0, 18)  
					Button_2.AutoButtonColor = false  
					Button_2.Font = Enum.Font.SourceSans  
					Button_2.Text = ""  
					Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)  
					Button_2.TextSize = 14.000  

					TextLabel.Parent = Button_2  
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
					TextLabel.BackgroundTransparency = 1.000  
					TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)  
					TextLabel.Size = UDim2.new(1, 0, 1, 0)  
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = text  
					TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)  
					TextLabel.TextSize = 14.000  

					function Element:SetValue()  
					end  

					Button_2.MouseButton1Down:Connect(function()  
						TextLabel.TextColor3 = Color3.fromRGB(51, 255, 126)  
						library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
						callback()  
					end)  
					Button_2.MouseEnter:Connect(function()  
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})  
					end)  
					Button_2.MouseLeave:Connect(function()  
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})  
					end)  
				end  
				ConfigLoad:Connect(function(cfg)  
					pcall(function()  
						local fix = library:ConfigFix(cfg)  
						if fix[tabname][sectorname][text] ~= nil then  
							Element:SetValue(fix[tabname][sectorname][text])  
						end  
					end)  
				end) 
								ConfigLoad1:Connect(function(cfg) 
					pcall(function()  
						local fix = library:ConfigFix1(cfg)  
						if fix[tabname][sectorname][text] ~= nil then  
							Element:SetValue(fix[tabname][sectorname][text])  
						end  
					end)  
								end)				

				return Element  
			end  
			return Sector  
		end  

		return Tab  
	end  

	RITOWNSYA.Parent = game.CoreGui  

	return menu  
end  


local UserInputService = game:GetService("UserInputService") 
local ReplicatedStorage = game:GetService("ReplicatedStorage") 
local RunService = game:GetService("RunService") 
local Lighting = game:GetService("Lighting") 
local Players = game:GetService("Players") 
local LocalPlayer = Players.LocalPlayer 
local PlayerGui = LocalPlayer.PlayerGui 
local Mouse = LocalPlayer:GetMouse() 
local Camera = workspace.CurrentCamera 
local ClientScript = LocalPlayer.PlayerGui.Client 
local Client = getsenv(ClientScript) 

repeat RunService.RenderStepped:Wait() until game:IsLoaded() 

local Crosshairs = PlayerGui.GUI.Crosshairs 
local Crosshair = PlayerGui.GUI.Crosshairs.Crosshair 
local oldcreatebullethole = Client.createbullethole 
local LGlove, RGlove, LSleeve, RSleeve, RArm, LArm 
local WeaponObj = {} 
local SelfObj = {} 
local Viewmodels =  ReplicatedStorage.Viewmodels 
local Weapons =  ReplicatedStorage.Weapons 
local ViewmodelOffset = CFrame.new(0,0,0) 
local Smokes = {} 
local RayIgnore = workspace.Ray_Ignore 
local RageTarget 
local GetIcon = require(game.ReplicatedStorage.GetIcon) 
local BodyVelocity = Instance.new("BodyVelocity") 
BodyVelocity.MaxForce = Vector3.new(math.huge, 0, math.huge) 
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris} 
local FakelagFolder = Instance.new("Folder", workspace) 
FakelagFolder.Name = "Fakelag" 
local FakeAnim = Instance.new("Animation", workspace) 
FakeAnim.AnimationId = "rbxassetid://0" 
local Gloves = ReplicatedStorage.Gloves 
if Gloves:FindFirstChild("ImageLabel") then 
	Gloves.ImageLabel:Destroy() 
end 
local GloveModels = Gloves.Models 
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
local ChamItems = {} 
local Skyboxes = { 
	["nebula"] = { 
		SkyboxLf = "rbxassetid://159454286", 
		SkyboxBk = "rbxassetid://159454299", 
		SkyboxDn = "rbxassetid://159454296", 
		SkyboxFt = "rbxassetid://159454293", 
		SkyboxLf = "rbxassetid://159454286", 
		SkyboxRt = "rbxassetid://159454300", 
		SkyboxUp = "rbxassetid://159454288", 
	}, 
	["minecraft"] = { 
		SkyboxLf = "rbxassetid://3822391866", 
		SkyboxBk = "rbxassetid://3822390508", 
		SkyboxDn = "rbxassetid://3822392871", 
		SkyboxFt = "rbxassetid://3822391392", 
		SkyboxLf = "rbxassetid://3822391866", 
		SkyboxRt = "rbxassetid://3822390968", 
		SkyboxUp = "rbxassetid://3822392413", 
	}, 
	["vaporwave"] = { 
		SkyboxLf = "rbxassetid://1417494402", 
		SkyboxBk = "rbxassetid://1417494030", 
		SkyboxDn = "rbxassetid://1417494146", 
		SkyboxFt = "rbxassetid://1417494253", 
		SkyboxLf = "rbxassetid://1417494402", 
		SkyboxRt = "rbxassetid://1417494499", 
		SkyboxUp = "rbxassetid://1417494643", 
	}, 
	["clouds"] = { 
		SkyboxLf = "rbxassetid://570557620", 
		SkyboxBk = "rbxassetid://570557514", 
		SkyboxDn = "rbxassetid://570557775", 
		SkyboxFt = "rbxassetid://570557559", 
		SkyboxLf = "rbxassetid://570557620", 
		SkyboxRt = "rbxassetid://570557672", 
		SkyboxUp = "rbxassetid://570557727", 
	}, 
	["twilight"] = { 
		SkyboxLf = "rbxassetid://264909758", 
		SkyboxBk = "rbxassetid://264908339", 
		SkyboxDn = "rbxassetid://264907909", 
		SkyboxFt = "rbxassetid://264909420", 
		SkyboxLf = "rbxassetid://264909758", 
		SkyboxRt = "rbxassetid://264908886", 
		SkyboxUp = "rbxassetid://264907379", 
	}, 
} 

local RifthookTK = Instance.new("ScreenGui")
local Main = Instance.new("TextButton")
local Frame = Instance.new("Frame")
    

RifthookTK.Name = "RifthookTK"
RifthookTK.Parent = game.CoreGui
RifthookTK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    
Main.Size = UDim2.new(0,200,0,40)
Main.Transparency = 1
Main.Parent = RifthookTK

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderSizePixel = 1
Frame.Size = UDim2.new(1,-20,1,-35)
Frame.Position = UDim2.new(0,10,0,25)


local MX_ONHIT = Instance.new("ScreenGui")
local OnHitFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local SampleLabel = Instance.new("TextLabel")


MX_ONHIT.Name = "MX_ONHIT"
MX_ONHIT.Parent = game.CoreGui
MX_ONHIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OnHitFrame.Parent = MX_ONHIT
OnHitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnHitFrame.BackgroundTransparency = 1.000
OnHitFrame.Position = UDim2.new(1, -300, 0, 0)
OnHitFrame.Size = UDim2.new(0, 300, 0, 500)

UIListLayout.Parent = OnHitFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

SampleLabel.Name = "SampleLabel"
SampleLabel.Parent = OnHitFrame
SampleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.BackgroundTransparency = 1.000
SampleLabel.BorderSizePixel = 1
SampleLabel.Size = UDim2.new(1, 0, 0, 20)
SampleLabel.Font = Enum.Font.Code
SampleLabel.Text = "Hit SamplePlayer in HeadHB "
SampleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.TextSize = 14.000
SampleLabel.TextStrokeTransparency = 0.000
SampleLabel.TextTransparency = 1.000
SampleLabel.TextXAlignment = Enum.TextXAlignment.Right

local function CreateHitElement(text,col)
    spawn(function()
        local Label = SampleLabel:Clone()
        Label.Text = text
        Label.Parent = MX_ONHIT.Frame
        Label.TextTransparency = 0
        Label.TextColor3 = col
        wait(5)
        Label:Destroy()
    end)
end

local NewScope 
do 
	local ScreenGui = Instance.new("ScreenGui") 
	local Frame = Instance.new("Frame") 
	local Frame_2 = Instance.new("Frame") 

	ScreenGui.Enabled = false 
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global 
	ScreenGui.IgnoreGuiInset = true 

	Frame.Parent = ScreenGui 
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
	Frame.BorderSizePixel = 1 
	Frame.Position = UDim2.new(0, 0, 0.5, 0) 
	Frame.Size = UDim2.new(1, 0, 0, 1) 

	Frame_2.Parent = ScreenGui 
	Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
	Frame_2.BorderSizePixel = 1 
	Frame_2.Position = UDim2.new(0.5, 0, 0, 0) 
	Frame_2.Size = UDim2.new(0, 1, 1, 0) 

	ScreenGui.Parent = game.CoreGui 

	NewScope = ScreenGui 
end 
local oldSkybox 

local function VectorRGB(RGB) 
	return Vector3.new(RGB.R, RGB.G, RGB.B) 
end 
local function new(name, prop) 
	local obj = Instance.new(name) 
	for i,v in next, prop do 
		if i ~= "Parent" then 
			obj[i] = v 
		end 
	end 
	if prop["Parent"] ~= nil then 
		obj.Parent = prop["Parent"] 
	end 
end 
		local function UpdateAccessory(Accessory)      
			Accessory.Material = values.visuals.effects["accessory material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField"      
			Accessory.Mesh.VertexColor = VectorRGB(values.visuals.effects["accessory chams"].Color)      
			Accessory.Color = values.visuals.effects["accessory chams"].Color      
			Accessory.Transparency = values.visuals.effects["accessory chams"].Transparency      
			if values.visuals.effects["accessory material"].Dropdown ~= "ForceField" then      
				Accessory.Mesh.TextureId = ""      
			else      
				Accessory.Mesh.TextureId = Accessory.StringValue.Value      
			end      
		end      
		local function ReverseAccessory(Accessory)      
			Accessory.Material = "SmoothPlastic"      
			Accessory.Mesh.VertexColor = Vector3.new(1,1,1)      
			Accessory.Mesh.TextureId = Accessory.StringValue.Value      
			Accessory.Transparency = 0      
		end      
local function UpdateWeapon(obj) 
				local selected = values.visuals.effects["weapon material"].Dropdown
                if obj:IsA("MeshPart") and selected == "ForceField" then 
				    if values.visuals.effects["forcefield type"].Dropdown == "normal" then
				        obj.TextureID = ""
				    elseif values.visuals.effects["forcefield type"].Dropdown == "web" then
						obj.TextureID = "rbxassetid://301464986"
					elseif values.visuals.effects["forcefield type"].Dropdown == "swirl" then
						obj.TextureID = "rbxassetid://8133639623"
					elseif values.visuals.effects["forcefield type"].Dropdown == "checkers" then
						obj.TextureID = "rbxassetid://5790215150"		
					elseif values.visuals.effects["forcefield type"].Dropdown == "candy cane" then
						obj.TextureID = "rbxassetid://6853532738"	
					elseif values.visuals.effects["forcefield type"].Dropdown == "player ff texture" then
						obj.TextureID = "rbxassetid://4494641460"
					elseif values.visuals.effects["forcefield type"].Dropdown == "shield forcefield" then
						obj.TextureID = "rbxassetid://361073795"
					elseif values.visuals.effects["forcefield type"].Dropdown == "dots" then
						obj.TextureID = "rbxassetid://5830615971"	
					elseif values.visuals.effects["forcefield type"].Dropdown == "scanning (suggested by blast)" then
						obj.TextureID = "rbxassetid://5843010904"			
					elseif values.visuals.effects["forcefield type"].Dropdown == "bubbles (suggested by blast)" then
						obj.TextureID = "rbxassetid://1461576423"								
					end
				else 
					if selected == "Smooth" or selected == "Glass" or selected == "Flat" then obj.TextureID = "" end
				end
				if obj:IsA("Part") and obj:FindFirstChild("Mesh") and not obj:IsA("BlockMesh") then
					obj.Mesh.VertexColor = VectorRGB(values.visuals.effects["weapon chams"].Color)
					if selected == "Smooth" or selected == "Glass" then
						obj.Mesh.TextureId = ""
					else
						pcall(function()
							obj.Mesh.TextureId = obj.Mesh.OriginalTexture.Value
							obj.Mesh.TextureID = obj.Mesh.OriginalTexture.Value
						end)
					end
				end
				obj.Color = values.visuals.effects["weapon chams"].Color
				obj.Material = selected == "Smooth" and "SmoothPlastic" or selected == "Flat" and "Neon" or selected == "ForceField" and "ForceField" or "Glass"
				obj.Reflectance = values.visuals.effects["reflectance"].Slider/10
				obj.Transparency = values.visuals.effects["weapon chams"].Transparency
			end
local Skins = ReplicatedStorage.Skins 
local function MapSkin(Gun, Skin, CustomSkin) 
	if CustomSkin ~= nil then 
		for _,Data in next, CustomSkin do 
			local Obj = Camera.Arms:FindFirstChild(Data.Name) 
			if Obj ~= nil and Obj.Transparency ~= 1 then 
				Obj.TextureId = Data.Value 
			end 
		end 
	else 
		local SkinData = Skins:FindFirstChild(Gun):FindFirstChild(Skin) 
		if not SkinData:FindFirstChild("Animated") then 
			for _,Data in next, SkinData:GetChildren() do 
				local Obj = Camera.Arms:FindFirstChild(Data.Name) 
				if Obj ~= nil and Obj.Transparency ~= 1 then 
					if Obj:FindFirstChild("Mesh") then 
						Obj.Mesh.TextureId = v.Value 
					elseif not Obj:FindFirstChild("Mesh") then 
						Obj.TextureID = Data.Value 
					end 
				end 
			end 
		end 
	end 
end 
local function ChangeCharacter(NewCharacter) 
	for _,Part in next, LocalPlayer.Character:GetChildren() do 
		if Part:IsA("Accessory") then 
			Part:Destroy() 
		end 
		if Part:IsA("BasePart") then 
			if NewCharacter:FindFirstChild(Part.Name) then 
				Part.Color = NewCharacter:FindFirstChild(Part.Name).Color 
				Part.Transparency = NewCharacter:FindFirstChild(Part.Name).Transparency 
			end 
			if Part.Name == "FakeHead" then 
				Part.Color = NewCharacter:FindFirstChild("Head").Color 
				Part.Transparency = NewCharacter:FindFirstChild("Head").Transparency 
			end 
		end 

		if (Part.Name == "Head" or Part.Name == "FakeHead") and Part:FindFirstChildOfClass("Decal") and NewCharacter.Head:FindFirstChildOfClass("Decal") then 
			Part:FindFirstChildOfClass("Decal").Texture = NewCharacter.Head:FindFirstChildOfClass("Decal").Texture 
		end 
	end 

	if NewCharacter:FindFirstChildOfClass("Shirt") then 
		if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then 
			LocalPlayer.Character:FindFirstChildOfClass("Shirt"):Destroy() 
		end 
		local Clone = NewCharacter:FindFirstChildOfClass("Shirt"):Clone() 
		Clone.Parent = LocalPlayer.Character 
	end 

	if NewCharacter:FindFirstChildOfClass("Pants") then 
		if LocalPlayer.Character:FindFirstChildOfClass("Pants") then 
			LocalPlayer.Character:FindFirstChildOfClass("Pants"):Destroy() 
		end 
		local Clone = NewCharacter:FindFirstChildOfClass("Pants"):Clone() 
		Clone.Parent = LocalPlayer.Character 
	end 

	for _,Part in next, NewCharacter:GetChildren() do 
		if Part:IsA("Accessory") then 
			local Clone = Part:Clone() 
			for _,Weld in next, Clone.Handle:GetChildren() do 
				if Weld:IsA("Weld") and Weld.Part1 ~= nil then 
					Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name] 
				end 
			end 
			Clone.Parent = LocalPlayer.Character 
		end 
	end 

	if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then 
		local String = Instance.new("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate 
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Shirt") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate = "" 
		end 
	end 
	if LocalPlayer.Character:FindFirstChildOfClass("Pants") then 
		local String = Instance.new("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate 
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate = "" 
		end 
	end 
	for i,v in next, LocalPlayer.Character:GetChildren() do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			INSERT(SelfObj, v) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Handle.Material.Name 
			String.Parent = v.Handle 
		end 
	end 

	if values.visuals.self["self chams"].Toggle then 
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = values.visuals.self["self chams material"].Dropdown 
				obj.Color = values.visuals.self["self chams"].Color 
			end 
		end 
	end 
end 
local function GetDeg(pos1, pos2) 
	local start = pos1.LookVector 
	local vector = CFrame.new(pos1.Position, pos2).LookVector 
	local angle = math.acos(start:Dot(vector)) 
	local deg = math.deg(angle) 
	return deg 
end 
local Ping = game.Stats.PerformanceStats.Ping:GetValue() 

for i,v in next, Viewmodels:GetChildren() do 
	if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then 
		v.HumanoidRootPart.Transparency = 1 
	end 
end 

local Models = game:GetObjects("rbxassetid://8356647750")[1] 
repeat wait() until Models ~= nil 
local ChrModels = game:GetObjects("rbxassetid://8370129931")[1] 
repeat wait() until ChrModels ~= nil 


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

local AllGloves = {} 


for _,fldr in next, Gloves:GetChildren() do 
	if fldr ~= GloveModels and fldr.Name ~= "Racer" then 
		AllGloves[fldr.Name] = {} 
		for _2,modl in next, fldr:GetChildren() do 
			INSERT(AllGloves[fldr.Name], modl.Name) 
		end 
	end 
end 

for i,v in next, Models.Knives:GetChildren() do 
	INSERT(AllKnives, v.Name) 
end 

local AllSkins = {} 
local AllWeapons = {} 
local AllCharacters = {} 

for i,v in next, ChrModels:GetChildren() do 
	INSERT(AllCharacters, v.Name) 
end 

local skins = { 
	{["Weapon"] = "AWP", ["SkinName"] = "Bot", ["Skin"] = {["Scope"] = "6572594838", ["Handle"] = "6572594077"}} 
} 

for _,skin in next, skins do 
	local Folder = Instance.new("Folder") 
	Folder.Name = skin["SkinName"] 
	Folder.Parent = Skins[skin["Weapon"]] 

	for _,model in next, skin["Skin"] do 
		local val = Instance.new("StringValue") 
		val.Name = _ 
		val.Value = "rbxassetid://"..model 
		val.Parent = Folder 
	end 
end 

for i,v in next, Skins:GetChildren() do 
	INSERT(AllWeapons, v.Name) 
end 

TBLSORT(AllWeapons, function(a,b) 
	return a < b 
end) 

for i,v in next, AllWeapons do 
	AllSkins[v] = {} 
	INSERT(AllSkins[v], "Inventory") 
	for _,v2 in next, Skins[v]:GetChildren() do 
		if not v2:FindFirstChild("Animated") then 
			INSERT(AllSkins[v], v2.Name) 
		end 
	end 
end 

makefolder("tinlua") 

local allluas = {} 

for _,lua in next, listfiles("tinlua") do 
	local luaname = GSUB(lua, "tinlua\\", "") 
	INSERT(allluas, luaname) 
end 

local allcfgs = {} 

for _,cfg in next, listfiles("tinshits_config") do 
	local cfgname = string.gsub(cfg, "tinshits_config\\", "")
	table.insert(allcfgs, cfgname) 
end
if #allcfgs == 0 then
table.insert(allcfgs, 'shit so script wont crash')
end

RunService.RenderStepped:Wait() 
local gui = library:New("tinshits") 
local legit = gui:Tab("legit") 
local rage = gui:Tab("rage") 
local visuals = gui:Tab("visuals") 
local misc = gui:Tab("misc") 
local skins = gui:Tab("skins") 
local luas = gui:Tab("luas")   

local RS = game:GetService('RunService')



getgenv().api = {} 
api.newtab = function(name) 
	return gui:Tab(name) 
end 
api.newsection = function(tab, name, side) 
	return tab:Sector(name, side) 
end 
api.newelement = function(section, type, name, data, callback) 
	section:Element(type, name, data, callback) 
end 


local luascripts = luas:Sector("lua scripts", "Left") 
luascripts:Element("Scroll", "lua", {options = allluas, Amount = 5}) 
luascripts:Element("Button", "load", {}, function() 
	loadstring(readfile("tinlua\\"..values.luas["lua scripts"].lua.Scroll))() 
end) 

local function predict(part, ping)
    local oldPos = part.Position
    local step = RS.RenderStepped:Wait()
    local newPos = part.Position

    local playerSpeed = (newPos - oldPos).magnitude / step
    local direction = CFrame.new(oldPos, newPos)

    local final = (direction * CFrame.new(0, 0, -(playerSpeed * (ping / 1000)))).p
    
    return final
end 

local Loopkill = luas:Sector("Loop kill", "Left") 
Loopkill:Element("lmao", "Player", {options = loopkillplr, Amount = 20}, function(tbl)
	if game.Players:FindFirstChild(tbl.Dropdown) then
		
		while tbl.Dropdown ~= LocalPlayer.Name and game.Players:FindFirstChild(tbl.Dropdown) do
			wait(0.1)
			values.luas["Loop kill"]['Alive: '].stringchange('Alive: '..(IsAlive(game.Players[tbl.Dropdown]) and 'yes' or 'no'))
			values.luas['Loop kill']['Team: '].stringchange('Team: '..game.Players[tbl.Dropdown].Team.Name)
			values.luas['Loop kill']['Account age: '].stringchange('Account age: '..game.Players[tbl.Dropdown].AccountAge..' days')
		end
		
		values.luas["Loop kill"]['Alive: '].stringchange('Alive: ')
		values.luas['Loop kill']['Team: '].stringchange('Team: ')
		values.luas['Loop kill']['Account age: '].stringchange('Account age: ')
	end
end)
Loopkill:Element("Toggle", "Loop kill for hexagon retards", nil, function(tbl)
if tbl.Toggle then

_G.Disable2 = false
local step2
	step2 = game:GetService("RunService").RenderStepped:Connect(function()
	if _G.Disable2 then step2:Disconnect() return end
	--values.other.other.Player.Dropdown
				if Players[values.luas["Loop kill"]['Player'].Dropdown].Character and Players[values.luas["Loop kill"]['Player'].Dropdown].Team ~= LocalPlayer.Team and Players[values.luas["Loop kill"]['Player'].Dropdown].Character:FindFirstChild("UpperTorso") then
                game:GetService("ReplicatedStorage").Events.HitPart:FireServer(
                    Players[values.luas["Loop kill"]['Player'].Dropdown].Character.Head, -- 1
                    predict(Players[values.luas["Loop kill"]['Player'].Dropdown].Character.Head, game:GetService("Stats").PerformanceStats.Ping:GetValue()), --2
                    "Banana", --3
                    100, -- Range --4
                    game.Players.LocalPlayer.Character:WaitForChild("Gun"), --5
                    Vector3.new(), -- Start Position --6
                    Vector3.new(),
                    100, -- Damage Modifier
                    false,
                    false,
                    Vector3.new(),
                    100,
                    Vector3.new()
                )
				end
	end)
    else
	_G.Disable2 = true
	end
end)

Loopkill:Element("Toggle", "Loop kill that uses stormy's kill all", nil, function(tbl)
if tbl.Toggle then
_G.Disable1 = false
local step1
	step1 = game:GetService("RunService").RenderStepped:Connect(function()
	if _G.Disable1 then step1:Disconnect() return end
	--values.other.other.Player.Dropdown
				if Players[values.luas["Loop kill"]['Player'].Dropdown].Character and Players[values.luas["Loop kill"]['Player'].Dropdown].Team ~= LocalPlayer.Team and Players[values.luas["Loop kill"]['Player'].Dropdown].Character:FindFirstChild("UpperTorso") then
					local oh1 = Players[values.luas["Loop kill"]['Player'].Dropdown].Character.Head
					local oh2 = Players[values.luas["Loop kill"]['Player'].Dropdown].Character.Head.CFrame.p
					local oh3 = Client.gun.Name
					local oh4 = 4096
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = 15
					local oh9 = false
					local oh10 = false
					local oh11 = Vector3.new(0,0,0)
					local oh12 = 16868
					local oh13 = Vector3.new(0, 0, 0)
					game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
	end)
    else
	_G.Disable1 = true
	end
end)

Loopkill:Element('ToggleTrans', 'Target Chams', {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl)
	for _,Player in next, Players:GetPlayers() do
		if Player.Character and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == 'VisibleCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end
Players.PlayerAdded:Connect(function(Player)
	Player:GetPropertyChangedSignal("Team"):Connect(function()
		wait()
		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == "VisibleCham" then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end)
end)
	LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new)
	for _,Player in next, Players:GetPlayers() do
		if Player.Character and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == 'VisibleCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end
	end)
end)

Loopkill:Element('ToggleTrans', 'Target Vchams', {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl)
	for _,Player in next, Players:GetPlayers() do
		if Player.Character and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == 'WallCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end
Players.PlayerAdded:Connect(function(Player)
	Player:GetPropertyChangedSignal("Team"):Connect(function()
		wait()
		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == "WallCham" then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end)
end)
	LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new)
	for _,Player in next, Players:GetPlayers() do
		if Player.Character and Player.Name == values.luas["Loop kill"]['Player'].Dropdown then
			for _2,Obj in next, Player.Character:GetDescendants() do
				if Obj.Name == 'WallCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = tbl.Transparency
				end
			end
		end
	end
	end)
end)

Loopkill:Element("ToggleColor", "Target box", {default = {Color = Color3.fromRGB(255,255,255)}}) 
Loopkill:Element("ToggleColor", "Target name", {default = {Color = Color3.fromRGB(255,255,255)}}) 
Loopkill:Element("ToggleColor", "Target health", {default = {Color = Color3.fromRGB(255,255,255)}}) 
Loopkill:Element("ToggleColor", "Target weapon", {default = {Color = Color3.fromRGB(255,255,255)}}) 
Loopkill:Element("ToggleColor", "Target weapon icon", {default = {Color = Color3.fromRGB(255,255,255)}})

Loopkill:Element('Label', 'Alive: ')
Loopkill:Element('Label', 'Team: ')
Loopkill:Element('Label', 'Account age: ')

local daddy = luas:Sector('Change weapon', 'Left')

local function longasscode()
return (values.luas['Change weapon']['what slot'].Dropdown == 'knife' and 5 or values.luas['Change weapon']['what slot'].Dropdown == 'pistol' and 7 or values.luas['Change weapon']['what slot'].Dropdown == 'primary' and 8)
end

daddy:Element('Button', 'hook weapon', {}, function()
-- pasted from google
local gun = values.luas['Change weapon']['weapon'].Scroll[values.luas['Change weapon']['weapon'].Dropdown] -- AWP, AK47, G3SG1, ect.
local givefunc
for _, v in next, getgc() do
local parentScript = rawget(getfenv(v), "script")

    if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
        givefunc = v
        break
    end
end
debug.setupvalue(givefunc, longasscode(), gun) -- index 7 = secondary wep, index 8 = primary wep (i think lol. forgor)
end)

local mydadbeatsme = { 
	Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"}, 
	SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"}, 
	Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"}, 
	Sniper = {"AWP", "Scout", "G3SG1"} 
} 

daddy:Element('Dropdown', 'what slot', {options = {'knife', 'pistol', 'primary'}})
daddy:Element('ScrollDrop', 'weapon', {options = mydadbeatsme})

local knife = skins:Sector("knife", "Left") 
knife:Element("Toggle", "knife changer") 
knife:Element("Scroll", "model", {options = AllKnives, Amount = 15}) 

local glove = skins:Sector("glove", "Left") 
glove:Element("Toggle", "glove changer") 
glove:Element("ScrollDrop", "model", {options = AllGloves, Amount = 9}) 

local skin = skins:Sector("skins", "Right") 
skin:Element("Toggle", "skin changer") 
skin:Element("ScrollDrop", "skin", {options = AllSkins, Amount = 15, alphabet = true}) 

local characters = skins:Sector("characters", "Right") 
characters:Element("Toggle", "character changer", nil, function(tbl) 
	if tbl.Toggle then 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then 
			ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll)) 
		end 
	end 
end) 
characters:Element("Scroll", "skin", {options = AllCharacters, Amount = 9, alphabet = true}, function(tbl) 
	if values.skins.characters["character changer"].Toggle then 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then 
			ChangeCharacter(ChrModels:FindFirstChild(tbl.Scroll)) 
		end 
	end 
end) 

local aimbot = legit:Sector("aimbot", "Left") 
aimbot:Element("ToggleKeybind", "aim assist") 
aimbot:Element("ToggleKeybind", "silent aim") 
aimbot:Element("ToggleKeybind", "triggerbot") 

local main = legit:MSector("main", "Left") 
local default = main:Tab("default") 
local pistol = main:Tab("pistol") 
local smg = main:Tab("smg") 
local rifle = main:Tab("rifle") 
local sniper = main:Tab("sniper") 

local function AddLegit(Tab) 
	Tab:Element("Jumbobox", "conditions", {options = {"visible", "standing", "blind", "smoke"}}) 
	Tab:Element("Dropdown", "target", {options = {"crosshair", "health", "distance"}}) 
	Tab:Element("Dropdown", "hitbox", {options = {"closest", "head", "chest"}}) 
	Tab:Element("Slider", "field of view", {min = 30, max = 420, default = 120}) 
	Tab:Element("Slider", "smoothing", {min = 1, max = 50, default = 1}) 
	Tab:Element("Toggle", "silent aim") 
	Tab:Element("Slider", "hitchance", {min = 1, max = 100, default = 100}) 
	Tab:Element("Dropdown", "priority", {options = {"closest", "head", "chest"}}) 
	Tab:Element("Toggle", "triggerbot") 
	Tab:Element("Slider", "delay (ms)", {min = 0, max = 300, default = 200}) 
	Tab:Element("Slider", "minimum dmg", {min = 0, max = 100, default = 15}) 
end 

AddLegit(default) 

pistol:Element("Toggle", "override default") 
AddLegit(pistol) 

smg:Element("Toggle", "override default") 
AddLegit(smg) 

rifle:Element("Toggle", "override default") 
AddLegit(rifle) 

sniper:Element("Toggle", "override default") 
AddLegit(sniper) 

local settings = legit:Sector("settings", "Right") 
settings:Element("Toggle", "free for all") 
settings:Element("Toggle", "forcefield check") 
settings:Element("ToggleColor", "draw fov") 

local aimbot = rage:Sector("aimbot", "Left") 
aimbot:Element("Toggle", "enabled") 
aimbot:Element("Dropdown", "origin", {options = {"character", "camera"}}) 
aimbot:Element("Toggle", "silent aim") 
aimbot:Element("Dropdown", "automatic fire", {options = {"off", "standard", "hitpart"}}) 
aimbot:Element("Toggle", "autowall") 
aimbot:Element("Jumbobox", "resolver", {options = {"pitch", "roll", "animation", "cortez step", "offset"}})
aimbot:Element("Slider", "cortez amount", {min = -20, max = 20, default = 11})
aimbot:Element("Slider", "offset amount", {min = -20, max = 20, default = 11})
aimbot:Element("Slider", "y amount", {min = -20, max = 20, default = 3})
aimbot:Element("Toggle", "delay shot") 
aimbot:Element("Toggle", "force hit")
aimbot:Element("Dropdown", "prediction", {options = {"off", "cframe", "velocity"}}) 
aimbot:Element("Toggle", "get real") 
aimbot:Element("Toggle", "teammates") 
aimbot:Element("ToggleKeybind", "auto baim") 
aimbot:Element("Toggle", "knifebot") 

local weapons = rage:MSector("weapons", "Left") 
local default = weapons:Tab("default") 
local pistol = weapons:Tab("pistol") 
local rifle = weapons:Tab("rifle") 
local scout = weapons:Tab("scout") 
local awp = weapons:Tab("awp") 
local auto = weapons:Tab("auto") 

local function AddRage(Tab) 
	Tab:Element("Jumbobox", "hitboxes", {options = {"head", "torso", "pelvis"}}) 
	Tab:Element("Toggle", "prefer baim") 
	Tab:Element("Slider", "minimum damage", {min = -10, max = 100, default = 20})
	Tab:Element("Slider", "max fov", {min = 1, max = 180, default = 180}) 
end 

AddRage(default) 

pistol:Element("Toggle", "override default") 
AddRage(pistol) 

rifle:Element("Toggle", "override default") 
AddRage(rifle) 

scout:Element("Toggle", "override default") 
AddRage(scout) 

awp:Element("Toggle", "override default") 
AddRage(awp) 

auto:Element("Toggle", "override default") 
AddRage(auto) 

local antiaim = rage:Sector("angles", "Right") 
antiaim:Element("Toggle", "enabled") 
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
fakeduckloop = false  
antiaim:Element("ToggleKeybind", "fake duck",{},function(tbl)
	fakeduckloop = tbl.Toggle and tbl.Active
	while fakeduckloop and syn do
		pcall(function()
			wait(0.1)
			local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
			local CrouchAnim = nil
			for i,v in next, debug.getupvalues(Client.setcharacter) do
				if type(v) == "userdata" and v.ClassName == "AnimationTrack" and v.Name == "Idle" then
					CrouchAnim = v	
					LocalPlayer.Character:FindFirstChild("Humanoid").CameraOffset = Vector3.new(0, 0.1, 0)					
				end
			end
			CrouchAnim:Play()
		end)
	end
end)    
antiaim:Element("Dropdown", "yaw base", {options = {"camera", "targets", "spin", "random", "anti crippin'", "keybind yaw"}}) 
antiaim:Element("Slider", "yaw offset", {min = -180, max = 180, default = 0}) 
antiaim:Element("ToggleKeybind", "reset yaw")
antiaim:Element("ToggleKeybind", "manual left")
antiaim:Element("ToggleKeybind", "manual right")
antiaim:Element("Toggle", "jitter") 
antiaim:Element("Slider", "jitter offset", {min = -180, max = 180, default = 0}) 
antiaim:Element("Dropdown", "pitch", {options = {"zero", "up", "down", "180", "180v2", "180v3", "random", "random2", "totally normal", "totally normal2", "custom", "down2", "up2", "sucking dick", "fake headless", "huge"}})
antiaim:Element("Slider", "pitch angle", {min = -100, max = 100, default = 0})  
antiaim:Element("Toggle", "extend pitch") 
antiaim:Element("ToggleKeybind", "reset pitch")
antiaim:Element("Dropdown", "body roll", {options = {"off", "180"}})
antiaim:Element("Slider", "body roll offset", {min = -180, max = 180, default = 0}) 
antiaim:Element("Slider", "spin speed", {min = 1, max = 69, default = 10})
antiaim:Element("Slider", "high pos", {min = -10, max = 20, default = 2})

local others = rage:Sector("others", "Right") 
others:Element("Toggle", "remove head") 
others:Element("Toggle", "no animations") 
others:Element("Dropdown", "leg movement", {options = {"off", "slide", "slide2" , "slide3"}}) 

local LagTick = 0
local fakelag = rage:Sector("fakelag", "Right")
fakelag:Element("Toggle", "enabled", {default = {Toggle = false}}, function(tbl)
	if tbl.Toggle then
	else
		FakelagFolder:ClearAllChildren()
		game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
	end
end)
fakelag:Element("Dropdown", "amount", {options = {"static", "dynamic"}})
fakelag:Element("Slider", "limit", {min = 1, max = 16, default = 8})
fakelag:Element("ToggleColor", "visualize lag", {default = {Toggle = false, Color = Color3.fromRGB(255,255,255)}}, function(tbl)
	if tbl.Toggle then
		for _,obj in next, FakelagFolder:GetChildren() do
			obj.Color = tbl.Color
		end
	else
		FakelagFolder:ClearAllChildren()
	end
end)
fakelag:Element("ToggleKeybind", "ping spike")
coroutine.wrap(function()
while wait(1/16) do
	LagTick = math.clamp(LagTick + 1, 0, values.rage.fakelag.limit.Slider)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") and values.rage.fakelag.enabled.Toggle then
		if LagTick == (values.rage.fakelag.amount.Dropdown == "static" and values.rage.fakelag.limit.Slider or math.random(1, values.rage.fakelag.limit.Slider)) then
			game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
			FakelagFolder:ClearAllChildren()
			LagTick = 0
			if values.rage.fakelag["visualize lag"].Toggle then
				for _,hitbox in next, LocalPlayer.Character:GetChildren() do
					if hitbox:IsA("BasePart") and hitbox.Name ~= "HumanoidRootPart" then
						local part = Instance.new("Part")
						part.CFrame = hitbox.CFrame
						part.Anchored = true
						part.CanCollide = false
						part.Material = Enum.Material.ForceField
						part.Color = values.rage.fakelag["visualize lag"].Color
						part.Name = hitbox.Name
						part.Transparency = 0
						part.Size = hitbox.Size
						part.Parent = FakelagFolder
					end
				end
			end
		else
			if values.rage.fakelag.enabled.Toggle then
				game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)
			end
		end
	else
		FakelagFolder:ClearAllChildren()
		game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
	end
end
end)()
 

local exploits = rage:Sector("exploits", "Left") 
exploits:Element("ToggleKeybind", "custom tap")
exploits:Element("Slider", "tap amount", {min = 2, max = 100, default = 2}) 
exploits:Element("ToggleKeybind", "kill all", nil, function(tbl)
	if tbl.Toggle and LocalPlayer.Character:FindFirstChild("Gun") then
		_G.DisableKillAll = false
		local killall
		killall = game:GetService("RunService").RenderStepped:Connect(function()
			if _G.DisableKillAll then killall:Disconnect() return end
			for i,v in next, Players:GetPlayers() do
				if v.Character and v.Team ~= LocalPlayer.Team and v.Character:FindFirstChild("Head") then
					local Arguments = {
						[1] = v.Character.Head,
						[2] = v.Character.Head.CFrame.p,
						[3] = Client.gun.Name,
						[4] = 4096,
						[5] = LocalPlayer.Character.Gun,
						[8] = 10,
						[9] = false,
						[10] = true,
						[11] = Vector3.new(),
						[12] = 16868,
						[13] = Vector3.new()
					}
					game:GetService("ReplicatedStorage").Events.HitPart:FireServer(unpack(Arguments))
				end
			end
		end)
	else
		_G.DisableKillAll = true
	end
end)

function IsAlive(plr)
    return (plr and plr.Character and plr.Character:FindFirstChild("Head") and plr.Status.Alive.Value == true and true) or false
end

exploits:Element("ToggleKeybind", "hexagon kill all", {}, function(tbl) 

if tbl.Toggle then

_G.Disable = false
local hexagonkillall
hexagonkillall = game:GetService("RunService").RenderStepped:Connect(function()
         if _G.Disable then hexagonkillall:Disconnect() return end
        for i,v in next, Players:GetPlayers() do
            if v ~= Player and v.Team ~= game.Players.LocalPlayer.Team and IsAlive(v) and IsAlive(game.Players.LocalPlayer) then
                game:GetService("ReplicatedStorage").Events.HitPart:FireServer(
                    v.Character.Head,
                    predict(v.Character.Head, game:GetService("Stats").PerformanceStats.Ping:GetValue()),
                    "Banana",
                    100, -- Range
                    game.Players.LocalPlayer.Character:WaitForChild("Gun"),
                    Vector3.new(), -- Start Position
                    Vector3.new(),
                    100, -- Damage Modifier
                    false,
                    false,
                    Vector3.new(),
                    100,
                    Vector3.new()
                )
            end
        end
end)
    else
	_G.Disable = true
		print("gae")
	end
end)

exploits:Element('Toggle', 'whizz all', {}, function(tbl)
	while tbl.Toggle and LocalPlayer.Character:FindFirstChild('Gun') do
		for _,Player in next, Players:GetPlayers() do
			game:GetService('ReplicatedStorage').Events.Whizz:FireServer(Player)
		end
	end
end)

exploits:Element('Button', 'God Mode', {}, function()
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local ApplyGun = ReplicatedStorage.Events.ApplyGun;
ApplyGun:FireServer({
    Model = ReplicatedStorage.Hostage.Hostage,
    Name = "USP"
}, game.Players.LocalPlayer);
end)

exploits:Element("Slider", "qp vertical pos", {min = -500, max = 500, default = 200})  
exploits:Element("ToggleKeybind", "quick peek",{},function(tbl)
	if tbl.Toggle and tbl.Active and LocalPlayer.Character and Peek == false then
		if values.rage.exploits["loop peek"].Toggle == true and values.rage.exploits["quick peek"].Active == true then
			while values.rage.exploits["loop peek"].Toggle == true do
				Peek = true
				LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,values.rage.exploits["qp vertical pos"].Slider,0)
				wait(0.2)
				Peek = false
				LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0,values.rage.exploits["qp vertical pos"].Slider,0)
				wait(0.2)
			end
		else
			Peek = true
			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,values.rage.exploits["qp vertical pos"].Slider,0)
			wait(0.2)
			Peek = false
			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0,values.rage.exploits["qp vertical pos"].Slider,0)
		end
	elseif  not tbl.Active then
		Peek = false
	end
end)  
exploits:Element("Toggle","loop peek")
exploits:Element("Toggle","debris clear",{},function(tbl)
    while values.rage.exploits["debris clear"].Toggle == true do
        wait(1)
        for i,v in next, workspace.Debris:GetDescendants() do
            game:GetService("ReplicatedStorage").Events.DestroyObject:FireServer(v)
        end 
    end
end)
local AutoPeek = {
    OldPeekPosition = CFrame.new()
}

exploits:Element("ToggleKeybind","auto peek",{},function(tbl)
	if tbl.Toggle and tbl.Active and LocalPlayer.Character then
        AutoPeek.OldPeekPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
	end
end)
exploits:Element("ToggleKeybind","fakeframe",{},function(tbl)
			spawn(function()
				while values.rage.exploits["fakeframe"].Toggle == true and values.rage.exploits["fakeframe"].Active == true do
					wait()
					game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)  
				end
				game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
			end)
		end)

OldClientFireBullet = Client.firebullet
Client.firebullet = function(...)
    if values.rage.exploits["auto peek"].Toggle and values.rage.exploits["auto peek"].Active and LocalPlayer.Character then
        LocalPlayer.Character.HumanoidRootPart.CFrame = AutoPeek.OldPeekPosition
    end
    return OldClientFireBullet(...)
end



local players = visuals:Sector("players", "Left") 
players:Element("Toggle", "teammates") 
players:Element("ToggleColor", "box", {default = {Color = Color3.fromRGB(255,255,255)}}) 
players:Element("ToggleColor", "name", {default = {Color = Color3.fromRGB(255,255,255)}}) 
players:Element("Toggle", "health", {default = {Color = Color3.fromRGB(255,255,255)}})  
players:Element("ToggleColor", "weapon", {default = {Color = Color3.fromRGB(255,255,255)}}) 
players:Element("ToggleColor", "weapon icon", {default = {Color = Color3.fromRGB(255,255,255)}}) 
players:Element("Jumbobox", "indicators", {options = {"armor"}}) 
players:Element("Jumbobox", "outlines", {options = {"drawings", "text"}, default = {Jumbobox = {"drawings", "text"}}}) 
players:Element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}}) 
players:Element("Slider", "size", {min = 12, max = 16, default = 13}) 
players:Element("ToggleTrans", "chams", nil, function(tbl) 
	for _,Player in next, Players:GetPlayers() do 
		if Player.Character then 
			for _2,Obj in next, Player.Character:GetDescendants() do 
				if Obj.Name == "VisibleCham" then 
					if tbl.Toggle then 
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
							Obj.Visible = true 
						else 
							Obj.Visible = false 
						end 
					else 
						Obj.Visible = false 
					end 
					Obj.Color3 = tbl.Color
                    Obj.Transparency = tbl.Transparency					
				end 
			end 
		end 
	end 
end) 
players:Element("ToggleTrans", "outline chams", nil, function(tbl) 
	for _,Player in next, Players:GetPlayers() do 
		if Player.Character then 
			for _2,Obj in next, Player.Character:GetDescendants() do 
				if Obj.Name == "WallCham" then 
					if tbl.Toggle then 
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
							Obj.Visible = true 
						else 
							Obj.Visible = false 
						end 
					else 
						Obj.Visible = false 
					end 
					Obj.Color3 = tbl.Color 
					Obj.Transparency = tbl.Transparency
				end 
			end 
		end 
	end 
end)

local effects = visuals:Sector("effects", "Right") 
effects:Element("ToggleTrans", "weapon chams", {default = {Color = Color3.fromRGB(255,255,255), Transparency = 0}}, function(tbl) 
	if WeaponObj == nil then return end 
	if tbl.Toggle then 
		for i,v in next, WeaponObj do 
			UpdateWeapon(v) 
		end 
	else 
		for i,v in next, WeaponObj do 
			if v:IsA("MeshPart") then v.TextureID = v.OriginalTexture.Value end 
			if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then 
				v.Mesh.TextureId = v.Mesh.OriginalTexture.Value 
				v.Mesh.VertexColor = Vector3.new(1,1,1) 
			end 
			v.Color = v.OriginalColor.Value 
			v.Material = v.OriginalMaterial.Value 
			v.Transparency = 0 
		end 
	end 
end) 
effects:Element("Dropdown", "weapon material", {options = {"Smooth", "Flat", "ForceField", "Glass"}}, function(tbl) 
	if WeaponObj == nil then return end 
	if values.visuals.effects["weapon chams"].Toggle then 
		for i,v in next, WeaponObj do 
			UpdateWeapon(v) 
		end 
	end 
end) 
effects:Element("Dropdown", "forcefield type", {options = {"normal", "pulse", "web", "swirl", "checkers", "candy cane", "player ff texture","shield forcefield", "dots", "scanning (suggested by blast)", "bubbles (suggested by blast)"}})
effects:Element("Slider", "reflectance", {min = 0, max = 100, default = 0}, function(tbl) 
	if values.visuals.effects["weapon chams"].Toggle then 
		for i,v in next, WeaponObj do 
			UpdateWeapon(v) 
		end 
	end 
end) 
effects:Element("ToggleTrans", "accessory chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val) 
	if RArm == nil or LArm == nil then return end 
	if val.Toggle then 
		if RGlove ~= nil then 
			UpdateAccessory(RGlove) 
		end 
		if RSleeve ~= nil then 
			UpdateAccessory(RSleeve) 
		end 
		if LGlove ~= nil then 
			UpdateAccessory(LGlove) 
		end 
		if LSleeve ~= nil then 
			UpdateAccessory(LSleeve) 
		end 
	else 
		if RGlove then 
			ReverseAccessory(RGlove) 
		end 
		if LGlove then 
			ReverseAccessory(LGlove) 
		end 
		if RSleeve then 
			ReverseAccessory(RSleeve) 
		end 
		if LSleeve then 
			ReverseAccessory(LSleeve) 
		end 
	end 
end) 
effects:Element("Dropdown", "accessory material", {options = {"Smooth","ForceField"}}, function(val) 
	if RArm == nil or LArm == nil then return end 
	if values.visuals.effects["accessory chams"].Toggle then 
		if RGlove ~= nil then 
			UpdateAccessory(RGlove) 
		end 
		if RSleeve ~= nil then 
			UpdateAccessory(RSleeve) 
		end 
		if LGlove ~= nil then 
			UpdateAccessory(LGlove) 
		end 
		if LSleeve ~= nil then 
			UpdateAccessory(LSleeve) 
		end 
	end 
end) 
effects:Element("ToggleTrans", "arm chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val) 
	if RArm == nil then return end 
	if LArm == nil then return end 
	if val.Toggle then 
		RArm.Color = val.Color 
		LArm.Color = val.Color 
		RArm.Transparency = val.Transparency 
		LArm.Transparency = val.Transparency 
	else 
		RArm.Color = RArm.Color3Value.Value 
		LArm.Color = RArm.Color3Value.Value 
		RArm.Transparency = 0 
		LArm.Transparency = 0 
	end 
end) 

effects:Element("Jumbobox", "removals", {options = {"scope", "scope lines", "flash", "smoke", "shadows", "clothes"}}, function(val) 
	local tbl = val.Jumbobox 
	if TBLFIND(tbl, "clothes") then 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then 
			if LocalPlayer.Character:FindFirstChild("Shirt") then 
				LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = "" 
			end 
			if LocalPlayer.Character:FindFirstChild("Pants") then 
				LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = "" 
			end 
		end 
	else 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then 
			if LocalPlayer.Character:FindFirstChild("Shirt") then 
				LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = LocalPlayer.Character:FindFirstChild("Shirt").OriginalTexture.Value 
			end 
			if LocalPlayer.Character:FindFirstChild("Pants") then 
				LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = LocalPlayer.Character:FindFirstChild("Pants").OriginalTexture.Value 
			end 
		end 
	end 
	if TBLFIND(tbl, "scope") then 
		Crosshairs.Scope.ImageTransparency = 1 
		Crosshairs.Scope.Scope.ImageTransparency = 1 
		Crosshairs.Frame1.Transparency = 1 
		Crosshairs.Frame2.Transparency = 1 
		Crosshairs.Frame3.Transparency = 1 
		Crosshairs.Frame4.Transparency = 1 
	else 
		Crosshairs.Scope.ImageTransparency = 0 
		Crosshairs.Scope.Scope.ImageTransparency = 0 
		Crosshairs.Frame1.Transparency = 0 
		Crosshairs.Frame2.Transparency = 0 
		Crosshairs.Frame3.Transparency = 0 
		Crosshairs.Frame4.Transparency = 0 
	end 
	PlayerGui.Blnd.Enabled = not TBLFIND(tbl, "flash") and true or false 
	Lighting.GlobalShadows = not TBLFIND(tbl, "shadows") and true or false 
	if RayIgnore:FindFirstChild("Smokes") then 
		if TBLFIND(tbl, "smoke") then 
			for i,smoke in next, RayIgnore.Smokes:GetChildren() do 
				smoke.ParticleEmitter.Rate = 0 
			end 
		else 
			for i,smoke in next, RayIgnore.Smokes:GetChildren() do 
				smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value 
			end 
		end 
	end 
end) 
effects:Element("Toggle", "force crosshair") 
effects:Element("ToggleColor", "world color", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val) 
	if val.Toggle then 
		Camera.ColorCorrection.TintColor = val.Color 
	else 
		Camera.ColorCorrection.TintColor = Color3.fromRGB(255,255,255) 
	end 
end)
effects:Element("ToggleColor", "indoor ambient", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val) 
	if val.Toggle then 
		game.Lighting.Ambient = val.Color
	else 
		game.Lighting.Ambient = Color3.fromRGB(255,255,255) 
	end 
end)
effects:Element("ToggleColor", "outdoor ambient", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val) 
	if val.Toggle then 
		game.Lighting.OutdoorAmbient = val.Color
	else 
		game.Lighting.OutdoorAmbient = Color3.fromRGB(255,255,255) 
	end 
end)
effects:Element("Toggle", "shadowmap technology", nil, function(val) sethiddenproperty(Lighting, "Technology", val.Toggle and "ShadowMap" or "Legacy") end) 
local self = visuals:Sector("self", "Right") 
self:Element("ToggleKeybind", "third person", {}, function(tbl) 
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then 
		if tbl.Toggle then 
			if tbl.Active then 
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider 
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider 
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider 
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider 
			else 
				LocalPlayer.CameraMaxZoomDistance = 0 
				LocalPlayer.CameraMinZoomDistance = 0 
				LocalPlayer.CameraMaxZoomDistance = 0 
				LocalPlayer.CameraMinZoomDistance = 0 
			end 
		else 
			LocalPlayer.CameraMaxZoomDistance = 0 
			LocalPlayer.CameraMinZoomDistance = 0 
		end 
	end 
end) 
self:Element("Toggle", "no arm third person")
self:Element("Slider", "distance", {min = 6, max = 18, default = 12}, function(tbl) 
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then 
		if values.visuals.self["third person"].Toggle then 
			if values.visuals.self["third person"].Active then 
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider 
				LocalPlayer.CameraMinZoomDistance = tbl.Slider 
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider 
				LocalPlayer.CameraMinZoomDistance = tbl.Slider 
			else 
				LocalPlayer.CameraMaxZoomDistance = 0 
				LocalPlayer.CameraMinZoomDistance = 0 
			end 
		else 
			LocalPlayer.CameraMaxZoomDistance = 0 
			LocalPlayer.CameraMinZoomDistance = 0 
		end 
	end 
end) 
LocalPlayer:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function(current) 
	if values.visuals.self["third person"].Toggle then 
		if values.visuals.self["third person"].Active then 
			if current ~= values.visuals.self.distance.Slider then 
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider 
			end 
		end 
	end 
end) 
self:Element("Slider", "fov changer", {min = 0, max = 120, default = 80}, function(value) 
	RunService.RenderStepped:Wait() 
	if LocalPlayer.Character == nil then return end 
	if fov == value.Slider then return end 
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AImath.minG") then 
		Camera.FieldOfView = value.Slider 
	end 
end) 
self:Element("Toggle", "on scope") 
self:Element("Toggle", "visualize silent angle")
self:Element("Toggle", "viewmodel changer") 
self:Element("Slider", "viewmodel x", {min = -10, max = 20}, function(val) 
	ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "viewmodel y", {min = -10, max = 20}, function(val) 
	ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "viewmodel z", {min = -10, max = 20}, function(val) 
	ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "roll", {min = -100, max = 100}, function(val) 
	ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("ToggleTrans", "self chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl) 
	if tbl.Toggle then 
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = values.visuals.self["self chams material"].Dropdown 
				obj.Color = tbl.Color 
				obj.Transparency = tbl.Transparency 
			end 
		end 
	else 
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = obj.OriginalMaterial.Value 
				obj.Color = obj.OriginalColor.Value 
			end 
		end 
	end 
end) 

self:Element("Dropdown", "self chams material", {options = {"ForceField", "Neon", "Glass"}}, function(val)
	if TBLFIND(val, "ForceField") then
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = Enum.Material.ForceField
				obj.Color = tbl.Color
			end
		end
	else
		if TBLFIND(val, "Neon") then
			for _,obj in next, SelfObj do 
				if obj.Parent ~= nil then
					obj.Material = Enum.Material.Neon
					obj.Color = tbl.Color
				end
			end
		else
			if TBLFIND(val, "Glass") then
				for _,obj in next, SelfObj do
					if obj.Parent ~= nil then
						obj.Material = Enum.Material.Glass
						obj.Color = tbl.Color
					end
				end
			end
		end
	end
end)

self:Element("Slider", "scope blend", {min = 0, max = 100, default = 0}) 

local ads = Client.updateads 
Client.updateads = function(self, ...) 
	local args = {...} 
	coroutine.wrap(function() 
		wait() 
		if LocalPlayer.Character ~= nil then 
			for _,part in next, LocalPlayer.Character:GetDescendants() do 
				if part:IsA("Part") or part:IsA("MeshPart") then 
					if part.Transparency ~= 1 then 
						part.Transparency = LocalPlayer.Character:FindFirstChild("AImath.minG") and values.visuals.self["scope blend"].Slider/100 or 0 
					end 
				end 
				if part:IsA("Accessory") then 
					part.Handle.Transparency = LocalPlayer.Character:FindFirstChild("AImath.minG") and values.visuals.self["scope blend"].Slider/100 or 0 
				end 
			end 
		end 
	end)() 
	return ads(self, ...) 
end 

local world = visuals:Sector("world", "Left") 
world:Element("ToggleColor", "bullet tracers", {default = {Color = Color3.fromRGB(255, 255, 255)}}) 
local Services = {
	Players = game:GetService("Players"),
	UserInputService = game:GetService("UserInputService"),
	RunService = game:GetService("RunService")
}

local Local = {
	Player = Services.Players.LocalPlayer,
	Mouse = Services.Players.LocalPlayer:GetMouse()
}

local Other = {
	Camera = workspace.CurrentCamera,
	BeamPart = Instance.new("Part", workspace)
}

Other.BeamPart.Name = "BeamPart"
Other.BeamPart.Transparency = 1

local Settings = {
	StartColor = Color3.new(1, 1, 1),
	EndColor = Color3.new(1, 0, 0),
	StartWidth = 0.63,
	EndWidth = 0.63,
	ShowImpactPoint = false,
	ImpactTransparency = 0,
	ImpactColor = Color3.new(1, 1, 1)
}

local rs = game:GetService("RunService").RenderStepped

function createbullettracer(v1, v2)
	local colorSequence = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Settings.StartColor),
		ColorSequenceKeypoint.new(1, Settings.EndColor),
	})
	local Part = Instance.new("Part", Other.BeamPart)
	Part.Size = Vector3.new(0, 0, 0)
	Part.Transparency = ShowImpactPoint and Settings.ImpactTransparency or 1
	Part.CanCollide = false
	Part.CFrame = CFrame.new(v1)
	Part.Anchored = true
	local Attachment = Instance.new("Attachment", Part)
	local Part2 = Instance.new("Part", Other.BeamPart)
	Part2.Size = Vector3.new(0, 0, 0)
	Part2.Transparency = ShowImpactPoint and Settings.ImpactTransparency or 1
	Part2.CanCollide = false
	Part2.CFrame = CFrame.new(v2)
	Part2.Anchored = true
	Part2.Color = Settings.ImpactColor
	local Attachment2 = Instance.new("Attachment", Part2)
	local Beam = Instance.new("Beam", Part)
	Beam.FaceCamera = true
	Beam.Texture = "rbxassetid://446111271"
	Beam.TextureLength = 22
	Beam.TextureMode = Enum.TextureMode.Static
	Beam.TextureSpeed = 2.6
	Beam.Transparency = NumberSequence.new(0.3, 0.3)
	Beam.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, values.visuals.world["bullet tracers"].Color), ColorSequenceKeypoint.new(1, values.visuals.world["bullet tracers"].Color)}
	Beam.Attachment0 = Attachment
	Beam.Attachment1 = Attachment2
	Beam.LightEmission = 1
	Beam.LightInfluence = 0
	Beam.Segments = 10
	Beam.Width0 = Settings.StartWidth
	Beam.Width1 = Settings.EndWidth
	spawn(function()
		wait(2)
		for i = 0.3, 1, 0.02 do
			rs:Wait()
			Beam.Transparency = NumberSequence.new(i)
		end
		Beam:Destroy()
		Part:Destroy()
		Part2:Destroy()
	end)
end
world:Element("Slider", "time changer", {min = 0, max = 15, default = 0}, function(tbl)
    while wait() do
      if game.Lighting.ClockTime ~= tbl.Slider then
         game.Lighting.ClockTime = tbl.Slider
      end
   end
end)


world:Element("ToggleColor", "offscreen esp", {default = {Color = Color3.fromRGB(255, 255, 255)}}, function(tbl)
if tbl.Toggle then
_G.disabled = false
local Targets = {}
local FieldOfView = 500
local Dynamic = true
local Team = false
local Size = UDim2.new(0, 18, 0, 21)
local Color = tbl.Color

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local Folder = Instance.new("Folder", ScreenGui)

local function Target(Player)
   local ImageLabel = Instance.new("ImageLabel", Folder)
   ImageLabel.Name = "ImageLabel"
   ImageLabel.ImageColor3 = Color
   ImageLabel.BackgroundTransparency = 1
   ImageLabel.Image = "http://www.roblox.com/asset/?id=6954524255"
   
   Targets[Player.Name] = {
       Player = Player,
       Indicator = ImageLabel
   }
end

for _, Player in next, Players:GetPlayers() do
   if Player ~= LocalPlayer then
       Target(Player)
   end
end

Players.PlayerAdded:Connect(function(Player)
   Target(Player)
end)
local shit
shit = game:GetService("RunService").RenderStepped:connect(function()
if _G.disabled then return end
local Color = tbl.Color
   for Name, Target in next, Targets do
       if Target.Indicator then
           local Indicator = Target.Indicator
           if Players:FindFirstChild(Name) then
               Target = Target.Player
               
               if LocalPlayer.Character and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") then
                   local Character = Target.Character
                   local WorldPosition = Character.HumanoidRootPart.Position
                   local CameraVector = Camera.CFrame.Position
                   local LookVector = Camera.CFrame.LookVector
                   local ProjectVector = (WorldPosition - CameraVector)
                   local Dot = LookVector:Dot(ProjectVector)

                   if Dot <= 0 then
                       WorldPosition = (CameraVector + (ProjectVector - ((LookVector * Dot) * 1.01)))
                   end

                   local ScreenPosition, Visible = Camera:WorldToScreenPoint(WorldPosition)
                   local RayCast = workspace:FindPartOnRay(Ray.new(CameraVector, ((WorldPosition - CameraVector).Unit * 500)), LocalPlayer.Character, false, false)

                   if (Visible and RayCast and not RayCast:IsDescendantOf(Character)) or not Visible then
                       local Center = (ScreenGui.AbsoluteSize / 2)
                       local Direction = (Vector2.new(ScreenPosition.X, ScreenPosition.Y) - Center).Unit
                       local Radian = math.atan2(Direction.X, Direction.Y)
                       local Angle = (((math.pi * 2) / FieldOfView) * Radian)
                       local ClampedPosition = (Center + (Direction * math.min(math.abs(((Center.Y - FieldOfView) / math.sin(Angle)) * FieldOfView), math.abs((Center.X - FieldOfView) / (math.cos(Angle)) / 2))))
                       
                       Indicator.Position = UDim2.new(0, (ClampedPosition.X - (Indicator.Size.X.Offset / 2)), 0, ((ClampedPosition.Y - (Indicator.Size.Y.Offset / 2) - 15)))
                       Indicator.Rotation = (-math.deg(Radian) + 180)
                       
                       if Dynamic then
                           local Magnitude = ((1 / (LocalPlayer.Character.HumanoidRootPart.Position - WorldPosition).Magnitude) * 1000)

                           if Magnitude > 18 then
                               Magnitude = 18
                           elseif Magnitude < 11 then
                               Magnitude = 11
                           end

                           Indicator.Size = UDim2.new(0, Magnitude, 0, (Magnitude + 3))
                       else
                           Indicator.Size = Size
                       end
                       
                       Indicator.Visible = true
                   else
                       Indicator.Visible = false
                   end
               else
                   Indicator.Visible = false
               end

               if Team and Target.Team == LocalPlayer.Team then
                   Indicator.Visible = false
               end
           else
               Indicator:Destroy()
           end
       end
   end
end)  
else _G.disable = true   
end
end)
world:Element("ToggleColor", "impacts", {default = {Color = Color3.fromRGB(255, 255, 255)}}) 
world:Element("ToggleColor", "hit chams", {default = {Color = Color3.fromRGB(255, 255, 255)}}) 
world:Element("Dropdown", "hitsound", {options = {"none", "moan", "moan2", "moan3", "moan4", "skeet", "neverlose", "rust", "semi", "baimware", "yamete", "baka" , "csgo headshot", "yamete (use headphones)", "nitendo", "1"}}) 
world:Element("Slider", "sound volume", {min = 1, max = 10, default = 3}) 
world:Element("Dropdown", "skybox", {options = {"none", "nebula", "minecraft", "vaporwave", "clouds"}}, function(tbl) 
	local sky = tbl.Dropdown 
	if sky ~= "none" then 
		if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end 
		local skybox = Instance.new("Sky") 
		skybox.SkyboxLf = Skyboxes[sky].SkyboxLf 
		skybox.SkyboxBk = Skyboxes[sky].SkyboxBk 
		skybox.SkyboxDn = Skyboxes[sky].SkyboxDn 
		skybox.SkyboxFt = Skyboxes[sky].SkyboxFt 
		skybox.SkyboxRt = Skyboxes[sky].SkyboxRt 
		skybox.SkyboxUp = Skyboxes[sky].SkyboxUp 
		skybox.Name = "override" 
		skybox.Parent = Lighting 
	else 
		if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end 
		if oldSkybox ~= nil then oldSkybox:Clone().Parent = Lighting end 
	end 
end) 
world:Element("ToggleColor", "item esp", {default = {Color = Color3.fromRGB(255, 255, 255)}}, function(tbl) 
	for i,weapon in next, workspace.Debris:GetChildren() do 
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then 
			weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 
		end 
	end 
end) 
world:Element("Jumbobox", "types", {options = {"icon"}}, function(tbl) 
	for i,weapon in next, workspace.Debris:GetChildren() do 
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then 
			weapon.BillboardGui.ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(tbl.Jumbobox, "icon") and true or false 
			weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		end 
	end 
end) 

local crosshaireditor = misc:Sector("crosshair editor", "Right") 
local configs = misc:Sector("configs", "Left") 
configs:Element("TextBox", "config", {placeholder = "config name"}) -- values.misc.configs.config.Text
configs:Element("Button", "save new cfg", {}, function() 
	if values.misc.configs.config.Text ~= "" then 
		library:SaveConfig(values.misc.configs.config.Text) 
		insertwithoutdupes(allcfgs, ""..values.misc.configs.config.Text..".txt")
	end 
	ConfigUpdateCfgList2:Fire()
	ConfigUpdateCfgList:Fire()
end) 
configs:Element("Button", "load", {}, function() 
	ConfigLoad:Fire(values.misc["configs"].config.Text)
end)
configs:Element("cfgtype", "cfgs", {options = allcfgs, Amount = 5})
configs:Element("Button", "load from list", {}, function() 
	ConfigLoad1:Fire(values.misc.configs.cfgs.Scroll)
end)
configs:Element("Button", "Update cfg in list", {}, function()
	library:SaveConfig1(values.misc["configs"].cfgs.Scroll)
end)
configs:Element("Button", "Refresh cfg list", {}, function()
table.clear(allcfgs)

for _,cfg in next, listfiles("pastedstormy/pastedstormycfgs") do 
	local cfgname = string.gsub(cfg, "pastedstormy/pastedstormycfgs\\", "") 
	table.insert(allcfgs, cfgname) 
end
	ConfigUpdateCfgList2:Fire()
	ConfigUpdateCfgList:Fire()
end)

local function UpdateCrosshair() 
	if values.misc["crosshair editor"].enabled.Toggle then 
		local length = values.misc["crosshair editor"].length.Slider 
		Crosshair.LeftFrame.Size = UDim2.new(0, length, 0, 2) 
		Crosshair.RightFrame.Size = UDim2.new(0, length, 0, 2) 
		Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, length) 
		Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, length) 
		for _,frame in next, Crosshair:GetChildren() do 
			if FIND(frame.Name, "Frame") then 
				frame.BorderColor3 = Color3.new(0,0,0) 
				if values.misc["crosshair editor"].border.Toggle then 
					frame.BorderSizePixel = 1 
				else 
					frame.BorderSizePixel = 1 
				end 
			end 
		end 
	else 
		Crosshair.LeftFrame.Size = UDim2.new(0, 10, 0, 2) 
		Crosshair.RightFrame.Size = UDim2.new(0, 10, 0, 2) 
		Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, 10) 
		Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, 10) 
		for _,frame in next, Crosshair:GetChildren() do 
			if FIND(frame.Name, "Frame") then 
				frame.BorderSizePixel = 1 
			end 
		end 
	end 
end 
crosshaireditor:Element("Toggle", "enabled", nil, UpdateCrosshair) 
crosshaireditor:Element("Slider", "length", {min = 1, max = 15, default = 10}, UpdateCrosshair) 
crosshaireditor:Element("Toggle", "border", nil, UpdateCrosshair) 

local client = misc:Sector("client", "Right") 
client:Element("Toggle", "infinite cash", nil, function(tbl) 
	if tbl.Toggle then 
		LocalPlayer.Cash.Value = 9e9
	end 
end) 

client:Element("Toggle", "spectators list", {}, function(tbl)
    if tbl.Toggle then
        game.CoreGui.SpectatorsList.Enabled = true
    else
        game.CoreGui.SpectatorsList.Enabled = false
    end
end)
client:Element("Toggle", "keybind list", nil, function(tbl) 
	library:SetKeybindVisible(tbl.Toggle) 
end) 
client:Element("Toggle", "infinite crouch") 
client:Element("Jumbobox", "damage bypass", {options = {"fire", "fall"}}) 
client:Element("Jumbobox", "gun modifiers", {options = {"recoil", "spread", "reload", "equip", "ammo", "automatic", "penetration", "firerate", "fake hps"}}) 
client:Element("Toggle", "remove killers", {}, function(tbl) 
	if tbl.Toggle then 
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
end) 
client:Element("ToggleColor", "hitmarker", {default = {Color = Color3.fromRGB(255,255,255)}}) 
client:Element("Toggle", "buy any grenade") 
client:Element("Toggle", "chat alive") 
client:Element("Jumbobox", "shop", {options = {"inf time", "anywhere"}}) 
client:Element("Toggle", "anti spectate") 
client:Element("Toggle", "my eyes") 
local oldgrenadeallowed = Client.grenadeallowed 
Client.grenadeallowed = function(...) 
	if values.misc.client["buy any grenade"].Toggle then 
		return true 
	end 

	return oldgrenadeallowed(...) 
end 

local movement = misc:Sector("movement", "Left") 
movement:Element("ToggleKeybind", "bunny hop") 
movement:Element("Dropdown", "direction", {options = {"forward", "directional", "directional 2"}}) 
movement:Element("Dropdown", "type", {options = {"gyro", "cframe"}}) 
movement:Element("Dropdown", "gyro type", {options = {"no fling", "fling"}}) 
movement:Element("Slider", "speed", {min = 15, max = 300, default = 40}) 
movement:Element("ToggleKeybind", "noclip",{},function(tbl)
	spawn(function()
		while values.misc.movement["noclip"].Toggle and values.misc.movement["noclip"].Active do
			game:GetService("RunService").Stepped:Wait()
			if LocalPlayer.Character then
				for i,v in next, LocalPlayer.Character:GetDescendants() do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
		end
	end)
end)      
movement:Element("ToggleKeybind", "jump bug") 
movement:Element("ToggleKeybind", "edge jump") 
movement:Element("ToggleKeybind", "edge bug")
movement:Element("ToggleKeybind", "hrpclip", {}, function(tbl)
	if tbl.Toggle and tbl.Active then
		LocalPlayer.Character.HumanoidRootPart.Anchored = true
		else
		LocalPlayer.Character.HumanoidRootPart.Anchored = false
				end
			end) 

local chat = misc:Sector("chat", "Left") 
chat:Element("Toggle", "chat spam", nil, function(tbl) 
	if tbl.Toggle then 
		while values.misc.chat["chat spam"].Toggle do 
			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat.type.Dropdown == "foxtard" and "i 👁️ have 👏😋 successfully ✅  FUCKED 🏻 FOXBANANA'S MOTHER! 🏽 his dad 🕺 is 💰 dead 🙍‍♂️ so 🌹 i 👁️👁️ couldn't commit 🗡️🗡️ THE 📺👻 FUCKING! 🍌 tried 👋 to 😣💨 dig ⛏️ up 👌 the ⌛ grave! ⚰️ but 🍑 it ❔💯 didnt work 👷 ☹️" or values.misc.chat.type.Dropdown == "tinshits on top" and "tinshits on top $$$, the best joke paste 🤑🤑🤑" or values.misc.chat.type.Dropdown == "tinshits winning" and "tinshits winning $$$" or values.misc.chat.type.Dropdown == "no bitches!?!?!" and "NO BITCHES!?!?!?! NO BITCHES!?!?!?! NO BITCHES!?!?!?! NO BITCHES!?!?!?! NO BITCHES!?!?!?!" , false, "Innocent", false, true) 
			wait(values.misc.chat["speed (ms)"].Slider/1000) 
			 
		end 
	end 
end) 
world:Element('Toggle', 'Killsoundtoggle')
world:Element('TextBox', 'Killsound', {placeholder = "ID HERE"})
chat:Element("Dropdown", "type", {options = {"foxtard", "tinshits on top", "tinshits winning", "no bitches!?!?!"}}) 
chat:Element("Slider", "speed (ms)", {min = 15, max = 300, default = 50}) 
chat:Element("Toggle", "kill say") 
chat:Element("TextBox", "message", {placeholder = "message"}) 
chat:Element("Toggle", "no filter")
local grenades = misc:Sector("grenades", "Right") 
grenades:Element("ToggleKeybind", "spam grenades") 
coroutine.wrap(function() 
	while true do 
		wait(0.5) 
		if values.misc.grenades["spam grenades"].Toggle and values.misc.grenades["spam grenades"].Active then 
			local oh1 = game:GetService("ReplicatedStorage").Weapons[values.misc.grenades.grenade.Dropdown].Model 
			local oh3 = 25 
			local oh4 = 35 
			local oh6 = "" 
			local oh7 = "" 
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7) 
		end 
	end 
end)() 
grenades:Element("Dropdown", "grenade", {options = {"Flashbang", "Smoke Grenade", "Molotov", "HE Grenade", "Decoy Grenade"}}) 
grenades:Element("Button", "crash server", {}, function() 
	RunService.RenderStepped:Connect(function() 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then 
			local oh1 = game:GetService("ReplicatedStorage").Weapons[values.misc.grenades.grenade.Dropdown].Model 
			local oh3 = 25 
			local oh4 = 35 
			local oh6 = "" 
			local oh7 = "" 
			local oh8 = game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = Player.Character.Head, [4] = Vector3.new(0,0,0)}) 
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vector3.new(0,-100,0), oh6, oh7, oh8) 
		end 
	end) 
end)
grenades:Element("ToggleKeybind", "ping exploit", {Type = "Toggle", Key = "T"}, function(tbl)   
        if tbl.Toggle then 
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("good night server", false, "Innocent", false, true) 
        end				
	spawn(function()
		while values.misc.grenades["ping exploit"].Toggle and values.misc.grenades["ping exploit"].Active do
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				for i = 1,values.misc.grenades["ping limit"].Slider,1 do
					game:GetService("ReplicatedStorage").Events.DropMag:FireServer(LocalPlayer.Character.Gun.Mag)
					for i,v in next, workspace["Ray_Ignore"]:GetChildren() do
						if v.Name == "MagDrop" then
							v:Destroy()
						end
					end
				end
			end)		
		end
	end)    
end)   
grenades:Element("Slider", "ping limit", {min = 1, max = 10, default = 2})  
grenades:Element("Toggle", "anti-ping", {}, function(tbl)      
	if tbl.Toggle then
		Client.splatterBlood = function() end
		Client.createbullethole = function() end 
	else
		Client.createbullethole = oldcreatebullethole 
	end
	spawn(function()
		while values.misc.grenades["anti-ping"].Toggle do
			pcall(function()
				game:GetService("RunService").RenderStepped:Wait()
				for i,v in next, workspace["Ray_Ignore"]:GetChildren() do
					if v.Name == "Bullet" or v.Name == "SurfaceGui" or v.Name == "Blood" or v.Name == "MagDrop" then
						v:Destroy()
					end
				end
			end)
		end 
	end)    
end)  
	
local Dance = Instance.new("Animation") 
Dance.AnimationId = "rbxassetid://5917459365" 

local LoadedAnim 

local animations = misc:Sector("animations", "Left") 
animations:Element("ToggleKeybind", "enabled", nil, function(tbl) 
	pcall(function() 
		LoadedAnim:Stop() 
	end) 
	if not tbl.Toggle or tbl.Toggle and not tbl.Active then 
	else 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then 
			LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance) 
			LoadedAnim.Priority = Enum.AnimationPriority.Action 
			LoadedAnim:Play() 
		end 
	end 
end) 
animations:Element("Dropdown", "animation", {options = {"Default", "Floss", "head spin", "air anti aim", "dolphin", "not my fault", "sneaky", "T"}}, function(tbl)
	Dance.AnimationId = tbl.Dropdown == "Default" and "rbxassetid://3732699835" or tbl.Dropdown == "Floss" and "rbxassetid://5917459365" or tbl.Dropdown == "head spin" and "rbxassetid://3361426436" or tbl.Dropdown == "air anti aim" and "rbxassetid://4555782893" or tbl.Dropdown == "dolphin" and "rbxassetid://5918726674" or tbl.Dropdown == "not my fault" and "rbxassetid://6797891807" or tbl.Dropdown == "Sneaky" and "rbxassetid://896541152" or tbl.Dropdown == "T" and "rbxassetid://3338010159"
	pcall(function() 
		LoadedAnim:Stop() 
	end) 

	if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then 
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then 
			LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance) 
			LoadedAnim.Priority = Enum.AnimationPriority.Action 
			LoadedAnim:Play() 
		end 
	end 
end) 



local objects = {} 
local utility = {} 
do 
	utility.default = { 
		Line = { 
			Thickness = 1.5, 
			Color = Color3.fromRGB(255, 255, 255), 
			Visible = false 
		}, 
		Text = { 
			Size = 13, 
			Center = true, 
			Outline = true, 
			Font = Drawing.Fonts.Plex, 
			Color = Color3.fromRGB(255, 255, 255), 
			Visible = false 
		}, 
		Square = { 
			Thickness = 1.5, 
			Filled = false, 
			Color = Color3.fromRGB(255, 255, 255), 
			Visible = false 
		}, 
	} 
	function utility.create(type, isOutline) 
		local drawing = Drawing.new(type) 
		for i, v in next, utility.default[type] do 
			drawing[i] = v 
		end 
		if isOutline then 
			drawing.Color = Color3.new(0,0,0) 
			drawing.Thickness = 3 
		end 
		return drawing 
	end 
	function utility.add(plr) 
		if not objects[plr] then 
			objects[plr] = { 
				Name = utility.create("Text"), 
				Weapon = utility.create("Text"), 
				Armor = utility.create("Text"), 
				BoxOutline = utility.create("Square", true), 
				Box = utility.create("Square"), 
				HealthOutline = utility.create("Line", true), 
				Health = utility.create("Line"), 
			} 
		end 
	end 
	for _,plr in next, Players:GetPlayers() do 
		if Player ~= LocalPlayer then 
			utility.add(plr) 
		end 
	end 
	Players.PlayerAdded:Connect(utility.add) 
	Players.PlayerRemoving:Connect(function(plr) 
		wait() 
		if objects[plr] then 
			for i,v in next, objects[plr] do 
				for i2,v2 in next, v do 
					if v then 
						v:Remove() 
					end 
				end 
			end 

			objects[plr] = nil 
		end 
	end) 
end 
local Items = Instance.new("ScreenGui") 
Items.Name = "Items" 
Items.Parent = game.CoreGui 
Items.ResetOnSpawn = false 
Items.ZIndexBehavior = "Global" 
do 
	function add(plr) 
		local ImageLabel = Instance.new("ImageLabel") 
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
		ImageLabel.BackgroundTransparency = 1.000 
		ImageLabel.Size = UDim2.new(0, 62, 0, 25) 
		ImageLabel.Visible = false 
		ImageLabel.Image = "rbxassetid://1784884358" 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Name = plr.Name 
		ImageLabel.AnchorPoint = Vector2.new(0.5,0.5) 
		ImageLabel.Parent = Items 
	end 
	for _,plr in next, Players:GetPlayers() do 
		if Player ~= LocalPlayer then 
			add(plr) 
		end 
	end 
	Players.PlayerAdded:Connect(add) 
	Players.PlayerRemoving:Connect(function(plr) 
		wait() 
		Items[plr.Name]:Destroy() 
	end) 
end 
local debrisitems = {} 
workspace.Debris.ChildAdded:Connect(function(obj) 
	if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then 
		RunService.RenderStepped:Wait() 

		local BillboardGui = Instance.new("BillboardGui") 
		BillboardGui.AlwaysOnTop = true 
		BillboardGui.Size = UDim2.new(0, 40, 0, 40) 
		BillboardGui.Adornee = obj 

		local ImageLabel = Instance.new("ImageLabel") 
		ImageLabel.Parent = BillboardGui 
		ImageLabel.BackgroundTransparency = 1 
		ImageLabel.Size = UDim2.new(1, 0, 1, 0) 
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name) 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 

		BillboardGui.Parent = obj 
	end 
end) 
for _, obj in next, workspace.Debris:GetChildren() do 
	if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then 
		RunService.RenderStepped:Wait() 

		local BillboardGui = Instance.new("BillboardGui") 
		BillboardGui.AlwaysOnTop = true 
		BillboardGui.Size = UDim2.new(0, 40, 0, 40) 
		BillboardGui.Adornee = obj 

		local ImageLabel = Instance.new("ImageLabel") 
		ImageLabel.Parent = BillboardGui 
		ImageLabel.BackgroundTransparency = 1 
		ImageLabel.Size = UDim2.new(1, 0, 1, 0) 
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name) 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 

		BillboardGui.Parent = obj 
	end 
end 
local function YROTATION(cframe) 
	local x, y, z = cframe:ToOrientation() 
	return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0) 
end 
local function XYROTATION(cframe) 
	local x, y, z = cframe:ToOrientation() 
	return CFrame.new(cframe.Position) * CFrame.Angles(x,y,0) 
end 
local weps = { 
	Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"}, 
	SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"}, 
	Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"}, 
	Sniper = {"AWP", "Scout", "G3SG1"} 
} 
local weps2 = { 
	Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"}, 
	SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"}, 
	Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"}, 
	Sniper = {"AWP", "Scout", "G3SG1"} 
} 
local function GetWeaponRage(weapon) 
	return TBLFIND(weps.Pistol, weapon) and "pistol" or TBLFIND(weps.Rifle, weapon) and "rifle" or weapon == "AWP" and "awp" or weapon == "G3SG1"  and "auto" or weapon == "Scout" and "scout" or "default" 
end 
local function GetStatsRage(weapon) 
	if weapon == "default" then 
		return values.rage.weapons.default 
	else 
		if values.rage.weapons[weapon]["override default"].Toggle then 
			return values.rage.weapons[weapon] 
		else 
			return values.rage.weapons.default 
		end 
	end 
end 
local function GetWeaponLegit(weapon) 
	return TBLFIND(weps2.Pistol, weapon) and "pistol" or TBLFIND(weps2.Rifle, weapon) and "rifle" or TBLFIND(weps2.SMG, weapon) and "smg" or TBLFIND(weps2.Sniper, weapon) and "sniper" or "default" 
end 
local function GetStatsLegit(weapon) 
	if weapon == "default" then 
		return values.legit.main.default 
	else 
		if values.legit.main[weapon]["override default"].Toggle then 
			return values.legit.main[weapon] 
		else 
			return values.legit.main.default 
		end 
	end 
end 
local Jitter = false 
local Spin = 0 
local RageTarget 
local Filter = false 
local LastStep 
local TriggerDebounce = false 
local DisableAA = false 



local Fov = Drawing.new("Circle") 
Fov.Filled = true 
Fov.Color = Color3.fromRGB(15,15,15) 
Fov.Transparency = 0.5 
Fov.Position = Vector2.new(Mouse.X, Mouse.Y + 16) 
Fov.Radius = 120 
RunService.RenderStepped:Connect(function(step) 
	Fov.Visible = false 
	LastStep = step 
	Ping = game.Stats.PerformanceStats.Ping:GetValue() 
	RageTarget = nil 
	local CamCFrame = Camera.CFrame 
	local CamLook = CamCFrame.LookVector 
	local PlayerIsAlive = false 
	local Character = LocalPlayer.Character 
	RageTarget = nil 
	Spin = math.clamp(Spin + values.rage.angles["spin speed"].Slider, 0, 360) 
	if Spin == 360 then Spin = 0 end 
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then 
		PlayerIsAlive = true 
	end 
	for i,v in next, ChamItems do 
		if v.Parent == nil then 
			TBLREMOVE(ChamItems, i) 
		end 
	end 
	Fov.Position = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2) 
	if PlayerIsAlive then 
		local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity 
		if values.rage.fakelag["ping spike"].Toggle and values.rage.fakelag["ping spike"].Active then 
			for count = 1, 20  do 
				game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vector3.new(0,0,0)}) 
			end 
		end 
		local Root = LocalPlayer.Character.HumanoidRootPart 
		if values.misc.client["infinite crouch"].Toggle then 
			Client.crouchcooldown = 0 
		end 
		if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then 
			Client.DISABLED = false 
		end
		if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "fake hps") then 
			for _,gun in next, game:GetService("ReplicatedStorage").Weapons:GetChildren() do
				if (gun:FindFirstChild("AccuracyOffset") and gun:FindFirstChild("Ammo")) then
					gun.FireRate.Value = 0
				end
			end
		end 
		if TBLFIND(values.visuals.effects.removals.Jumbobox, "scope lines") then 
			NewScope.Enabled = LocalPlayer.Character:FindFirstChild("AImath.minG") and true or false 
			Crosshairs.Scope.Visible = false 
		else 
			NewScope.Enabled = false 
		end 
		local RageGuy 
		if workspace:FindFirstChild("Map") and Client.gun ~= "none" and Client.gun.Name ~= "C4" then 
			if values.rage.aimbot.enabled.Toggle then 
				local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vector3.new(0, 2.5, 0) or CamCFrame.p 
				local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name)) 
				for _,Player in next, Players:GetPlayers() do 
					if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then 
						Client.DISABLED = false 
					end 
					if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and Player ~= LocalPlayer then 
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "pitch") then 
							Player.Character.UpperTorso.Waist.C0 = CFrame.Angles(0, 0, 0)      
							Player.Character.LowerTorso.Root.C0 = CFrame.Angles(0,0,0)
						end 
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "roll") then 
							Player.Character.Humanoid.MaxSlopeAngle = 0 
						end 						
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "animation") then     
							for i2,Animation in next, Player.Character.Humanoid:GetPlayingAnimationTracks() do
								Animation:Stop()
							end
						end  
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "cortez step") then     
							local x = values.rage.aimbot["cortez amount"].Slider
							local y = values.rage.aimbot["y amount"].Slider
						
							local a = Player.Character.HumanoidRootPart.CFrame.p
							local b = Player.Character.HumanoidRootPart.CFrame.p

							if ( b.x ~= a.x ) and ( b.z ~= a.z ) then
								if ( b.x > a.x ) and ( b.z > a.z ) then 
									Player.Character.Head.Neck.C0 = CFrame.new(x, y, x)
								elseif ( b.x < a.x ) and ( b.z < a.z ) then
									Player.Character.Head.Neck.C0 = CFrame.new(-x, y, -x)
								elseif ( b.x > a.x ) and ( b.z < a.z ) then 
									Player.Character.Head.Neck.C0 = CFrame.new(x, y, -x)
								else
									Player.Character.Head.Neck.C0 = CFrame.new(-x, y, x)
								end
							elseif (  b.x ~= a.x ) and ( b.z == a.z ) then
								if ( b.x > a.x ) then 
									Player.Character.Head.Neck.C0 = CFrame.new(x, y, 0)
								else
									Player.Character.Head.Neck.C0 = CFrame.new(-x, y, 0)
								end
							else
								if ( b.z > a.z ) then 
									Player.Character.Head.Neck.C0 = CFrame.new(0, y, x)
								else
									Player.Character.Head.Neck.C0 = CFrame.new(0, y, -x)
								end
							end
						end 
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "offset") then    
							local x = values.rage.aimbot["offset amount"].Slider
							local y = values.rage.aimbot["y amount"].Slider
						
							Player.Character.UpperTorso.Waist.C0 = CFrame.new(0, 0.75, 0)
							Player.Character.Head.Neck.C0 = CFrame.new(0, y , 0)
							Player.Character.Humanoid.MaxSlopeAngle = 0
							Player.Character.RightUpperArm.RightShoulder.C0 = CFrame.new(x, 0.749999952, -0.2)
							Player.Character.LeftUpperArm.LeftShoulder.C0 = CFrame.new(-x, 0.749999952, -0.2)
							Player.Character.RightUpperLeg.RightHip.C0 = CFrame.new(0, 1.149999952, x)
							Player.Character.LeftUpperLeg.LeftHip.C0 = CFrame.new(0, 1.149999952, -x)
						end
					end
					if Player.Character and Player.Character:FindFirstChild("Humanoid") and not Client.DISABLED and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and not Player.Character:FindFirstChildOfClass("ForceField") and GetDeg(CamCFrame, Player.Character.HumanoidRootPart.Position) <= Stats["max fov"].Slider and Player ~= LocalPlayer then 
						if Player.Team ~= LocalPlayer.Team or values.rage.aimbot.teammates.Toggle and Player:FindFirstChild("Status") and Player.Status.Team.Value ~= LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then 
							if Client.gun:FindFirstChild("Melee") and values.rage.aimbot["knifebot"].Toggle then 
								local Ignore = {unpack(Collision)} 
								INSERT(Ignore, workspace.Map.Clips) 
								INSERT(Ignore, workspace.Map.SpawnPoints) 
								INSERT(Ignore, LocalPlayer.Character) 
								if Player.Character:FindFirstChild("BackC4") then 
									INSERT(Ignore, Player.Character.BackC4) 
								end 
								if Player.Character:FindFirstChild("Gun") then 
									INSERT(Ignore, Player.Character.Gun) 
								end 

								local Ray = RAY(Origin, (Player.Character.Head.Position - Origin).unit * 20) 
								local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true) 

								if Hit and Hit.Parent == Player.Character then 
									RageGuy = Hit 
									RageTarget = Hit 
									if not values.rage.aimbot["silent aim"].Toggle then 
										Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position) 
									end 
									Filter = true 
									Client.firebullet() 
									Filter = false 

									local Arguments = { 
										[1] = Hit, 
										[2] = Hit.Position, 
										[3] = Client.gun.Name, 
										[4] = 4096, 
										[5] = LocalPlayer.Character.Gun, 
										[8] = 1, 
										[9] = false, 
										[10] = true, 
										[11] = Vector3.new(), 
										[12] = 16868, 
										[13] = Vector3.new() 
									} 
									game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									CreateHitElement("Hit "..Hit.Parent.Name.." using knifebot", Color3.new(255,255,255))
								end 
							else 
								local Ignore = {unpack(Collision)} 
								INSERT(Ignore, workspace.Map.Clips) 
								INSERT(Ignore, workspace.Map.SpawnPoints) 
								INSERT(Ignore, LocalPlayer.Character) 
								INSERT(Ignore, Player.Character.HumanoidRootPart) 
								if Player.Character:FindFirstChild("BackC4") then 
									INSERT(Ignore, Player.Character.BackC4) 
								end 
										local Ignore = {unpack(Collision)}      
										INSERT(Ignore, workspace.Map.Clips)      
										INSERT(Ignore, workspace.Map.SpawnPoints)      
										INSERT(Ignore, LocalPlayer.Character)      
										INSERT(Ignore, Player.Character.HumanoidRootPart)      
										if Player.Character:FindFirstChild("BackC4") then      
											INSERT(Ignore, Player.Character.BackC4)      
										end      
										if Player.Character:FindFirstChild("Gun") then      
											INSERT(Ignore, Player.Character.Gun)      
										end      

								local Hitboxes = {} 
								for _,Hitbox in next, Stats.hitboxes.Jumbobox do 
									if Stats["prefer baim"].Toggle then 
										if Hitbox == "head" and (not values.rage.aimbot["auto baim"].Toggle and not values.rage.aimbot["auto baim"].Active or Player.Character:FindFirstChild("FakeHead")) then 
											INSERT(Hitboxes, Player.Character.Head) 
									elseif Hitbox == "torso" then 
											INSERT(Hitboxes, Player.Character.UpperTorso) 
										else 
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										end 
									else 
										if Hitbox == "torso" then 
											INSERT(Hitboxes, Player.Character.UpperTorso) 
										elseif Hitbox == "pelvis" then 
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										elseif not values.rage.aimbot["auto baim"].Toggle and not values.rage.aimbot["auto baim"].Active or Player.Character:FindFirstChild("FakeHead") then 
											INSERT(Hitboxes, Player.Character.Head) 
										end 
									end 
								end     

								for _,Hitbox in next, Hitboxes do 
									local Ignore2 = {unpack(Ignore)} 
									for _,Part in next, Player.Character:GetChildren() do 
										if Part ~= Hitbox then INSERT(Ignore2, Part) end 
									end 
									if values.rage.aimbot["autowall"].Toggle then 
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
													Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= Stats["minimum damage"].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
														if values.rage.exploits["custom tap"].Toggle and values.rage.exploits["custom tap"].Active then
															for i = 1, values.rage.exploits["custom tap amount"].Slider, 1 do 
                                                            									Client.firebullet()
                                                            								end
                                                            							else
                                                            								Clientfirebullet()
														end
														CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
													elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = true,
															[11] = Vector3.new(),
															[12] = 100,
															[13] = Vector3.new()
														}
														if values.rage.exploits["custom tap"].Toggle and values.rage.exploits["custom tap"].Active then
															for i = 1, values.rage.exploits["custom tap amount"].Slider, 1 do 
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														else
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
														CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
													end
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
													Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= Stats["minimum damage"].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot["silent aim"].Toggle then
														Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
														if values.rage.exploits["custom tap"].Toggle and values.rage.exploits["custom tap"].Active then
															for i = 1, values.rage.exploits["custom tap amount"].Slider, 1 do 
                                                            									Client.firebullet()
                                                            								end
                                                            							else
                                                            								Clientfirebullet()
														end														
														CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
													elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = true,
															[11] = Vector3.new(),
															[12] = 100,
															[13] = Vector3.new()
														}
														if values.rage.exploits["custom tap"].Toggle and values.rage.exploits["custom tap"].Active then
															for i = 1, values.rage.exploits["custom tap amount"].Slider, 1 do 
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														else
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
														CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
													end
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
											if Damage >= Stats["minimum damage"].Slider then
												RageGuy = Hit
												RageTarget = Hit
												if not values.rage.aimbot["silent aim"].Toggle then
													Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position)
												end
												Filter = true
												if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
													Client.firebullet()
													if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
														for chingchong = 2, values.rage.exploits['tap amount'].Slider do
															Client.firebullet()
														end
													end												
													CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
												elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
													CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
													Client.firebullet()
													local Arguments = {
														[1] = EndHit,
														[2] = EndHit.Position,
														[3] = LocalPlayer.Character.EquippedTool.Value,
														[4] = 100,
														[5] = LocalPlayer.Character.Gun,
														[8] = 1,
														[9] = false,
														[10] = false,
														[11] = Vector3.new(),
														[12] = 100,
														[13] = Vector3.new()
													}
													game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
														for chingchong = 2, values.rage.exploits['tap amount'].Slider do
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = values.rage.exploits["damage modifier"].Slider,
																[9] = false,
																[10] = false,
																[11] = Vector3.new(),
																[12] = 100,
																[13] = Vector3.new()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
													end
												end
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
			elseif values.legit.aimbot["aim assist"].Toggle and values.legit.aimbot["aim assist"].Active and not library.uiopen then 
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name)) 
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris} 
				local Closest = 9999 
				local Target 

				Fov.Radius = Stats["field of view"].Slider 
				Fov.Visible =  values.legit.settings["draw fov"].Toggle 
				Fov.Color =  values.legit.settings["draw fov"].Color 

				if not TBLFIND(Stats.conditions.Jumbobox, "smoke") then 
					INSERT(Ignore, workspace.Ray_Ignore) 
				end 

				if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then 
					if not TBLFIND(Stats.conditions.Jumbobox, "standing") or SelfVelocity.Magnitude < 3 then 
						for _,Player in next, Players:GetPlayers() do 
							if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then 
								if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then 
									if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then 
										local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position) 
										if onScreen then 
											local Magnitude = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
											if Magnitude < Stats["field of view"].Slider then 
												local Hitbox = Stats.hitbox.Dropdown == "head" and Player.Character.Head or Stats.hitbox.Dropdown == "chest" and Player.Character.UpperTorso 
												if Stats.hitbox.Dropdown == "closest" then 
													local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position) 
													local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position) 
													local HeadDistance = (Vector2.new(HeadPos.X, HeadPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
													local TorsoDistance = (Vector2.new(TorsoPos.X, TorsoPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
													if HeadDistance < TorsoDistance then 
														Hitbox = Player.Character.Head 
													else 
														Hitbox = Player.Character.UpperTorso 
													end 
												end 
												if Hitbox ~= nil then 
													if not TBLFIND(Stats.conditions.Jumbobox, "visible") then 
														Target = Hitbox 
													else 
														local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude) 
														local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore, false, true) 
														if Hit and Hit:FindFirstAncestor(Player.Name) then 
															Target = Hitbox 
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

				if Target ~= nil then 
					local Pos = Camera:WorldToScreenPoint(Target.Position) 
					local Magnitude = Vector2.new(Pos.X - Mouse.X, Pos.Y - Mouse.Y) 
					mousemoverel(Magnitude.x/Stats.smoothing.Slider, Magnitude.y/Stats.smoothing.Slider) 
				end 
			end 
			if not values.rage.aimbot.enabled.Toggle and values.legit.aimbot["triggerbot"].Toggle and values.legit.aimbot["triggerbot"].Active and not TriggerDebounce then 
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name)) 
				if Stats.triggerbot.Toggle then 
					if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then 
						if not TBLFIND(Stats.conditions.Jumbobox, "standing") or SelfVelocity.Magnitude < 3 then 
							if Mouse.Target and Mouse.Target.Parent and Players:GetPlayerFromCharacter(Mouse.Target.Parent) and Multipliers[Mouse.Target.Name] ~= nil and Client.gun.DMG.Value * Multipliers[Mouse.Target.Name] >= Stats["minimum dmg"].Slider then 
								local OldTarget = Mouse.Target 
								local Player = Players:GetPlayerFromCharacter(Mouse.Target.Parent) 
								if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then 
									coroutine.wrap(function() 
										TriggerDebounce = true 
										wait(Stats["delay (ms)"].Slider/1000) 
										repeat RunService.RenderStepped:Wait() 
											if not Client.DISABLED then 
												Client.firebullet() 
											end 
										until Mouse.Target == nil or Player ~= Players:GetPlayerFromCharacter(Mouse.Target.Parent) 
										TriggerDebounce = false 
									end)() 
								end 
							end 
						end 
					end 
				end 
			end 
		end 
		BodyVelocity:Destroy() 
		BodyVelocity = Instance.new("BodyVelocity") 
		if UserInputService:IsKeyDown("Space") and values.misc.movement["bunny hop"].Toggle then 
			local add = 0 
			if values.misc.movement.direction.Dropdown == "directional" or values.misc.movement.direction.Dropdown == "directional 2" then 
				if UserInputService:IsKeyDown("A") then add = 90 end 
				if UserInputService:IsKeyDown("S") then add = 180 end 
				if UserInputService:IsKeyDown("D") then add = 270 end 
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end 
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end 
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end 
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end 
			end 
			local rot = YROTATION(CamCFrame) * CFrame.Angles(0,math.rad(add),0) 
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso 
			LocalPlayer.Character.Humanoid.Jump = true 
			    if values.misc.movement.type.Dropdown == "gyro" and values.misc.movement["gyro type"].Dropdown == "no fling" then 
			        BodyVelocity.MaxForce = Vector3.new(99999,0,99999)
			    else
			        BodyVelocity.MaxForce = Vector3.new(math.huge,0,math.huge)
			    end
			BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2) 
			if add == 0 and values.misc.movement.direction.Dropdown == "directional" and not UserInputService:IsKeyDown("W") then 
				BodyVelocity:Destroy() 
			elseif values.misc.movement.type.Dropdown == "cframe" then 
			    BodyVelocity:Destroy()
				Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/50 
			end 
		end 
		if values.misc.movement["edge jump"].Toggle and values.misc.movement["edge jump"].Active then 
			if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then 
				coroutine.wrap(function() 
					RunService.RenderStepped:Wait() 
					if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then 
						LocalPlayer.Character.Humanoid:ChangeState("Jumping") 
					end 
				end)() 
			end 
		end 
		Jitter = not Jitter 
		LocalPlayer.Character.Humanoid.AutoRotate = false 
		if values.rage.angles.enabled.Toggle and not DisableAA then 
			local Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) 
			if values.rage.angles["yaw base"].Dropdown == "spin" then 
				Angle = Angle + math.rad(Spin) 
			end 
			if values.rage.angles["yaw base"].Dropdown == "random" then 
				Angle = Angle + math.rad(math.random(0, 360)) 
			end 
			if values.rage.angles["yaw base"].Dropdown == "anti crippin'" then 
				Angle = Angle + math.clamp(Spin + 100, 0, 180) 
			end 
			if values.rage.angles["yaw base"].Dropdown == "flick" then 
				Angle = Angle + math.clamp(Spin + 0, 0, 50) 
			end 
				if values.rage.angles["yaw base"].Dropdown == "keybind yaw" then 
					 if UserInputService:IsKeyDown("W") then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
					elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
					end
					if UserInputService:IsKeyDown("A") then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(90)
					elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
					end
					if UserInputService:IsKeyDown("S") then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(180)
					elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
					end
					if UserInputService:IsKeyDown("D") then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(-90)
					elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
					end
				end 
				if values.rage.angles["manual right"].Toggle and values.rage.angles["manual right"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(90)
				elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
				end -- calamity is gay change my mind
				if values.rage.angles["manual left"].Toggle and values.rage.angles["manual left"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(-90)
				elseif values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
					Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
				end
				if values.rage.angles["reset yaw"].Toggle and values.rage.angles["reset yaw"].Active then
                Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90) + math.rad(0)
            end
			local Offset = math.rad(-values.rage.angles["yaw offset"].Slider - (values.rage.angles.jitter.Toggle and Jitter and values.rage.angles["jitter offset"].Slider or 0)) 
			local CFramePos = CFrame.new(Root.Position) * CFrame.Angles(0, Angle + Offset, 0) 
			if values.rage.angles["yaw base"].Dropdown == "targets" then 
				local part 
				local closest = 9999 
				for _,plr in next, Players:GetPlayers() do 
					if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Team ~= LocalPlayer.Team then 
						local pos, onScreen = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position) 
						local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
						if closest > magnitude then 
							part = plr.Character.HumanoidRootPart 
							closest = magnitude 
						end 
					end 
				end 
				if part ~= nil then 
					CFramePos = CFrame.new(Root.Position, part.Position) * CFrame.Angles(0, Offset, 0) 
				end 
			end 

			Root.CFrame = YROTATION(CFramePos) 
			if values.rage.angles["body roll"].Dropdown == "180" then  
				Root.CFrame = Root.CFrame * CFrame.Angles(values.rage.angles["body roll"].Dropdown == "180" and math.rad(values.rage.angles["body roll offset"].Slider) or 0, 1, 0)  
				LocalPlayer.Character.Humanoid.HipHeight = 4  
			else
				LocalPlayer.Character.Humanoid.HipHeight = 2  
			end 
			Root.CFrame = YROTATION(CFramePos) 
			local Pitch = values.rage.angles["pitch"].Dropdown == "zero" and 0 or values.rage.angles["pitch"].Dropdown == "up" and 1 or values.rage.angles["pitch"].Dropdown == "down" and -1 or values.rage.angles["pitch"].Dropdown == "180v2" and 2 or values.rage.angles["pitch"].Dropdown == "180v3" and -9 or values.rage.angles["pitch"].Dropdown == "random" and math.random(-25, 25)/25 or values.rage.angles["pitch"].Dropdown == "random2" and math.random(-99999999, 100)/100 or values.rage.angles["pitch"].Dropdown == "totally normal" and -71 or values.rage.angles["pitch"].Dropdown == "totally normal2" and 71 or values.rage.angles["pitch"].Dropdown == "custom" and values.rage.angles["pitch angle"].Slider or values.rage.angles["pitch"].Dropdown == "up2" and 12 or values.rage.angles["pitch"].Dropdown == "down2" and -12 or values.rage.angles["pitch"].Dropdown == "fake headless" and -99 or values.rage.angles["pitch"].Dropdown == "sucking dick" and -62 or values.rage.angles["pitch"].Dropdown == "huge" and math.huge or 2.5 
			if values.rage.angles["extend pitch"].Toggle and (values.rage.angles["pitch"].Dropdown == "up" or values.rage.angles["pitch"].Dropdown == "down" or values.rage.angles["pitch"].Dropdown == "180" or values.rage.angles["pitch"].Dropdown == "fake headless" or values.rage.angles["pitch"].Dropdown == "sucking dick") then 
				Pitch = (Pitch*2)/1.6 
            end
			if values.rage.angles["reset pitch"].Toggle and values.rage.angles["reset pitch"].Active then
                Pitch = 0
			end
			game.ReplicatedStorage.Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild("Climbing") and true or false) 
		else 
			LocalPlayer.Character.Humanoid.HipHeight = values.rage.angles["high pos"].Slider or 1 
			Root.CFrame = CFrame.new(Root.Position) * CFrame.Angles(0, -math.atan2(CamLook.Z, CamLook.X) + math.rad(270), 0) 
			game.ReplicatedStorage.Events.ControlTurn:FireServer(CamLook.Y, LocalPlayer.Character:FindFirstChild("Climbing") and true or false) 
		end
		if values.rage.others["remove head"].Toggle then 
			if LocalPlayer.Character:FindFirstChild("FakeHead") then 
				LocalPlayer.Character.FakeHead:Destroy() 
			end 
			if LocalPlayer.Character:FindFirstChild("HeadHB") then 
				LocalPlayer.Character.HeadHB:Destroy() 
			end 
		end 
		if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "recoil") then 
			Client.resetaccuracy() 
			Client.RecoilX = 0 
			Client.RecoilY = 0 
		end 
	end 
	for _,Player in next, Players:GetPlayers() do 
		if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then 
			coroutine.wrap(function() 
				local Position = Player.Character.HumanoidRootPart.Position 
				RunService.RenderStepped:Wait() 
				if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") then 
					if Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then 
						Player.Character.HumanoidRootPart.OldPosition.Value = Position 
					else 
						local Value = Instance.new("Vector3Value") 
						Value.Name = "OldPosition" 
						Value.Value = Position 
						Value.Parent = Player.Character.HumanoidRootPart 
					end 
				end 
			end)() 
		end 
	end 
	for _,Player in next, Players:GetPlayers() do 
		local tbl = objects[Player] 
		if tbl == nil then return end 
		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer then 
			local HumanoidRootPart = Player.Character.HumanoidRootPart 
			local RootPosition = HumanoidRootPart.Position 
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition) 
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2 

			local Drawings, Text = TBLFIND(values.visuals.players.outlines.Jumbobox, "drawings") ~= nil, TBLFIND(values.visuals.players.outlines.Jumbobox, "text") ~= nil 

			tbl.Box.Color = (values.luas["Loop kill"]['Target box'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown and values.luas["Loop kill"]['Target box'].Color or values.visuals.players.box.Color)
			tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9) 
			tbl.Box.Position = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2)) 

			if values.visuals.players.box.Toggle or (values.luas["Loop kill"]['Target box'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown) then 
				tbl.Box.Visible = OnScreen 
				if Drawings then 
					tbl.BoxOutline.Size = tbl.Box.Size 
					tbl.BoxOutline.Position = tbl.Box.Position 
					tbl.BoxOutline.Visible = OnScreen 
				else 
					tbl.BoxOutline.Visible = false 
				end 
			else 
				tbl.Box.Visible = false 
				tbl.BoxOutline.Visible = false 
			end 

			if values.visuals.players.health.Toggle or (values.luas["Loop kill"]['Target health'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown) then 
				tbl.Health.Color =  (values.luas["Loop kill"]['Target health'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown and values.luas["Loop kill"]['Target health'].Color or values.visuals.players.health.Color) 
				tbl.Health.From = Vector2.new((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y) 
				tbl.Health.To = Vector2.new(tbl.Health.From.X, tbl.Health.From.Y - math.clamp(Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth, 0, 1) * tbl.Box.Size.Y) 
				tbl.Health.Visible = OnScreen 
				if Drawings then 
					tbl.HealthOutline.From = Vector2.new(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1) 
					tbl.HealthOutline.To = Vector2.new(tbl.Health.From.X, (tbl.Health.From.Y - 1 * tbl.Box.Size.Y) -1) 
					tbl.HealthOutline.Visible = OnScreen 
				else 
					tbl.HealthOutline.Visible = false 
				end 
			else 
				tbl.Health.Visible = false 
				tbl.HealthOutline.Visible = false 
			end 

			if values.visuals.players.weapon.Toggle or (values.luas["Loop kill"]['Target weapon'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown) then 
				tbl.Weapon.Color = (values.luas["Loop kill"]['Target weapon'].Toggle and Player.Name == values.luas["Loop kill"].Player.Dropdown and values.luas["Loop kill"]['Target weapon'].Color or values.visuals.players.weapon.Color)
				tbl.Weapon.Text = Player.Character.EquippedTool.Value 
				tbl.Weapon.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1) 
				tbl.Weapon.Font = Drawing.Fonts[values.visuals.players.font.Dropdown] 
				tbl.Weapon.Outline = Text 
				tbl.Weapon.Size = values.visuals.players.size.Slider 
				tbl.Weapon.Visible = OnScreen 
			else 
				tbl.Weapon.Visible = false 
			end 

			if values.visuals.players["weapon icon"].Toggle or (values.luas["Loop kill"]['Target weapon icon'].Toggle and Player.Name == values.luas["Loop kill"]['Player'].Dropdown) then 
				Items[Player.Name].ImageColor3 = (values.luas["Loop kill"]['Target weapon icon'].Toggle and Player.Name == values.luas["Loop kill"]['Player'].Dropdown and values.luas["Loop kill"]['Target weapon icon'].Color or values.visuals.players['weapon icon'].Color)
				Items[Player.Name].Image = GetIcon.getWeaponOfKiller(Player.Character.EquippedTool.Value) 
				Items[Player.Name].Position = UDim2.new(0, tbl.Box.Size.X/2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22)) 
				Items[Player.Name].Visible = OnScreen 
			else 
				Items[Player.Name].Visible = false 
			end 

			if values.visuals.players.name.Toggle or (values.luas["Loop kill"]['Target name'].Toggle and Player.Name == values.luas["Loop kill"]['Player'].Dropdown) then 
				tbl.Name.Color = (values.luas["Loop kill"]['Target name'].Toggle and Player.Name == values.luas["Loop kill"]['Player'].Dropdown and values.luas["Loop kill"]['Target name'].Color or values.visuals.players.name.Color)
				tbl.Name.Text = Player.Name 
				tbl.Name.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16) 
				tbl.Name.Font = Drawing.Fonts[values.visuals.players.font.Dropdown] 
				tbl.Name.Outline = Text 
				tbl.Name.Size = values.visuals.players.size.Slider 
				tbl.Name.Visible = OnScreen 
			else 
				tbl.Name.Visible = false 
			end 
			local LastInfoPos = tbl.Box.Position.Y - 1 
			if TBLFIND(values.visuals.players.indicators.Jumbobox, "armor") and Player:FindFirstChild("Kevlar") then 
				tbl.Armor.Color = Color3.fromRGB(0, 150, 255) 
				tbl.Armor.Text = Player:FindFirstChild("Helmet") and "HK" or "K" 
				tbl.Armor.Position = Vector2.new(tbl.Box.Size.X + tbl.Box.Position.X + 12, LastInfoPos) 
				tbl.Armor.Font = Drawing.Fonts[values.visuals.players.font.Dropdown] 
				tbl.Armor.Outline = Text 
				tbl.Armor.Size = values.visuals.players.size.Slider 
				tbl.Armor.Visible = OnScreen 

				LastInfoPos = LastInfoPos + values.visuals.players.size.Slider 
			else 
				tbl.Armor.Visible = false 
			end 
		else 
			if Player.Name ~= LocalPlayer.Name then 
				Items[Player.Name].Visible = false 
				for i,v in next, tbl do 
					v.Visible = false 
				end 
			end 
		end 
	end 
end) 

local mt = getrawmetatable(game) 
local oldNamecall = mt.__namecall 
local oldIndex = mt.__index 
local oldNewIndex = mt.__newindex 
local lasthittick = tick()
setreadonly(mt,false) 
mt.__namecall = function(self, ...) 
	local method = tostring(getnamecallmethod()) 
	local args = {...} 

if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then 
    if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active and values.visuals.self["no arm third person"].Toggle and LocalPlayer.Character then 
        args[1] = args[1] * CFrame.new(99, 99, 99) 
    else 
        if values.visuals.self["viewmodel changer"].Toggle then 
            args[1] = args[1] * ViewmodelOffset
        end 
        if values.visuals.self["visualize silent angle"].Toggle and RageTarget then
             args[1] = CFrame.lookAt(args[1].p, RageTarget.Position)
		end 
    end
end
	if method == "SetPrimaryPartCFrame" and self.Name ~= "Arms" then 
		args[1] = args[1] + Vector3.new(0, 3, 0) 
		coroutine.wrap(function() 
			DisableAA = true 
			wait(2) 
			DisableAA = false 
		end)() 
	end 
	if method == "Kick" then 
		return 
	end 
	if method == "FireServer" then 
		if LEN(self.Name) == 38 then 
			return 
		elseif self.Name == "FallDamage" and TBLFIND(values.misc.client["damage bypass"].Jumbobox, "fall") or values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then 
			return 
		elseif self.Name == "BURNME" and TBLFIND(values.misc.client["damage bypass"].Jumbobox, "fire") then 
			return 
		elseif self.Name == "ControlTurn" and not checkcaller() then 
			return 
		end 
		if self.Name == "PlayerChatted" and values.misc.client["chat alive"].Toggle then 
			args[2] = false 
			args[3] = "Innocent" 
			args[4] = false 
			args[5] = false 
		end 
		if self.Name == "ReplicateCamera" and values.misc.client["anti spectate"].Toggle then 
			args[1] = CFrame.new() 
		end 
		if self.Name == "ReplicateCamera" and values.misc.client["my eyes"].Toggle then 
			args[1] =  args[1] * CFrame.Angles(0, 0, math.rad(math.random(0, 360)))
		end 
	end 
	if method == "FindPartOnRayWithWhitelist" and not checkcaller() and Client.gun ~= "none" and Client.gun.Name ~= "C4" then 
		if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then 
			local Team = LocalPlayer.Status.Team.Value 

			if TBLFIND(values.misc.client.shop.Jumbobox, "anywhere") then 
				return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2 
			end 
		end 
	end 
	if method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then 
		if not checkcaller() or Filter then 
			if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "penetration") then 
				INSERT(args[2], workspace.Map) 
			end 
			if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "spread") then 
				args[1] = RAY(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value) 
			end 
			local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name)) 
			if values.legit.aimbot["silent aim"].Toggle and values.legit.aimbot["silent aim"].Active and Stats["silent aim"].Toggle then 
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris} 
				local Closest = 9999 
				local Target 

				if not TBLFIND(Stats.conditions.Jumbobox, "smoke") then 
					INSERT(Ignore, workspace.Ray_Ignore) 
				end 

				coroutine.wrap(function() 
					if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then 
						if not TBLFIND(Stats.conditions.Jumbobox, "blind") or SelfVelocity.Magnitude < 3 then 
							for _,Player in next, Players:GetPlayers() do 
								if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then 
									if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then 
										if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then 
											local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position) 
											if onScreen then 
												local Magnitude = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
												if Magnitude < Stats["field of view"].Slider then 
													local Hitbox = Stats.priority.Dropdown == "head" and Player.Character.Head or Stats.priority.Dropdown == "chest" and Player.Character.UpperTorso 
													if Stats.priority.Dropdown == "closest" then 
														local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position) 
														local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position) 
														local HeadDistance = (Vector2.new(HeadPos.X, HeadPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
														local TorsoDistance = (Vector2.new(TorsoPos.X, TorsoPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude 
														if HeadDistance < TorsoDistance then 
															Hitbox = Player.Character.Head 
														else 
															Hitbox = Player.Character.UpperTorso 
														end 
													end 
													if Hitbox ~= nil then 
														if not TBLFIND(Stats.conditions.Jumbobox, "visible") then 
															Target = Hitbox 
														else 
															local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude) 
															local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore, false, true) 
															if Hit and Hit:FindFirstAncestor(Player.Name) then 
																Target = Hitbox 
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

					local Hit = math.random(1, 100) <= Stats.hitchance.Slider 
					if Target ~= nil and Hit then 
						args[1] = RAY(Camera.CFrame.Position, (Target.Position - Camera.CFrame.Position).unit * (Target.Position - Camera.CFrame.Position).magnitude) 
					end 
				end)() 
			end 
			if RageTarget ~= nil then 
				local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vector3.new(0, 2.5, 0) or Camera.CFrame.p 
				if values.rage.aimbot["delay shot"].Toggle then 
					spawn(function() 
						args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude) 
					end) 
				else 
					args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude) 
				end 
			end 
		end 
	end 
	if method == "InvokeServer" then 
		if self.Name == "Moolah" then 
			return 
		elseif self.Name == "Hugh" then 
			return 
		elseif self.Name == "Filter" and values.misc.chat["no filter"].Toggle then 
			return args[1] 
		end 
	end 
	if method == "LoadAnimation" and self.Name == "Humanoid" then 
		if values.rage.others["leg movement"].Dropdown == "slide" then 
			if FIND(args[1].Name, "Walk") or FIND(args[1].Name, "Run") then 
				args[1] = FakeAnim 
			end 
		end 
		if values.rage.others["leg movement"].Dropdown == "slide2" then 
			if FIND(args[1].Name, "Walk") or FIND(args[1].Name, "Run") or FIND(args[1].Name, "Jump") then 
				args[1] = FakeAnim 
			end 
		end 
		if values.rage.others["leg movement"].Dropdown == "slide3" then 
			if FIND(args[1].Name, "Jump") then 
				args[1] = FakeAnim 
			end 
		end 
		if values.rage.others["no animations"].Toggle then 
			args[1] = FakeAnim 
		end 
	end	
	if method == "FireServer" and self.Name == "HitPart" and tick() - lasthittick > 0.005 then
		lasthittick = tick()
		spawn(function()
			if values.visuals.world["bullet tracers"].Toggle then
				local pos
				if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active then
					pos = LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.4, 0) 
				elseif game.Workspace.Camera:FindFirstChild("Arms") then
					pos = game.Workspace.Camera.Arms.Flash.Position
				end
				local Beam = createbullettracer(pos, args[2])
			end
		end)
		if values.rage.aimbot["force hit"].Toggle and RageTarget ~= nil then
			args[1] = RageTarget
            args[2] = RageTarget.Position
		end
		if values.rage.aimbot["prediction"].Dropdown ~= "off" and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
					if values.rage.aimbot["prediction"].Dropdown == "cframe" then
						local Velocity = (RageTarget.Parent.HumanoidRootPart.Position - RageTarget.Parent.HumanoidRootPart.OldPosition.Value)/LastStep
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 8 then
							args[2] = args[2] + Direction * ((Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2)))
							args[4] = 0
							args[12] = args[12] - 500
						end
					elseif values.rage.aimbot["prediction"].Dropdown == "velocity" then
						local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 8 then
							args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2))
							args[4] = 0
							args[12] = args[12] - 500
						end
					end
				end
			end)()
		end
		if (values.rage.aimbot["get real"].Toggle and RageTarget ~= nil) then 
			coroutine.wrap(function() 
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then 
					local hrp = RageTarget.Parent.HumanoidRootPart.Position 
					local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value 

					local vel = (Vector3.new(hrp.X, 0, hrp.Z) - Vector3.new(oldHrp.X, 0, oldHrp.Z)) / LastStep 
					local dir = Vector3.new(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude) 
					
					args[2] = args[2] + dir * (Ping / (math.pow(Ping, 1.5)) * (dir / (dir / 2))) 
					args[4] = 0 
					args[12] = args[12] - 500 
				end 
			end)() 
		end 
		if values.visuals.world["impacts"].Toggle then 
			coroutine.wrap(function() 
				local hit = Instance.new("Part") 
				hit.Transparency = 1 
				hit.Anchored = true 
				hit.CanCollide = false 
				hit.Size = Vector3.new(0.3,0.3,0.3) 
				hit.Position = args[2] 
				local selection = Instance.new("SelectionBox") 
				selection.LineThickness = 0 
				selection.SurfaceTransparency = 0.5 
				selection.Color3 = values.visuals.world["impacts"].Color 
				selection.SurfaceColor3 = values.visuals.world["impacts"].Color 
				selection.Parent = hit 
				selection.Adornee = hit 
				hit.Parent = workspace.Debris 
				wait(5.9) 
				library:Tween(selection, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {SurfaceTransparency = 1}) 
				hit:Destroy() 
			end)() 
			if values.visuals.world["hit chams"].Toggle then 
				coroutine.wrap(function() 
					if Players:GetPlayerFromCharacter(args[1].Parent) and Players:GetPlayerFromCharacter(args[1].Parent).Team ~= LocalPlayer.Team then 
						for _,hitbox in next, args[1].Parent:GetChildren() do 
							if hitbox:IsA("BasePart") or hitbox.Name == "Head" then 
								coroutine.wrap(function() 
									local part = Instance.new("Part") 
									part.CFrame = hitbox.CFrame 
									part.Anchored = true 
									part.CanCollide = false 
									part.Material = Enum.Material.ForceField 
									part.Color = values.visuals.world["hit chams"].Color 
									part.Size = hitbox.Size 
									part.Parent = workspace.Debris 
									library:Tween(part, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1}) 
									wait(2) 
									part:Destroy() 
								end)() 
							end 
						end 
					end 
				end)() 
			end 
		end 
	end

	return oldNamecall(self, unpack(args)) 
end 

mt.__index = newcclosure(function(self, key)
	local CallingScript = getcallingscript()

	if not checkcaller() and self == Viewmodels and LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("UpperTorso") then
		local WeaponName = string.gsub(key, "v_", "")
		if not string.find(WeaponName, "Arms") then
			if Weapons[WeaponName]:FindFirstChild("Melee") and values.skins.knife["knife changer"].Toggle then
				if Viewmodels:FindFirstChild("v_"..values.skins.knife.model.Scroll) then
					return Viewmodels:FindFirstChild("v_"..values.skins.knife.model.Scroll)
				else
					local Clone = Models.Knives[values.skins.knife.model.Scroll]:Clone()
					return Clone
				end
			end
		end
	end
	if key == "Value" then
		if self.Name == "Auto" and table.find(values.misc.client["gun modifiers"].Jumbobox, "automatic") then
			return true
		elseif self.Name == "ReloadTime" and table.find(values.misc.client["gun modifiers"].Jumbobox, "reload") then
			return 0.001
		elseif self.Name == "EquipTime" and table.find(values.misc.client["gun modifiers"].Jumbobox, "equip") then
			return 0.001
		elseif self.Name == "BuyTime" and table.find(values.misc.client.shop.Jumbobox, "inf time") then
			return 5
		end
	end

	return oldIndex(self, key)
end)

mt.__newindex = function(self, i, v) 
	if self:IsA("Humanoid") and i == "JumpPower" and not checkcaller() then 
		if values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then 
			v = 24 
		end 
		if values.misc.movement["edge bug"].Toggle and values.misc.movement["edge bug"].Active then 
			v = 0 
		end 
	elseif self:IsA("Humanoid") and i == "CameraOffset" then 
		if values.rage.angles.enabled.Toggle and values.rage.angles["body roll"].Dropdown == "180" and not DisableAA then 
			v = v + Vector3.new(0, -3.5, 0) 
		end 
	end 

	return oldNewIndex(self, i, v) 
end 
Crosshairs.Scope:GetPropertyChangedSignal("Visible"):Connect(function(current) 
	if not TBLFIND(values.visuals.effects.removals.Jumbobox, "scope lines") then return end 

	if current ~= false then 
		Crosshairs.Scope.Visible = false 
	end 
end) 
Crosshair:GetPropertyChangedSignal("Visible"):Connect(function(current) 
	if not LocalPlayer.Character then return end 
	if not values.visuals.effects["force crosshair"].Toggle then return end 
	if LocalPlayer.Character:FindFirstChild("AImath.minG") then return end 

	Crosshair.Visible = true 
end) 

LocalPlayer.Additionals.TotalDamage:GetPropertyChangedSignal("Value"):Connect(function(current) 
	if current == 0 then return end 
	coroutine.wrap(function() 
		if values.misc.client.hitmarker.Toggle then 
			local Line = Drawing.new("Line") 
			local Line2 = Drawing.new("Line") 
			local Line3 = Drawing.new("Line") 
			local Line4 = Drawing.new("Line") 

			local x, y = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2 

			Line.From = Vector2.new(x + 4, y + 4) 
			Line.To = Vector2.new(x + 10, y + 10) 
			Line.Color = values.misc.client.hitmarker.Color 
			Line.Visible = true 

			Line2.From = Vector2.new(x + 4, y - 4) 
			Line2.To = Vector2.new(x + 10, y - 10) 
			Line2.Color = values.misc.client.hitmarker.Color 
			Line2.Visible = true 

			Line3.From = Vector2.new(x - 4, y - 4) 
			Line3.To = Vector2.new(x - 10, y - 10) 
			Line3.Color = values.misc.client.hitmarker.Color 
			Line3.Visible = true 

			Line4.From = Vector2.new(x - 4, y + 4) 
			Line4.To = Vector2.new(x - 10, y + 10) 
			Line4.Color = values.misc.client.hitmarker.Color 
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
	if values.visuals.world.hitsound.Dropdown == "none" then return end 
	local sound = Instance.new("Sound") 
	sound.Parent = game:GetService("SoundService") 
	sound.SoundId = values.visuals.world.hitsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.hitsound.Dropdown == "neverlose" and "rbxassetid://6607204501" or values.visuals.world.hitsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.visuals.world.hitsound.Dropdown == "semi" and "rbxassetid://7791675603" or values.visuals.world.hitsound.Dropdown == "baimware" and "rbxassetid://6607339542" or values.visuals.world.hitsound.Dropdown == "nitendo" and "rbxassetid://4485382910" or values.visuals.world.hitsound.Dropdown == "yamete (use headphones)" and "rbxassetid://7418243221" or values.visuals.world.hitsound.Dropdown == "moan" and "rbxassetid://2440889605" or values.visuals.world.hitsound.Dropdown == "moan2" and "rbxassetid://2440891382" or values.visuals.world.hitsound.Dropdown == "moan3" and "rbxassetid://2440889869" or values.visuals.world.hitsound.Dropdown == "moan4" and "rbxassetid://2440889605" or values.visuals.world.hitsound.Dropdown == "1" and "rbxassetid://7349055654" or values.visuals.world.hitsound.Dropdown == "baka" and "rbxassetid://5433158470" or values.visuals.world.hitsound.Dropdown == "csgo headshot" and "rbxassetid://4745279079"
	sound.Volume = values.visuals.world["sound volume"].Slider 
	sound.PlayOnRemove = true 
	sound:Destroy() 
	
	end)
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current) 
	if current == 0 then return end 
	if values.misc.chat["kill say"].Toggle then 
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat["message"].Text ~= "tinshits veri good chet" and values.misc.chat["message"].Text or "tin shitted", false, "Innocent", false, true) 
	end 
end) 
game.Players.LocalPlayer.Status.Kills.Changed:Connect(function(val)
	if values.visuals.world['Killsoundtoggle'].Toggle ~= "" and val ~= 0 then
		local marker = Instance.new("Sound")
		marker.Parent = game:GetService("SoundService")
		marker.SoundId = "rbxassetid://"..values.visuals.world['Killsound'].Text
		marker.Volume = 3
		marker:Play()
	end
end)
RayIgnore.ChildAdded:Connect(function(obj) 
	if obj.Name == "Smokes" then 
		obj.ChildAdded:Connect(function(smoke) 
			RunService.RenderStepped:Wait() 
			local OriginalRate = Instance.new("NumberValue") 
			OriginalRate.Value = smoke.ParticleEmitter.Rate 
			OriginalRate.Name = "OriginalRate" 
			OriginalRate.Parent = smoke 
			if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then 
				smoke.ParticleEmitter.Rate = 0 
			end 
		end) 
	end 
end) 
if RayIgnore:FindFirstChild("Smokes") then 
	for _,smoke in next, RayIgnore:FindFirstChild("Smokes"):GetChildren() do 
		local OriginalRate = Instance.new("NumberValue") 
		OriginalRate.Value = smoke.ParticleEmitter.Rate 
		OriginalRate.Name = "OriginalRate" 
		OriginalRate.Parent = smoke 
	end 
	RayIgnore:FindFirstChild("Smokes").ChildAdded:Connect(function(smoke) 
		RunService.RenderStepped:Wait() 
		local OriginalRate = Instance.new("NumberValue") 
		OriginalRate.Value = smoke.ParticleEmitter.Rate 
		OriginalRate.Name = "OriginalRate" 
		OriginalRate.Parent = smoke 
		if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then 
			smoke.ParticleEmitter.Rate = 0 
		end
	end) 
end 
Camera.ChildAdded:Connect(function(obj) 
	if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "ammo") then 
		Client.ammocount = math.huge 
		Client.primarystored = math.huge 
		Client.ammocount2 = math.huge  
		Client.secondarystored = math.huge 
	end 
	RunService.RenderStepped:Wait() 
	if obj.Name ~= "Arms" then return end 
	local Model 
	for i,v in next, obj:GetChildren() do 
		if v:IsA("Model") and (v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm")) then 
			Model = v 
		end 
	end 
	if Model == nil then return end 
	for i,v in next, obj:GetChildren() do 
		if (v:IsA("BasePart") or v:IsA("Part")) and v.Transparency ~= 1 and v.Name ~= "Flash" then 
			local valid = true 
			if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then 
				valid = false 
				local success, err = pcall(function() 
					local OriginalTexture = Instance.new("StringValue") 
					OriginalTexture.Value = v.Mesh.TextureId 
					OriginalTexture.Name = "OriginalTexture" 
					OriginalTexture.Parent = v.Mesh 
				end) 
				local success2, err2 = pcall(function() 
					local OriginalTexture = Instance.new("StringValue") 
					OriginalTexture.Value = v.Mesh.TextureID 
					OriginalTexture.Name = "OriginalTexture" 
					OriginalTexture.Parent = v.Mesh 
				end) 
				if success or success2 then valid = true end 
			end 

			for i2,v2 in next, v:GetChildren() do 
				if (v2:IsA("BasePart") or v2:IsA("Part")) then 
					INSERT(WeaponObj, v2) 
				end 
			end 

			if valid then 
				INSERT(WeaponObj, v) 
			end 
		end 
	end 

	local gunname = Client.gun ~= "none" and values.skins.knife["knife changer"].Toggle and Client.gun:FindFirstChild("Melee") and values.skins.knife.model.Scroll or Client.gun ~= "none" and Client.gun.Name 
	if values.skins.skins["skin changer"].Toggle and gunname ~= nil and Skins:FindFirstChild(gunname) then 
		if values.skins.skins.skin.Scroll[gunname] ~= "Inventory" then 
			MapSkin(gunname, values.skins.skins.skin.Scroll[gunname]) 
		end 
	end 
	for _,v in next, WeaponObj do 
		if v:IsA("MeshPart") then 
			local OriginalTexture = Instance.new("StringValue") 
			OriginalTexture.Value = v.TextureID 
			OriginalTexture.Name = "OriginalTexture" 
			OriginalTexture.Parent = v 
		end 

		local OriginalColor = Instance.new("Color3Value") 
		OriginalColor.Value = v.Color 
		OriginalColor.Name = "OriginalColor" 
		OriginalColor.Parent = v 

		local OriginalMaterial = Instance.new("StringValue") 
		OriginalMaterial.Value = v.Material.Name 
		OriginalMaterial.Name = "OriginalMaterial" 
		OriginalMaterial.Parent = v 

		if values.visuals.effects["weapon chams"].Toggle then 
			UpdateWeapon(v) 
		end 
	end 
	RArm = Model:FindFirstChild("Right Arm"); LArm = Model:FindFirstChild("Left Arm") 
	if RArm then 
		local OriginalColor = Instance.new("Color3Value") 
		OriginalColor.Value = RArm.Color 
		OriginalColor.Name = "Color3Value" 
		OriginalColor.Parent = RArm 
		if values.visuals.effects["arm chams"].Toggle then 
			RArm.Color = values.visuals.effects["arm chams"].Color 
			RArm.Transparency = values.visuals.effects["arm chams"].Transparency 
		end 
		RGlove = RArm:FindFirstChild("Glove") or RArm:FindFirstChild("RGlove") 
		if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then 
			if RGlove then RGlove:Destroy() end 
			RGlove = GloveModels[values.skins.glove.model.Dropdown].RGlove:Clone() 
			RGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId 
			RGlove.Parent = RArm 
			RGlove.Transparency = 0 
			RGlove.Welded.Part0 = RArm 
		end 
		if RGlove.Transparency == 1 then 
			RGlove:Destroy() 
			RGlove = nil 
		else 
			local GloveTexture = Instance.new("StringValue") 
			GloveTexture.Value = RGlove.Mesh.TextureId 
			GloveTexture.Name = "StringValue" 
			GloveTexture.Parent = RGlove 

			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(RGlove) 
			end 
		end 
		RSleeve = RArm:FindFirstChild("Sleeve") 
		if RSleeve ~= nil then 
			local SleeveTexture = Instance.new("StringValue") 
			SleeveTexture.Value = RSleeve.Mesh.TextureId 
			SleeveTexture.Name = "StringValue" 
			SleeveTexture.Parent = RSleeve 
			if values.visuals.effects["arm chams"].Toggle then 
				LArm.Color = values.visuals.effects["arm chams"].Color 
			end 
			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(RSleeve) 
			end 
		end 
	end 
	if LArm then 
		local OriginalColor = Instance.new("Color3Value") 
		OriginalColor.Value = LArm.Color 
		OriginalColor.Name = "Color3Value" 
		OriginalColor.Parent = LArm 
		if values.visuals.effects["arm chams"].Toggle then 
			LArm.Color = values.visuals.effects["arm chams"].Color 
			LArm.Transparency = values.visuals.effects["arm chams"].Transparency 
		end 
		LGlove = LArm:FindFirstChild("Glove") or LArm:FindFirstChild("LGlove") 
		if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then 
			if LGlove then LGlove:Destroy() end 
			LGlove = GloveModels[values.skins.glove.model.Dropdown].LGlove:Clone() 
			LGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId 
			LGlove.Transparency = 0 
			LGlove.Parent = LArm 
			LGlove.Welded.Part0 = LArm 
		end 
		if LGlove.Transparency == 1 then 
			LGlove:Destroy() 
			LGlove =  nil 
		else 
			local GloveTexture = Instance.new("StringValue") 
			GloveTexture.Value = LGlove.Mesh.TextureId 
			GloveTexture.Name = "StringValue" 
			GloveTexture.Parent = LGlove 

			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(LGlove) 
			end 
		end 
		LSleeve = LArm:FindFirstChild("Sleeve") 
		if LSleeve ~= nil then 
			local SleeveTexture = Instance.new("StringValue") 
			SleeveTexture.Value = LSleeve.Mesh.TextureId 
			SleeveTexture.Name = "StringValue" 
			SleeveTexture.Parent = LSleeve 

			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(LSleeve) 
			end 
		end 
	end 
end) 
Camera.ChildAdded:Connect(function(obj) 
	if obj.Name == "Arms" then 
		RArm, LArm, RGlove, RSleeve, LGlove, LSleeve = nil, nil, nil, nil, nil, nil 
		WeaponObj = {} 
	end 
end) 
Camera:GetPropertyChangedSignal("FieldOfView"):Connect(function(fov) 
	if LocalPlayer.Character == nil then return end 
	if fov == values.visuals.self["fov changer"].Slider then return end 
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AImath.minG") then 
		Camera.FieldOfView = values.visuals.self["fov changer"].Slider 
	end 
end) 
LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function(cash) 
	if values.misc.client["infinite cash"].Toggle and cash ~= 9e9  then 
		LocalPlayer.Cash.Value = 9e9
	end 
end) 
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Origin") then 
	if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then 
		oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone() 
	end 
end 
workspace.ChildAdded:Connect(function(obj) 
	if obj.Name == "Map" then 
		wait(5) 
		if values.misc.client["remove killers"].Toggle then 
			if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then 
				local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone() 
				clone.Name = "KillersClone" 
				clone.Parent = workspace:FindFirstChild("Map") 

				workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy() 
			end 
		end 
		if oldSkybox ~= nil then 
			oldSkybox:Destroy() 
			oldSkybox = nil 
		end 
		local Origin = workspace.Map:WaitForChild("Origin") 
		if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then 
			oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone() 

			local sky = values.visuals.world.skybox.Dropdown 
			if sky ~= "none" then 
				Lighting:FindFirstChildOfClass("Sky"):Destroy() 
				local skybox = Instance.new("Sky") 
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf 
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk 
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn 
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt 
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt 
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp 
				skybox.Name = "override" 
				skybox.Parent = Lighting 
			end 
		else 
			local sky = values.visuals.world.skybox.Dropdown 
			if sky ~= "none" then 
				local skybox = Instance.new("Sky") 
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf 
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk 
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn 
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt 
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt 
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp 
				skybox.Name = "override" 
				skybox.Parent = Lighting 
			end 
		end 
	end 
end) 
Lighting.ChildAdded:Connect(function(obj) 
	if obj:IsA("Sky") and obj.Name ~= "override" then 
		oldSkybox = obj:Clone() 
	end 
end) 

local function CollisionTBL(obj) 
	if obj:IsA("Accessory") then 
		INSERT(Collision, obj) 
	end 
	if obj:IsA("Part") then 
		if obj.Name == "HeadHB" or obj.Name == "FakeHead" then 
			INSERT(Collision, obj) 
		end 
	end 
end 
LocalPlayer.CharacterAdded:Connect(function(char) 
	repeat RunService.RenderStepped:Wait() 
	until char:FindFirstChild("Gun") 
	SelfObj = {} 
	if values.skins.characters["character changer"].Toggle then 
		ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll)) 
	end 
	if char:FindFirstChildOfClass("Shirt") then 
		local String = Instance.new("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Shirt").ShirtTemplate 
		String.Parent = char:FindFirstChildOfClass("Shirt") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Shirt").ShirtTemplate = "" 
		end 
	end 
	if char:FindFirstChildOfClass("Pants") then 
		local String = Instance.new("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Pants").PantsTemplate 
		String.Parent = char:FindFirstChildOfClass("Pants") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Pants").PantsTemplate = "" 
		end 
	end 
	for i,v in next, char:GetChildren() do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			INSERT(SelfObj, v) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Handle.Material.Name 
			String.Parent = v.Handle 
		end 
	end 
	if values.visuals.self["self chams"].Toggle then 
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = values.visuals.self["self chams material"].Dropdown 
				obj.Color = values.visuals.self["self chams"].Color 
			end 
		end 
	end 
	LocalPlayer.Character.ChildAdded:Connect(function(Child) 
		if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, Child.Handle) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = Child.Handle.Material.Name 
			String.Parent = Child.Handle 

			if values.visuals.self["self chams"].Toggle then 
				for _,obj in next, SelfObj do 
					if obj.Parent ~= nil then 
						obj.Material = values.visuals.self["self chams material"].Dropdown 
						obj.Color = values.visuals.self["self chams"].Color 
					end 
				end 
			end 
		end 
	end) 
    
	if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then 
		LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance) 
		LoadedAnim.Priority = Enum.AnimationPriority.Action 
		LoadedAnim:Play() 
	end 
end) 

if LocalPlayer.Character ~= nil then 
	for i,v in next, LocalPlayer.Character:GetChildren() do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			INSERT(SelfObj, v) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Handle.Material.Name 
			String.Parent = v.Handle 
		end 
	end 
	if values.visuals.self["self chams"].Toggle then 
		for _,obj in next, SelfObj do 
			if obj.Parent ~= nil then 
				obj.Material = values.visuals.self["self chams material"].Dropdown 
				obj.Color = values.visuals.self["self chams"].Color 
			end 
		end 
	end 
	LocalPlayer.Character.ChildAdded:Connect(function(Child) 
		if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, Child.Handle) 
			local Color = Instance.new("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = Instance.new("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = Child.Handle.Material.Name 
			String.Parent = Child.Handle 

			if values.visuals.self["self chams"].Toggle then 
				for _,obj in next, SelfObj do 
					if obj.Parent ~= nil then 
						obj.Material = values.visuals.self["self chams material"].Dropdown
						obj.Color = values.visuals.self["self chams"].Color 
					end 
				end 
			end 
		end 
	end) 
end 
Players.PlayerAdded:Connect(function(Player) 
	Player:GetPropertyChangedSignal("Team"):Connect(function(new) 
		wait() 
		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then 
			for _2,Obj in next, Player.Character:GetDescendants() do 
				if Obj.Name == "WallCham" then 
					if values.visuals.players.chams.Toggle then 
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
							Obj.Visible = true 
						else 
							Obj.Visible = false 
						end 
					else 
						Obj.Visible = false 
					end 
					Obj.Color3 = values.visuals.players.chams.Color 
					Obj.Transparency = values.visuals.players.chams.Transparency
				end 
			end 
		end 
	end) 
	Player.CharacterAdded:Connect(function(Character) 
		Character.ChildAdded:Connect(function(obj) 
			wait(1) 
			CollisionTBL(obj) 
		end) 
		wait(1) 
		if Character ~= nil then 
			local Value = Instance.new("Vector3Value") 
			Value.Name = "OldPosition" 
			Value.Value = Character.HumanoidRootPart.Position 
			Value.Parent = Character.HumanoidRootPart 
			for _,obj in next, Character:GetChildren() do 
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
					local VisibleCham = Instance.new("BoxHandleAdornment") 
					VisibleCham.Name = "VisibleCham" 
					VisibleCham.AlwaysOnTop = true
					VisibleCham.ZIndex = 8 
					VisibleCham.Size = obj.Size + Vector3.new(0.3,0.3,0.3) 
					VisibleCham.AlwaysOnTop = true 
					VisibleCham.Transparency = values.visuals.players.chams.Transparency 

					local WallCham = Instance.new("BoxHandleAdornment") 
					WallCham.Name = "WallCham" 
					WallCham.AlwaysOnTop = true 
					WallCham.ZIndex = -1 
					WallCham.Size = obj.Size + Vector3.new(0.3,0.3,0.3)
					WallCham.AlwaysOnTop = true 
					WallCham.Transparency = values.visuals.players["outline chams"].Transparency 

					if values.visuals.players.chams.Toggle then 
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
							VisibleCham.Visible = true 
							WallCham.Visible = true 
						else 
							VisibleCham.Visible = false 
							WallCham.Visible = false 
						end 
					else 
						VisibleCham.Visible = false 
						WallCham.Visible = false 
					end 

					INSERT(ChamItems, VisibleCham) 
					INSERT(ChamItems, WallCham) 

					VisibleCham.Color3 = values.visuals.players.chams.Color 
					WallCham.Color3 = values.visuals.players["outline chams"].Color 

					VisibleCham.AdornCullingMode = "Never" 
					WallCham.AdornCullingMode = "Never" 

					VisibleCham.Adornee = obj 
					VisibleCham.Parent = obj 

					WallCham.Adornee = obj 
					WallCham.Parent = obj 
				end 
			end 
		end 
	end) 
end) 
for _,Player in next, Players:GetPlayers() do 
	if Player ~= LocalPlayer then 
		Player:GetPropertyChangedSignal("Team"):Connect(function(new) 
			wait() 
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then 
				for _2,Obj in next, Player.Character:GetDescendants() do 
					if Obj.Name == "WallCham" then 
						if values.visuals.players.chams.Toggle then 
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
								Obj.Visible = true 
							else 
								Obj.Visible = false 
							end 
						else 
							Obj.Visible = false 
						end 
						Obj.Color3 = values.visuals.players.chams.Color 
						Obj.Transparency = values.visuals.players.chams.Transparency
					end 
				end 
			end 
		end) 
	else 
		LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new) 
			wait() 
			for _,Player in next, Players:GetPlayers() do 
				if Player.Character then 
					for _2,Obj in next, Player.Character:GetDescendants() do 
						if Obj.Name == "WallCham" then 
							if values.visuals.players.chams.Toggle then 
								if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
									Obj.Visible = true 
								else 
									Obj.Visible = false 
								end 
							else 
								Obj.Visible = false 
							end 
							Obj.Color3 = values.visuals.players.chams.Color 
							Obj.Transparency = values.visuals.players.chams.Transparency
						end 
					end 
				end 
			end 
		end) 
	end 
	Player.CharacterAdded:Connect(function(Character) 
		Character.ChildAdded:Connect(function(obj) 
			wait(1) 
			CollisionTBL(obj) 
		end) 
		wait(1) 
		if Player.Character ~= nil and Player.Character:FindFirstChild("HumanoidRootPart") then 
			local Value = Instance.new("Vector3Value") 
			Value.Value = Player.Character.HumanoidRootPart.Position 
			Value.Name = "OldPosition" 
			Value.Parent = Player.Character.HumanoidRootPart 
			for _,obj in next, Player.Character:GetChildren() do 
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
					local VisibleCham = Instance.new("BoxHandleAdornment") 
					VisibleCham.Name = "VisibleCham" 
					VisibleCham.AlwaysOnTop = true 
					VisibleCham.ZIndex = 5 
					VisibleCham.Size = obj.Size + Vector3.new(0.1,0.1,0.1) 
					VisibleCham.AlwaysOnTop = true 
					VisibleCham.Transparency = values.visuals.players.chams.Transparency

					local WallCham = Instance.new("BoxHandleAdornment") 
					WallCham.Name = "WallCham" 
					WallCham.AlwaysOnTop = true 
					WallCham.ZIndex = -1
					WallCham.Size = obj.Size + Vector3.new(0.3,0.3,0.3)
					WallCham.AlwaysOnTop = true 
					WallCham.Transparency = values.visuals.players["outline chams"].Transparency

					if values.visuals.players.chams.Toggle then 
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
							VisibleCham.Visible = true 
							WallCham.Visible = true 
						else 
							VisibleCham.Visible = false 
							WallCham.Visible = false 
						end 
					else 
						VisibleCham.Visible = false 
						WallCham.Visible = false 
					end 

					INSERT(ChamItems, VisibleCham) 
					INSERT(ChamItems, WallCham) 

					VisibleCham.Color3 = values.visuals.players.chams.Color 
					WallCham.Color3 = values.visuals.players["outline chams"].Color 

					VisibleCham.AdornCullingMode = "Never" 
					WallCham.AdornCullingMode = "Never" 

					VisibleCham.Adornee = obj 
					VisibleCham.Parent = obj 

					WallCham.Adornee = obj 
					WallCham.Parent = obj 
				end 
			end 
		end 
	end) 
	if Player.Character ~= nil and Player.Character:FindFirstChild("UpperTorso") then 
		local Value = Instance.new("Vector3Value") 
		Value.Name = "OldPosition" 
		Value.Value = Player.Character.HumanoidRootPart.Position 
		Value.Parent = Player.Character.HumanoidRootPart 
		for _,obj in next, Player.Character:GetChildren() do 
			CollisionTBL(obj) 
			if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
				local VisibleCham = Instance.new("BoxHandleAdornment") 
				VisibleCham.Name = "VisibleCham" 
				VisibleCham.AlwaysOnTop = true 
				VisibleCham.ZIndex = 5 
				VisibleCham.Size = obj.Size + Vector3.new(0.1,0.1,0.1) 
				VisibleCham.AlwaysOnTop = true 
				VisibleCham.Transparency = values.visuals.players.chams.Transparency 

				local WallCham = Instance.new("BoxHandleAdornment") 
				WallCham.Name = "WallCham" 
				WallCham.AlwaysOnTop = true 
				WallCham.ZIndex = -1 
				WallCham.Size = obj.Size + Vector3.new(0.3,0.3,0.3)
				WallCham.AlwaysOnTop = true 
				WallCham.Transparency = values.visuals.players["outline chams"].Transparency

				if values.visuals.players.chams.Toggle then 
					if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then 
						VisibleCham.Visible = true 
						WallCham.Visible = true 
					else 
						VisibleCham.Visible = false 
						WallCham.Visible = false 
					end 
				else 
					VisibleCham.Visible = false 
					WallCham.Visible = false 
				end 

				INSERT(ChamItems, VisibleCham) 
				INSERT(ChamItems, WallCham) 

				VisibleCham.Color3 = values.visuals.players.chams.Color 
				VisibleCham.Transparency = values.visuals.players.chams.Transparency
				WallCham.Color3 = values.visuals.players["outline chams"].Color 
				WallCham.Transparency = values.visuals.players["outline chams"].Transparency

				VisibleCham.AdornCullingMode = "Never" 
				WallCham.AdornCullingMode = "Never" 

				VisibleCham.Adornee = obj 
				VisibleCham.Parent = obj 

				WallCham.Adornee = obj 
				WallCham.Parent = obj 
			end 
		end 
	end 
end 

        local SpectatorsList = Instance.new("ScreenGui")
		local Spectators = Instance.new("Frame")
		local Container = Instance.new("Frame")
		local UIPadding = Instance.new("UIPadding")
		local Text = Instance.new("TextLabel")
		local Players = Instance.new("TextLabel")

SpectatorsList.Parent = game.CoreGui
SpectatorsList.Name = "SpectatorsList"

Spectators.Name = "Spectators"
Spectators.Parent = SpectatorsList
Spectators.Active = true
Spectators.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Spectators.BackgroundTransparency = 1.000
Spectators.BorderColor3 = Color3.fromRGB(30, 115, 255)
Spectators.Position = UDim2.new(0, 1, 0.400000006, 49)
Spectators.Size = UDim2.new(0, 200, 0, 20)

Container.Name = "Container"
Container.Parent = Spectators
Container.BackgroundTransparency = 1.000
Container.BorderSizePixel = 0
Container.Size = UDim2.new(0, 200, 0, 20)
Container.ZIndex = 3

UIPadding.Parent = Container
UIPadding.PaddingLeft = UDim.new(0, 4)

Text.Name = "Text"
Text.Parent = Container
Text.BackgroundTransparency = 1.000
Text.Size = UDim2.new(0, 200, 0, 20)
Text.ZIndex = 4
Text.Font = Enum.Font.Code
Text.Text = "spectators"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 15.000
Text.TextStrokeTransparency = 0.000
Text.TextXAlignment = Enum.TextXAlignment.Left

Players.Name = "Players"
Players.Parent = Container
Players.BackgroundTransparency = 1.000
Players.Position = UDim2.new(0, 0, 0.992999971, 0)
Players.Size = UDim2.new(0, 200, 0, 20)
Players.ZIndex = 4
Players.Font = Enum.Font.Code
Players.Text = ""
Players.TextColor3 = Color3.fromRGB(255, 255, 255)
Players.TextSize = 14.000
Players.TextStrokeTransparency = 0.000
Players.TextXAlignment = Enum.TextXAlignment.Left
Players.TextYAlignment = Enum.TextYAlignment.Top
		function GetSpectators()
			local CurrentSpectators = ""
			for i,v in next, game.Players:GetChildren() do 
				pcall(function()
					if v ~= game.Players.LocalPlayer then
						if not v.Character then 
							if (v.CameraCF.Value.p - game.Workspace.CurrentCamera.CFrame.p).Magnitude < 10 then 
								if CurrentSpectators == "" then
									CurrentSpectators = v.Name
								else
									CurrentSpectators = CurrentSpectators.. "\n" ..v.Name
								end
							end
						end
					end
				end)
			end
			return CurrentSpectators
		end

		spawn(function()
			while wait(0.2) do
				if SpectatorsList.Enabled then
					Players.Text = GetSpectators()
				end
			end
		end)

		local function SCUAM_fake_script()
			local script = Instance.new('LocalScript', Spectators)
			local gui = script.Parent
			gui.Draggable = false
			gui.Active = true
		end
		coroutine.wrap(SCUAM_fake_script)()
game.CoreGui.SpectatorsList.Enabled = false