	getgenv().values = {}
	local library = {}
	local Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
	--local Api = loadstring(game:HttpGet("https://pastebin.com/raw/5L3wV43u"))()
	local ConfigSave = Signal.new("ConfigSave")
	local ConfigLoad = Signal.new("ConfigLoad")
	local txt = game:GetService("TextService")
	local TweenService = game:GetService("TweenService")
	function library:Tween(...) TweenService:Create(...):Play() end
	local cfglocation = "Saddcfg/"
	makefolder("Saddcfg")

	workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Disabled

	pcall(function()
		game:GetService("RunService").RenderStepped:Wait()
		for i,v in pairs(workspace["Ray_Ignore"]:GetChildren()) do
			if v.Name == "MagDrop" then
				v:Destroy()
			end
		
	end

	end)    



	function rgbtotbl(rgb)
		return {R = rgb.R, G = rgb.G, B = rgb.B}
	end
	function tbltorgb(tbl)
		return Color3.new(tbl.R, tbl.G, tbl.B)
	end
	local function deepCopy(original)
		local copy = {}
		for k, v in pairs(original) do
			if type(v) == "table" then
				v = deepCopy(v)
			end
			copy[k] = v
		end
		return copy	
	end
	function library:ConfigFix(cfg)
		local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg..".txt"))
		for i,Tabs in pairs(copy) do
			for i,Sectors in pairs(Tabs) do
				for i,Elements in pairs(Sectors) do
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
		for i,Tabs in pairs(copy) do
			for i,Sectors in pairs(Tabs) do
				for i,Elements in pairs(Sectors) do
					if Elements.Color ~= nil then
						Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B}
					end
				end
			end
		end
		writefile(cfglocation..cfg..".txt", game:GetService("HttpService"):JSONEncode(copy))
	end

	function library:New(name)
		local menu = {}

		local MadHook = Instance.new("ScreenGui")
		local Menu = Instance.new("ImageLabel")
		local TextLabel = Instance.new("TextLabel")
		local TabButtons = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local Tabs = Instance.new("Frame")

		MadHook.Name = "MadHook"
		MadHook.ResetOnSpawn = false
		MadHook.ZIndexBehavior = "Global"
		MadHook.DisplayOrder = 420133769

		local but = Instance.new("TextButton")
		but.Modal = true
		but.Text = ""
		but.BackgroundTransparency = 1
		but.Parent = MadHook

		local cursor = Instance.new("ImageLabel")
		cursor.Name = "cursor"
		cursor.Parent = MadHook
		cursor.BackgroundTransparency = 1
		cursor.Size = UDim2.new(0, 64, 0, 64)
		cursor.Image = "rbxassetid://7543116323"
		cursor.ZIndex = 1000
		cursor.ImageColor3 = Color3.fromRGB(255,255,255)

		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer
		local Mouse = LocalPlayer:GetMouse()

		game:GetService("RunService").RenderStepped:connect(function()
			cursor.Visible = MadHook.Enabled
			cursor.Position = UDim2.new(0,Mouse.X-32,0,Mouse.Y-28)
		end)

		Menu.Name = "Menu"
		Menu.Parent = MadHook
		Menu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Menu.Position = UDim2.new(0.5, -300, 0.5, -300)
		Menu.Size = UDim2.new(0, 600, 0, 666)
		Menu.Image = "http://www.roblox.com/asset/?id=8457879610"

		library.uiopen = true

		game:GetService("UserInputService").InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.Insert or key.KeyCode == Enum.KeyCode.Delete then
				MadHook.Enabled = not MadHook.Enabled
				library.uiopen = MadHook.Enabled
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
			TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			TextLabel.BorderColor3 = Color3.fromRGB(223, 190, 117)
			TextLabel.Position = UDim2.new(0, 1, 0.300000012, 0)
			TextLabel.Size = UDim2.new(0, 200, 0, 19.35)
			TextLabel.ZIndex = 2
			TextLabel.Font = Enum.Font.GothamSemibold
			TextLabel.Text = "keybinds"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 12.750

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
				TextLabel.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(223, 190, 117)
				TextLabel.BorderSizePixel = 0
				TextLabel.Size = UDim2.new(0, 200, 0, 17.15)
				TextLabel.ZIndex = 2
				TextLabel.Font = Enum.Font.GothamSemibold
				TextLabel.Text = text
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 12.750
				TextLabel.TextStrokeTransparency = 0
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
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 7, 0, 0)
		TextLabel.Size = UDim2.new(0, 0, 0, 29)
		TextLabel.Size = UDim2.new(0, txt:GetTextSize(name, 15, Enum.Font.GothamSemibold, Vector2.new(700, TextLabel.AbsoluteSize.Y)).X, 0, 29)
		TextLabel.Font = Enum.Font.GothamSemibold
		TextLabel.Text = name
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 13.000
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left

		TabButtons.Name = "TabButtons"
		TabButtons.Parent = Menu
		TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtons.BackgroundTransparency = 1
		TabButtons.Position = UDim2.new(TextLabel.Size.X.Scale, TextLabel.Size.X.Offset+10, 0, 0)
		TabButtons.Size = UDim2.new(TextLabel.Size.X.Scale, 590-TextLabel.Size.X.Offset, 0, 29)

		UIListLayout.Parent = TabButtons
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

		Tabs.Name = "Tabs"
		Tabs.Parent = Menu
		Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tabs.BackgroundTransparency = 1.000
		Tabs.Position = UDim2.new(0, 0, 0, 32)
		Tabs.Size = UDim2.new(0, 600, 0, 568)

		local first = true
		local currenttab

		function menu:Tab(text)
			local tabname
			tabname = text
			local Tab = {}
			values[tabname] = {}

			local TextButton = Instance.new("TextButton")
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1
			TextButton.Size = UDim2.new(0, txt:GetTextSize(text, 15, Enum.Font.GothamSemibold, Vector2.new(700,700)).X+12, 1, 0)
			TextButton.Font = Enum.Font.GothamSemibold
			TextButton.Text = text
			TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextButton.TextSize = 13.000
			TextButton.Parent = TabButtons

			local TabGui = Instance.new("ScrollingFrame")
			local Left = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local Right = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")

			TabGui.Name = "TabGui"
			TabGui.Parent = Tabs
			TabGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabGui.BackgroundTransparency = 1.000
			TabGui.Size = UDim2.new(1, 0, 1, 0)
			TabGui.Visible = false

			Left.Name = "Left"
			Left.Parent = TabGui
			Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Left.BackgroundTransparency = 1.000
			Left.Position = UDim2.new(0, 15, 0, 11)
			Left.Size = UDim2.new(0, 279, 0, 543)

			UIListLayout.Parent = Left
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 10)

			Right.Name = "Right"
			Right.Parent = TabGui
			Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Right.BackgroundTransparency = 1.000
			Right.Position = UDim2.new(0, 303, 0, 11)
			Right.Size = UDim2.new(0, 279, 0, 543)

			UIListLayout_2.Parent = Right
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 10)

			if first then
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				currenttab = text
				TabGui.Visible = true
				first = false
			end

			TextButton.MouseButton1Down:Connect(function()
				if currenttab ~= text then
					for i,v in pairs(TabButtons:GetChildren()) do
						if v:IsA("TextButton") then
							library:Tween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
						end
					end
					for i,v in pairs(Tabs:GetChildren()) do
						v.Visible = false
					end
					library:Tween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
				Section.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Section.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Section.BorderSizePixel = 0
				Section.Size = UDim2.new(1, 0, 0, 33)

				SectionText.Name = "SectionText"
				SectionText.Parent = Section
				SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionText.BackgroundTransparency = 1.000
				SectionText.Position = UDim2.new(0, 7, 0, -12)
				SectionText.Size = UDim2.new(0, 270, 0, 19)
				SectionText.ZIndex = 2
				SectionText.Font = Enum.Font.GothamSemibold
				SectionText.Text = text
				SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionText.TextSize = 13.000
				SectionText.TextXAlignment = Enum.TextXAlignment.Left

				Inner.Name = "Inner"
				Inner.Parent = Section
				Inner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Inner.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Inner.BorderSizePixel = 0
				Inner.Position = UDim2.new(0, 1, 0, 1)
				Inner.Size = UDim2.new(1, -2, 1, -9)

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
				UIListLayout_2.Padding = UDim.new(0,4)

				local firs = true
				local selected
				function MSector:Tab(text)
					local tab = {}
					values[tabname][sectorname][text] = {}
					local tabtext = text

					local tabsize = UDim2.new(1, 0, 0, 44)

					local tab1 = Instance.new("Frame")
					local UIPadding = Instance.new("UIPadding")
					local UIListLayout = Instance.new("UIListLayout")
					local TextButton = Instance.new("TextButton")

					tab1.Name = text
					tab1.Parent = Inner
					tab1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					tab1.BorderColor3 = Color3.fromRGB(30, 30, 30)
					tab1.BorderSizePixel = 0
					tab1.Position = UDim2.new(0, 0, 0, 30)
					tab1.Size = UDim2.new(1, 0, 1, -21)
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
					TextButton.Size = UDim2.new(0, txt:GetTextSize(text, 14, Enum.Font.GothamSemibold, Vector2.new(700,700)).X + 2, 1, 0)
					TextButton.Font = Enum.Font.GothamSemibold
					TextButton.Text = text
					TextButton.TextColor3 = Color3.fromRGB(200, 200, 200)
					TextButton.TextSize = 12.000
					TextButton.Name = text

					TextButton.MouseButton1Down:Connect(function()
						for i,v in pairs(Inner:GetChildren()) do
							v.Visible = false
						end
						for i,v in pairs(sectiontabs:GetChildren()) do
							if v:IsA("TextButton") then
								library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end
						end
						Section.Size = tabsize
						tab1.Visible = true
						library:Tween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
							Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
							TextLabel.Position = UDim2.new(0, 5, 0, 0)
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = "..."
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local abcd = TextLabel
		
							Drop.Name = "Drop"
							Drop.Parent = Button
							Drop.Active = true
							Drop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Drop.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Drop.Position = UDim2.new(0, 0, 1, 1)
							Drop.Size = UDim2.new(1, 0, 0, 20)
							Drop.Visible = false
							Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
							Drop.ScrollBarThickness = 4
							Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.AutomaticCanvasSize = "Y"
							Drop.ZIndex = 5
							Drop.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)
		
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
								for i,v in ipairs(data.options) do
									if table.find(Element.value.Jumbobox, v) then
										table.insert(old, v)
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
										for i,v in ipairs(old) do
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
							for i,v in ipairs(data.options) do
								do
									local Button = Instance.new("TextButton")
									local TextLabel = Instance.new("TextLabel")
		
									Button.Name = v
									Button.Parent = Drop
									Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
									Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
									Button.Position = UDim2.new(0, 30, 0, 16)
									Button.Size = UDim2.new(0, 175, 0, 17)
									Button.AutoButtonColor = false
									Button.Font = Enum.Font.GothamSemibold
									Button.Text = ""
									Button.TextColor3 = Color3.fromRGB(0, 0, 0)
									Button.TextSize = 12.000
									Button.BorderSizePixel = 0
									Button.ZIndex = 6
		
									TextLabel.Parent = Button
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
									TextLabel.Position = UDim2.new(0, 5, 0, -1)
									TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
									TextLabel.Font = Enum.Font.GothamSemibold
									TextLabel.Text = v
									TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
									TextLabel.TextSize = 12.000
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left
									TextLabel.ZIndex = 6
		
									Button.MouseButton1Down:Connect(function()
										if table.find(Element.value.Jumbobox, v) then
											for i,a in pairs(Element.value.Jumbobox) do
												if a == v then
													table.remove(Element.value.Jumbobox, i)
												end
											end
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
										else
											table.insert(Element.value.Jumbobox, v)
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
										end
										updatetext()
		
										values[tabname][sectorname][tabtext][text] = Element.value
										callback(Element.value)
									end)
									Button.MouseEnter:Connect(function()
										if not table.find(Element.value.Jumbobox, v) then
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
										end
									end)
									Button.MouseLeave:Connect(function()
										if not table.find(Element.value.Jumbobox, v) then
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
										end
									end)
		
									first = false
								end
							end
							function Element:SetValue(val)
								Element.value = val
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name ~= "UIListLayout" then
										if table.find(val.Jumbobox, v.Name) then
											v.TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
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
							TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel_3.BackgroundTransparency = 1.000
							TextLabel_3.Position = UDim2.new(0, 32, 0, -1)
							TextLabel_3.Size = UDim2.new(0.111913361, 208, 0.382215232, 0)
							TextLabel_3.Font = Enum.Font.GothamSemibold
							TextLabel_3.Text = text
							TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel_3.TextSize = 12.000
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
						elseif type == "TextBox" then
							
						elseif type == "ToggleKeybind" then
							tabsize = tabsize + UDim2.new(0,0,0,16)
							Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}
		
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
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							Color.Name = "Color"
							Color.Parent = Button
							Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Color.Position = UDim2.new(0, 15, 0.5, -5)
							Color.Size = UDim2.new(0, 8, 0, 8)
							local binding = false
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.Position = UDim2.new(0, 32, 0, -1)
							TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local function update()
								if Element.value.Toggle then
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								else
									keybindremove(text)
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end
		
							Button.MouseButton1Down:Connect(function()
								if not binding then
									Element.value.Toggle = not Element.value.Toggle
									update()
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end
							end)
							if data.default then
								update()
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							do
								local Keybind = Instance.new("TextButton")
								local Frame = Instance.new("Frame")
								local Always = Instance.new("TextButton")
								local UIListLayout = Instance.new("UIListLayout")
								local Hold = Instance.new("TextButton")
								local Toggle = Instance.new("TextButton")
		
								Keybind.Name = "Keybind"
								Keybind.Parent = Button
								Keybind.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Keybind.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Keybind.Position = UDim2.new(0, 270, 0.5, -6)
								Keybind.Text = "NONE"
								Keybind.Size = UDim2.new(0, 43, 0, 12)
								Keybind.Size = UDim2.new(0,txt:GetTextSize("NONE", 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 5,0, 12)
								Keybind.AutoButtonColor = false
								Keybind.Font = Enum.Font.GothamSemibold
								Keybind.TextColor3 = Color3.fromRGB(200, 200, 200)
								Keybind.TextSize = 12.000
								Keybind.AnchorPoint = Vector2.new(1,0)
								Keybind.ZIndex = 3
		
								Frame.Parent = Keybind
								Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Frame.Position = UDim2.new(1, -49, 0, 1)
								Frame.Size = UDim2.new(0, 49, 0, 49)
								Frame.Visible = false
								Frame.ZIndex = 3
		
								Always.Name = "Always"
								Always.Parent = Frame
								Always.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Always.BackgroundTransparency = 1.000
								Always.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Always.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
								Always.Size = UDim2.new(1, 0, 0, 16)
								Always.AutoButtonColor = false
								Always.Font = Enum.Font.GothamSemibold
								Always.Text = "Always"
								Always.TextColor3 = Color3.fromRGB(223, 190, 117)
								Always.TextSize = 12.000
								Always.ZIndex = 3
		
								UIListLayout.Parent = Frame
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
								Hold.Name = "Hold"
								Hold.Parent = Frame
								Hold.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Hold.BackgroundTransparency = 1.000
								Hold.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Hold.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
								Hold.Size = UDim2.new(1, 0, 0, 16)
								Hold.AutoButtonColor = false
								Hold.Font = Enum.Font.GothamSemibold
								Hold.Text = "Hold"
								Hold.TextColor3 = Color3.fromRGB(200, 200, 200)
								Hold.TextSize = 12.000
								Hold.ZIndex = 3
		
								Toggle.Name = "Toggle"
								Toggle.Parent = Frame
								Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Toggle.BackgroundTransparency = 1.000
								Toggle.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Toggle.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
								Toggle.Size = UDim2.new(1, 0, 0, 16)
								Toggle.AutoButtonColor = false
								Toggle.Font = Enum.Font.GothamSemibold
								Toggle.Text = "Toggle"
								Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
								Toggle.TextSize = 12.000
								Toggle.ZIndex = 3
		
								for _,button in pairs(Frame:GetChildren()) do
									if button:IsA("TextButton") then
										button.MouseButton1Down:Connect(function()
											Element.value.Type = button.Text
											Frame.Visible = false
											Element.value.Active = Element.value.Type == "Always" and true or false
											if Element.value.Type == "Always" then
												keybindremove(text)
											end
											for _,button in pairs(Frame:GetChildren()) do
												if button:IsA("TextButton") and button.Text ~= Element.value.Type then
													button.Font = Enum.Font.GothamSemibold
													library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
												end
											end
											button.Font = Enum.Font.GothamSemibold
											button.TextColor3 = Color3.fromRGB(223, 190, 117)
											values[tabname][sectorname][tabtext][text] = Element.value
											callback(Element.value)
										end)
										button.MouseEnter:Connect(function()
											if Element.value.Type ~= button.Text then
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
										Keybind.Size = UDim2.new(0,txt:GetTextSize("...", 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 4,0, 12)
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
										Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 5,0, 12)
										Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
										if input.KeyCode.Name == "Backspace" then
											Keybind.Text = "NONE"
											Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 4,0, 12)
											Element.value.Key = nil
										end
									else
										if Element.value.Key ~= nil then
											if string.find(Element.value.Key, "Mouse") then
												if input.UserInputType == Enum.UserInputType[Element.value.Key] then
													if Element.value.Type == "Hold" then
														Element.value.Active = true
														if Element.value.Active and Element.value.Toggle then
															keybindadd(text)
														else
															keybindremove(text)
														end
													elseif Element.value.Type == "Toggle" then
														Element.value.Active = not Element.value.Active
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
														if Element.value.Active and Element.value.Toggle then
															keybindadd(text)
														else
															keybindremove(text)
														end
													elseif Element.value.Type == "Toggle" then
														Element.value.Active = not Element.value.Active
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
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end)
								game:GetService("UserInputService").InputEnded:Connect(function(input)
									if Element.value.Key ~= nil then
										if string.find(Element.value.Key, "Mouse") then
											if input.UserInputType == Enum.UserInputType[Element.value.Key] then
												if Element.value.Type == "Hold" then
													Element.value.Active = false
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
													Element.value.Active = false
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												end
											end
										end
									end
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end)
							end
							function Element:SetValue(value)
								Element.value = value
								update()
							end
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
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							Color.Name = "Color"
							Color.Parent = Button
							Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Color.Position = UDim2.new(0, 15, 0.5, -5)
							Color.Size = UDim2.new(0, 8, 0, 8)
		
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.Position = UDim2.new(0, 32, 0, -1)
							TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local function update()
								if Element.value.Toggle then
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								else
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
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
						elseif type == "ToggleColor" then
							tabsize = tabsize + UDim2.new(0,0,0,16)
							Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255)}
		
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
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							Color.Name = "Color"
							Color.Parent = Button
							Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Color.Position = UDim2.new(0, 15, 0.5, -5)
							Color.Size = UDim2.new(0, 8, 0, 8)
		
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.Position = UDim2.new(0, 32, 0, -1)
							TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local function update()
								if Element.value.Toggle then
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								else
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
								values[tabname][sectorname][tabtext][text] = Element.value
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
							ColorP.BorderColor3 = Color3.fromRGB(30, 30, 30)
							ColorP.Position = UDim2.new(0, 270, 0.5, -4)
							ColorP.Size = UDim2.new(0, 18, 0, 8)
							ColorP.AutoButtonColor = false
							ColorP.Font = Enum.Font.GothamSemibold
							ColorP.Text = ""
							ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
							ColorP.TextSize = 12.000
		
							Frame.Parent = ColorP
							Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
							Frame.Size = UDim2.new(0, 200, 0, 170)
							Frame.Visible = false
							Frame.ZIndex = 3
		
							Colorpick.Name = "Colorpick"
							Colorpick.Parent = Frame
							Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Colorpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
							ColorDrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
							ColorDrag.Size = UDim2.new(0, 4, 0, 4)
							ColorDrag.ZIndex = 3
		
							Huepick.Name = "Huepick"
							Huepick.Parent = Frame
							Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Huepick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
							Huedrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
		
							if data.default.Color ~= nil then
								ColorH, ColorS, ColorV = data.default.Color:ToHSV()
		
								ColorH = math.clamp(ColorH,0,1)
								ColorS = math.clamp(ColorS,0,1)
								ColorV = math.clamp(ColorV,0,1)
								ColorDrag.Position = UDim2.new(1-ColorS,0,1-ColorV,0)
								Colorpick.ImageColor3 = Color3.fromHSV(ColorH, 1, 1)
		
								ColorP.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
								Huedrag.Position = UDim2.new(0, 0, 1-ColorH, -1)
							end
		
							local mouse = game:GetService("Players").LocalPlayer:GetMouse()
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
								values[tabname][sectorname][tabtext][text] = Element.value
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
								values[tabname][sectorname][tabtext][text] = Element.value
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
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							if data.default then
								update()
							end
							values[tabname][sectorname][tabtext][text] = Element.value
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
						elseif type == "ToggleTrans" then
							tabsize = tabsize + UDim2.new(0,0,0,16)
							Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or Color3.fromRGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}
		
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
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							Color.Name = "Color"
							Color.Parent = Button
							Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Color.Position = UDim2.new(0, 15, 0.5, -5)
							Color.Size = UDim2.new(0, 8, 0, 8)
		
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.Position = UDim2.new(0, 32, 0, -1)
							TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local function update()
								if Element.value.Toggle then
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
								else
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
								values[tabname][sectorname][tabtext][text] = Element.value
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
							ColorP.BorderColor3 = Color3.fromRGB(30, 30, 30)
							ColorP.Position = UDim2.new(0, 270, 0.5, -4)
							ColorP.Size = UDim2.new(0, 18, 0, 8)
							ColorP.AutoButtonColor = false
							ColorP.Font = Enum.Font.GothamSemibold
							ColorP.Text = ""
							ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
							ColorP.TextSize = 12.000
		
							Frame.Parent = ColorP
							Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
							Frame.Size = UDim2.new(0, 200, 0, 190)
							Frame.Visible = false
							Frame.ZIndex = 3
		
							Colorpick.Name = "Colorpick"
							Colorpick.Parent = Frame
							Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Colorpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
							ColorDrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
							ColorDrag.Size = UDim2.new(0, 4, 0, 4)
							ColorDrag.ZIndex = 3
		
							Huepick.Name = "Huepick"
							Huepick.Parent = Frame
							Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Huepick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
							Huedrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Huedrag.Size = UDim2.new(1, 0, 0, 2)
							Huedrag.ZIndex = 3
		
							local Transpick = Instance.new("ImageButton")
							local Transcolor = Instance.new("ImageLabel")
							local Transdrag = Instance.new("Frame")
		
							Transpick.Name = "Transpick"
							Transpick.Parent = Frame
							Transpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Transpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
							Transdrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
		
							if data.default.Color ~= nil then
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
							if data.default.Transparency ~= nil then
								Transdrag.Position = UDim2.new(data.default.Transparency, -1, 0, 0)
							end
							local mouse = game:GetService("Players").LocalPlayer:GetMouse()
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
								values[tabname][sectorname][tabtext][text] = Element.value
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
								values[tabname][sectorname][tabtext][text] = Element.value
								Element.value.Color = Color3.fromHSV(ColorH, ColorS, ColorV)
								callback(Element.value)
							end
							local function updateTrans()
								local x = math.clamp(mouse.X - Transpick.AbsolutePosition.X, 0, 178)
								Transdrag.Position = UDim2.new(0, x, 0, 0)
								Element.value.Transparency = (x/178)
								values[tabname][sectorname][tabtext][text] = Element.value
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
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							if data.default then
								update()
							end
							values[tabname][sectorname][tabtext][text] = Element.value
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
							Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000
		
							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
							TextLabel.Position = UDim2.new(0, 5, 0, 0)
							TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = Element.value.Dropdown
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							local abcd = TextLabel
		
							Drop.Name = "Drop"
							Drop.Parent = Button
							Drop.Active = true
							Drop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Drop.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Drop.Position = UDim2.new(0, 0, 1, 1)
							Drop.Size = UDim2.new(1, 0, 0, 20)
							Drop.Visible = false
							Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
							Drop.ScrollBarThickness = 4
							Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
							Drop.AutomaticCanvasSize = "Y"
							Drop.ZIndex = 5
							Drop.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)
		
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
							for i,v in ipairs(data.options) do
								do
									local Button = Instance.new("TextButton")
									local TextLabel = Instance.new("TextLabel")
		
									Button.Name = v
									Button.Parent = Drop
									Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
									Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
									Button.Position = UDim2.new(0, 30, 0, 16)
									Button.Size = UDim2.new(0, 175, 0, 17)
									Button.AutoButtonColor = false
									Button.Font = Enum.Font.GothamSemibold
									Button.Text = ""
									Button.TextColor3 = Color3.fromRGB(0, 0, 0)
									Button.TextSize = 12.000
									Button.BorderSizePixel = 0
									Button.ZIndex = 6
		
									TextLabel.Parent = Button
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
									TextLabel.Position = UDim2.new(0, 5, 0, -1)
									TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
									TextLabel.Font = Enum.Font.GothamSemibold
									TextLabel.Text = v
									TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
									TextLabel.TextSize = 12.000
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
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(223, 190, 117)})
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
							TextLabel_3.Font = Enum.Font.GothamSemibold
							TextLabel_3.Text = text
							TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel_3.TextSize = 12.000
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
		
							tabsize = tabsize + UDim2.new(0,0,0,25)
		
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
							TextLabel.Size = UDim2.new(0, 100, 0, 15)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		
							Button.Name = "Button"
							Button.Parent = Slider
							Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Button.Position = UDim2.new(0, 30, 0, 15)
							Button.Size = UDim2.new(0, 175, 0, 5)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 112.000
		
							Frame.Parent = Button
							Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Frame.BorderSizePixel = 0
							Frame.Size = UDim2.new(0.5, 0, 1, 0)
		
							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(223, 190, 117)), ColorSequenceKeypoint.new(1, Color3.fromRGB(223, 190, 117))}
							UIGradient.Rotation = 90
							UIGradient.Parent = Frame
		
							Value.Name = "Value"
							Value.Parent = Slider
							Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Value.BackgroundTransparency = 1.000
							Value.Position = UDim2.new(0, 150, 0, -1)
							Value.Size = UDim2.new(0, 55, 0, 15)
							Value.Font = Enum.Font.GothamSemibold
							Value.Text = "50"
							Value.TextColor3 = Color3.fromRGB(200, 200, 200)
							Value.TextSize = 12.000
							Value.TextXAlignment = Enum.TextXAlignment.Right
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
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
								Value.Text = val
								Element.value.Slider = val
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
								moveconnection = mouse.Move:Connect(function()
									Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
									val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
									Value.Text = val
									Element.value.Slider = val
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end)
								releaseconnection = uis.InputEnded:Connect(function(Mouse)
									if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
										Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
										val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
										values[tabname][sectorname][tabtext][text] = Element.value
										callback(Element.value)
										moveconnection:Disconnect()
										releaseconnection:Disconnect()
									end
								end)
							end)
						elseif type == "Button" then
		
							tabsize = tabsize + UDim2.new(0,0,0,24)
							local Button = Instance.new("Frame")
							local Button_2 = Instance.new("TextButton")
							local TextLabel = Instance.new("TextLabel")
		
							Button.Name = "Button"
							Button.Parent = tab1
							Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							Button.BackgroundTransparency = 1.000
							Button.Position = UDim2.new(0, 0, 0.236059487, 0)
							Button.Size = UDim2.new(1, 0, 0, 24)
		
							Button_2.Name = "Button"
							Button_2.Parent = Button
							Button_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Button_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Button_2.Position = UDim2.new(0, 30, 0.5, -9)
							Button_2.Size = UDim2.new(0, 175, 0, 18)
							Button_2.AutoButtonColor = false
							Button_2.Font = Enum.Font.GothamSemibold
							Button_2.Text = ""
							Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button_2.TextSize = 12.000
		
							TextLabel.Parent = Button_2
							TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
							TextLabel.Size = UDim2.new(1, 0, 1, 0)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = text
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
		
							function Element:SetValue()
							end
		
							Button_2.MouseButton1Down:Connect(function()
								TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
								library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								callback()
							end)
							Button_2.MouseEnter:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
							end)
							Button_2.MouseLeave:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							end)
						end
						ConfigLoad:Connect(function(cfg)
							local fix = library:ConfigFix(cfg)
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
				Section.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Section.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Section.BorderSizePixel = 0
				Section.Position = UDim2.new(0.00358422939, 0, 0, 0)
				Section.Size = UDim2.new(1, 0, 0, 22)

				SectionText.Name = "SectionText"
				SectionText.Parent = Section
				SectionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionText.BackgroundTransparency = 1.000
				SectionText.Position = UDim2.new(0, 7, 0, -12)
				SectionText.Size = UDim2.new(0, 270, 0, 19)
				SectionText.ZIndex = 2
				SectionText.Font = Enum.Font.GothamSemibold
				SectionText.Text = text
				SectionText.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionText.TextSize = 13.000
				SectionText.TextXAlignment = Enum.TextXAlignment.Left

				Inner.Name = "Inner"
				Inner.Parent = Section
				Inner.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Inner.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Inner.BorderSizePixel = 0
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

						for i,v in pairs(data.options) do
							Element.value.Scroll[i] = v[1]
						end

						local joe = {}
						if data.alphabet then
							local copy = {}
							for i,v in pairs(data.options) do
								table.insert(copy, i)
							end
							table.sort(copy, function(a,b)
								return a < b
							end)
							joe = copy
						else
							for i,v in pairs(data.options) do
								table.insert(joe, i)
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
						Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						local TextLabel = Instance.new("TextLabel")

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
						TextLabel.Position = UDim2.new(0, 5, 0, 0)
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = "lol"
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local abcd = TextLabel

						Drop.Name = "Drop"
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Drop.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Drop.Position = UDim2.new(0, 0, 1, 1)
						Drop.Size = UDim2.new(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
						Drop.ScrollBarThickness = 4
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.AutomaticCanvasSize = "Y"
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)

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
						for i,v in ipairs(joe) do
							do
								local joell = v
								local Scroll = Instance.new("Frame")
								local joe2 = data.options[v]
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")

								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.GothamSemibold
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 12.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
								TextLabel.Position = UDim2.new(0, 5, 0, -1)
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.GothamSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 12.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6

								Button.MouseButton1Down:Connect(function()
									Drop.Visible = false
									Drop.CanvasPosition = Vector2.new(0,0)
									abcd.Text = v
									for i,v in pairs(Scroll.Parent:GetChildren()) do
										if v:IsA("Frame") then
											v.Visible = false
										end
									end
									Element.value.Dropdown = v
									Scroll.Visible = true
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(223, 190, 117)})
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
								Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Frame.Position = UDim2.new(0, 30, 0, 40)
								Frame.Size = UDim2.new(0, 175, 0, 16 * amount)
								Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
								Frame.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
								Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"
								Frame.ScrollBarThickness = 4
								Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"
								Frame.AutomaticCanvasSize = "Y"
								Frame.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)

								UIListLayout.Parent = Frame
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
								local joll = true
								for i,v in ipairs(joe2) do
									local Button = Instance.new("TextButton")
									local TextLabel = Instance.new("TextLabel")

									Button.Name = v
									Button.Parent = Frame
									Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
									Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
									Button.BorderSizePixel = 0
									Button.Position = UDim2.new(0, 30, 0, 16)
									Button.Size = UDim2.new(1, 0, 0, 16)
									Button.AutoButtonColor = false
									Button.Font = Enum.Font.GothamSemibold
									Button.Text = ""
									Button.TextColor3 = Color3.fromRGB(0, 0, 0)
									Button.TextSize = 12.000

									TextLabel.Parent = Button
									TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									TextLabel.BackgroundTransparency = 1.000
									TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
									TextLabel.Position = UDim2.new(0, 4, 0, -1)
									TextLabel.Size = UDim2.new(1, 1, 1, 1)
									TextLabel.Font = Enum.Font.GothamSemibold
									TextLabel.Text = v
									TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
									TextLabel.TextSize = 12.000
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left
									if joll then
										joll = false
										TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
									end

									Button.MouseButton1Down:Connect(function()

										for i,v in pairs(Frame:GetChildren()) do
											if v:IsA("TextButton") then
												library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
											end
										end

										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})

										Element.value.Scroll[joell] = v

										values[tabname][sectorname][text] = Element.value
										callback(Element.value)
									end)
									Button.MouseEnter:Connect(function()
										if Element.value.Scroll[joell] ~= v then
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
						TextLabel_3.Font = Enum.Font.GothamSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel_3.TextSize = 12.000
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
							for i,v in pairs(Dropdown:GetChildren()) do
								if v:IsA("Frame") then
									if v.Name == Element.value.Dropdown then
										v.Visible = true
									else
										v.Visible = false
									end
									for _,bad in pairs(v.Frame:GetChildren()) do
										if bad:IsA("TextButton") then
											bad.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
											if bad.Name == Element.value.Scroll[v.Name] then
												bad.TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
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
						Scroll.Position = UDim2.new(0, 0, 0, 0)
						Scroll.Size = UDim2.new(1, 0, 0, amount * 16 + 8)


						Frame.Name = "Frame"
						Frame.Parent = Scroll
						Frame.Active = true
						Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Frame.Position = UDim2.new(0, 30, 0, 0)
						Frame.Size = UDim2.new(0, 175, 0, 16 * amount)
						Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Frame.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
						Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Frame.ScrollBarThickness = 4
						Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Frame.AutomaticCanvasSize = "Y"
						Frame.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)

						UIListLayout.Parent = Frame
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						local first = true
						for i,v in ipairs(data.options) do
							local Button = Instance.new("TextButton")
							local TextLabel = Instance.new("TextLabel")

							Button.Name = v
							Button.Parent = Frame
							Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Button.BorderSizePixel = 0
							Button.Position = UDim2.new(0, 30, 0, 16)
							Button.Size = UDim2.new(1, 0, 0, 16)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.GothamSemibold
							Button.Text = ""
							Button.TextColor3 = Color3.fromRGB(0, 0, 0)
							Button.TextSize = 12.000

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
							TextLabel.Position = UDim2.new(0, 4, 0, -1)
							TextLabel.Size = UDim2.new(1, 1, 1, 1)
							TextLabel.Font = Enum.Font.GothamSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
							TextLabel.TextSize = 12.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							if first then first = false
								TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
							end

							Button.MouseButton1Down:Connect(function()

								for i,v in pairs(Frame:GetChildren()) do
									if v:IsA("TextButton") then
										library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
									end
								end

								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})

								Element.value.Scroll = v

								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
							end)
							Button.MouseEnter:Connect(function()
								if Element.value.Scroll ~= v then
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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

							for i,v in pairs(Frame:GetChildren()) do
								if v:IsA("TextButton") then
									library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
								end
							end

							library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
						Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDim2.new(0, 0, 0.255102038, 0)
						Dropdown.Size = UDim2.new(1, 0, 0, 39)

						Button.Name = "Button"
						Button.Parent = Dropdown
						Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
						TextLabel.Position = UDim2.new(0, 5, 0, 0)
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = "..."
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local abcd = TextLabel

						Drop.Name = "Drop"
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Drop.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Drop.Position = UDim2.new(0, 0, 1, 1)
						Drop.Size = UDim2.new(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
						Drop.ScrollBarThickness = 4
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.AutomaticCanvasSize = "Y"
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)

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
							for i,v in ipairs(data.options) do
								if table.find(Element.value.Jumbobox, v) then
									table.insert(old, v)
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
									for i,v in ipairs(old) do
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
						for i,v in ipairs(data.options) do
							do
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")

								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.GothamSemibold
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 12.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
								TextLabel.Position = UDim2.new(0, 5, 0, -1)
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.GothamSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 12.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6

								Button.MouseButton1Down:Connect(function()
									if table.find(Element.value.Jumbobox, v) then
										for i,a in pairs(Element.value.Jumbobox) do
											if a == v then
												table.remove(Element.value.Jumbobox, i)
											end
										end
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
									else
										table.insert(Element.value.Jumbobox, v)
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
									end
									updatetext()

									values[tabname][sectorname][text] = Element.value
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									if not table.find(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
									end
								end)
								Button.MouseLeave:Connect(function()
									if not table.find(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
									end
								end)

								first = false
							end
						end
						function Element:SetValue(val)
							Element.value = val
							for i,v in pairs(Drop:GetChildren()) do
								if v.Name ~= "UIListLayout" then
									if table.find(val.Jumbobox, v.Name) then
										v.TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
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
						TextLabel_3.Font = Enum.Font.GothamSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel_3.TextSize = 12.000
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
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)
						local binding = false
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								keybindremove(text)
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
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
							Keybind.Parent = Button
							Keybind.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Keybind.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Keybind.Position = UDim2.new(0, 270, 0.5, -6)
							Keybind.Text = "NONE"
							Keybind.Size = UDim2.new(0, 43, 0, 12)
							Keybind.Size = UDim2.new(0,txt:GetTextSize("NONE", 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 5,0, 12)
							Keybind.AutoButtonColor = false
							Keybind.Font = Enum.Font.GothamSemibold
							Keybind.TextColor3 = Color3.fromRGB(200, 200, 200)
							Keybind.TextSize = 12.000
							Keybind.AnchorPoint = Vector2.new(1,0)
							Keybind.ZIndex = 2

							Frame.Parent = Keybind
							Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Frame.Position = UDim2.new(1, -49, 0, 1)
							Frame.Size = UDim2.new(0, 49, 0, 49)
							Frame.Visible = false
							Frame.ZIndex = 2

							Always.Name = "Always"
							Always.Parent = Frame
							Always.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Always.BackgroundTransparency = 1.000
							Always.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Always.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Always.Size = UDim2.new(1, 0, 0, 16)
							Always.AutoButtonColor = false
							Always.Font = Enum.Font.GothamSemibold
							Always.Text = "Always"
							Always.TextColor3 = Color3.fromRGB(223, 190, 117)
							Always.TextSize = 12.000
							Always.ZIndex = 2

							UIListLayout.Parent = Frame
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

							Hold.Name = "Hold"
							Hold.Parent = Frame
							Hold.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Hold.BackgroundTransparency = 1.000
							Hold.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Hold.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Hold.Size = UDim2.new(1, 0, 0, 16)
							Hold.AutoButtonColor = false
							Hold.Font = Enum.Font.GothamSemibold
							Hold.Text = "Hold"
							Hold.TextColor3 = Color3.fromRGB(200, 200, 200)
							Hold.TextSize = 12.000
							Hold.ZIndex = 2

							Toggle.Name = "Toggle"
							Toggle.Parent = Frame
							Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
							Toggle.BackgroundTransparency = 1.000
							Toggle.BorderColor3 = Color3.fromRGB(30, 30, 30)
							Toggle.Position = UDim2.new(-3.03289485, 231, 0.115384616, -6)
							Toggle.Size = UDim2.new(1, 0, 0, 16)
							Toggle.AutoButtonColor = false
							Toggle.Font = Enum.Font.GothamSemibold
							Toggle.Text = "Toggle"
							Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
							Toggle.TextSize = 12.000
							Toggle.ZIndex = 2

							for _,button in pairs(Frame:GetChildren()) do
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
										for _,button in pairs(Frame:GetChildren()) do
											if button:IsA("TextButton") and button.Text ~= Element.value.Type then
												button.Font = Enum.Font.GothamSemibold
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200,200,200)})
											end
										end
										button.Font = Enum.Font.GothamSemibold
										button.TextColor3 = Color3.fromRGB(223, 190, 117)
										values[tabname][sectorname][text] = Element.value
									end)
									button.MouseEnter:Connect(function()
										if Element.value.Type ~= button.Text then
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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
									Keybind.Size = UDim2.new(0,txt:GetTextSize("...", 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 4,0, 12)
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
									Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 5,0, 12)
									Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
									if input.KeyCode.Name == "Backspace" then
										Keybind.Text = "NONE"
										Keybind.Size = UDim2.new(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.GothamSemibold, Vector2.new(700, 12)).X + 4,0, 12)
										Element.value.Key = nil
										Element.value.Active = true
									end
									callback(Element.value)
								else
									if Element.value.Key ~= nil then
										if string.find(Element.value.Key, "Mouse") then
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
									if string.find(Element.value.Key, "Mouse") then
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
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
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
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Color.BorderColor3 = Color3.fromRGB(20, 30, 30)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
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
						ColorP.BorderColor3 = Color3.fromRGB(27, 27, 35)
						ColorP.Position = UDim2.new(0, 270, 0.5, -4)
						ColorP.Size = UDim2.new(0, 18, 0, 8)
						ColorP.AutoButtonColor = false
						ColorP.Font = Enum.Font.GothamSemibold
						ColorP.Text = ""
						ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
						ColorP.TextSize = 12.000

						Frame.Parent = ColorP
						Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDim2.new(0, 200, 0, 170)
						Frame.Visible = false
						Frame.ZIndex = 3

						Colorpick.Name = "Colorpick"
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Colorpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
						ColorDrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
						ColorDrag.Size = UDim2.new(0, 4, 0, 4)
						ColorDrag.ZIndex = 3

						Huepick.Name = "Huepick"
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huepick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
						Huedrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
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

						local mouse = game:GetService("Players").LocalPlayer:GetMouse()
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
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						Color.Name = "Color"
						Color.Parent = Button
						Color.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Color.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Color.Position = UDim2.new(0, 15, 0.5, -5)
						Color.Size = UDim2.new(0, 8, 0, 8)

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -1)
						TextLabel.Size = UDim2.new(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(223, 190, 117)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)})
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
						ColorP.BorderColor3 = Color3.fromRGB(30, 30, 30)
						ColorP.Position = UDim2.new(0, 270, 0.5, -4)
						ColorP.Size = UDim2.new(0, 18, 0, 8)
						ColorP.AutoButtonColor = true
						ColorP.Font = Enum.Font.GothamSemibold
						ColorP.Text = ""
						ColorP.TextColor3 = Color3.fromRGB(200, 200, 200)
						ColorP.TextSize = 12.000

						Frame.Parent = ColorP
						Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Frame.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Frame.Position = UDim2.new(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDim2.new(0, 200, 0, 190)
						Frame.Visible = false
						Frame.ZIndex = 3

						Colorpick.Name = "Colorpick"
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Colorpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
						ColorDrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
						ColorDrag.Size = UDim2.new(0, 4, 0, 4)
						ColorDrag.ZIndex = 3

						Huepick.Name = "Huepick"
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Huepick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
						Huedrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Huedrag.Size = UDim2.new(1, 0, 0, 2)
						Huedrag.ZIndex = 3

						local Transpick = Instance.new("ImageButton")
						local Transcolor = Instance.new("ImageLabel")
						local Transdrag = Instance.new("Frame")

						Transpick.Name = "Transpick"
						Transpick.Parent = Frame
						Transpick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Transpick.BorderColor3 = Color3.fromRGB(30, 30, 30)
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
						Transdrag.BorderColor3 = Color3.fromRGB(30, 30, 30)
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

						if data.default.Color ~= nil then
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
						if data.default.Transparency ~= nil then
							Transdrag.Position = UDim2.new(data.default.Transparency, -1, 0, 0)
						end
						local mouse = game:GetService("Players").LocalPlayer:GetMouse()
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
						TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						TextBox.BorderColor3 = Color3.fromRGB(30, 30, 30)
						TextBox.Position = UDim2.new(0.108303241, 0, 0.224465579, 0)
						TextBox.Size = UDim2.new(0, 175, 0, 20)
						TextBox.Font = Enum.Font.GothamSemibold
						TextBox.PlaceholderText = data.placeholder
						TextBox.Text = Element.value.Text
						TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextBox.TextSize = 12.000

						values[tabname][sectorname][text] = Element.value

						TextBox:GetPropertyChangedSignal("Text"):Connect(function()
							if string.len(TextBox.Text) > 10 then
								TextBox.Text = string.sub(TextBox.Text, 1, 10)
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
						Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Button.Position = UDim2.new(0, 30, 0, 16)
						Button.Size = UDim2.new(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = Color3.fromRGB(223, 190, 117)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
						TextLabel.Position = UDim2.new(0, 5, 0, 0)
						TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = Element.value.Dropdown
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local abcd = TextLabel

						Drop.Name = "Drop"
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Drop.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Drop.Position = UDim2.new(0, 0, 1, 1)
						Drop.Size = UDim2.new(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.CanvasSize = UDim2.new(1.05, 1.05, 1.05, 1.05)
						Drop.ScrollBarThickness = 4
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"
						Drop.AutomaticCanvasSize = "Y"
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = Color3.fromRGB(223, 190, 117)

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
						for i,v in ipairs(data.options) do
							do
								local Button = Instance.new("TextButton")
								local TextLabel = Instance.new("TextLabel")

								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
								Button.BorderColor3 = Color3.fromRGB(30, 30, 30)
								Button.Position = UDim2.new(0, 30, 0, 16)
								Button.Size = UDim2.new(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.GothamSemibold
								Button.Text = ""
								Button.TextColor3 = Color3.fromRGB(0, 0, 0)
								Button.TextSize = 12.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
								TextLabel.Position = UDim2.new(0, 5, 0, -1)
								TextLabel.Size = UDim2.new(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.GothamSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
								TextLabel.TextSize = 12.000
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
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  Color3.fromRGB(223, 190, 117)})
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
						TextLabel_3.Font = Enum.Font.GothamSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel_3.TextSize = 12.000
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
					elseif type == "Slider" then

						Section.Size = Section.Size + UDim2.new(0,0,0,25)

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
						Slider.Size = UDim2.new(1, 0, 0, 25)

						TextLabel.Parent = Slider
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0, 32, 0, -2)
						TextLabel.Size = UDim2.new(0, 100, 0, 15)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						Button.Name = "Button"
						Button.Parent = Slider
						Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Button.BorderColor3 = Color3.fromRGB(20, 30, 30)
						Button.Position = UDim2.new(0, 30, 0, 15)
						Button.Size = UDim2.new(0, 175, 0, 5)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.GothamSemibold
						Button.Text = ""
						Button.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button.TextSize = 12.000

						Frame.Parent = Button
						Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Frame.BorderSizePixel = 0
						Frame.Size = UDim2.new(0.5, 0, 1, 0)

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(223, 190, 117)), ColorSequenceKeypoint.new(1, Color3.fromRGB(223, 190, 117))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Frame

						Value.Name = "Value"
						Value.Parent = Slider
						Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Value.BackgroundTransparency = 1.000
						Value.Position = UDim2.new(0, 150, 0, -1)
						Value.Size = UDim2.new(0, 55, 0, 15)
						Value.Font = Enum.Font.GothamSemibold
						Value.Text = "50"
						Value.TextColor3 = Color3.fromRGB(200, 200, 200)
						Value.TextSize = 12.000
						Value.TextXAlignment = Enum.TextXAlignment.Right
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
							Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
							val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
							Value.Text = val
							Element.value.Slider = val
							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
							moveconnection = mouse.Move:Connect(function()
								Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = math.floor((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
								Value.Text = val
								Element.value.Slider = val
								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
							end)
							releaseconnection = uis.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									Frame.Size = UDim2.new(0, math.clamp(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
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
						Button_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Button_2.BorderColor3 = Color3.fromRGB(30, 30, 30)
						Button_2.Position = UDim2.new(0, 30, 0.5, -9)
						Button_2.Size = UDim2.new(0, 175, 0, 18)
						Button_2.AutoButtonColor = false
						Button_2.Font = Enum.Font.GothamSemibold
						Button_2.Text = ""
						Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
						Button_2.TextSize = 12.000

						TextLabel.Parent = Button_2
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(30, 30, 30)
						TextLabel.Size = UDim2.new(1, 0, 1, 0)
						TextLabel.Font = Enum.Font.GothamSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
						TextLabel.TextSize = 12.000

						function Element:SetValue()
						end

						Button_2.MouseButton1Down:Connect(function()
							TextLabel.TextColor3 = Color3.fromRGB(223, 190, 117)
							library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(200, 200, 200)})
							callback()
						end)
						Button_2.MouseEnter:Connect(function()
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(223, 190, 117)})
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

					return Element
				end
				return Sector
			end

			return Tab
		end

		MadHook.Parent = game.CoreGui

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
	local Client = getsenv(LocalPlayer.PlayerGui.Client)

	repeat RunService.RenderStepped:Wait() until game:IsLoaded()
	Client.splatterBlood = function() end

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
	BodyVelocity.MaxForce = Vector3.new(100000, 0, 100000)
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
		["UpperTorso"] = 1.25,
		["LowerTorso"] = 1.25,
		["LeftUpperArm"] = 1.25,
		["LeftLowerArm"] = 1,
		["LeftHand"] = 1.25,
		["RightUpperArm"] = 1.25,
		["RightLowerArm"] = 1.25,
		["RightHand"] = 1.25,
		["LeftUpperLeg"] = 0.95,
		["LeftLowerLeg"] = 0.95,
		["LeftFoot"] = 0.95,
		["RightUpperLeg"] = 0.95,
		["RightLowerLeg"] = 0.95,
		["RightFoot"] = 0.95,
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
		["aesthetic"] = {
			SkyboxLf = "rbxassetid://1045964655",
			SkyboxBk = "rbxassetid://1045964490",
			SkyboxDn = "rbxassetid://1045964368",
			SkyboxFt = "rbxassetid://1045964655",
			SkyboxLf = "rbxassetid://1045964655",
			SkyboxRt = "rbxassetid://1045964655",
			SkyboxUp = "rbxassetid://1045962969",
		},
	}
	local oldSkybox
	local idk = false
	local too = nil
	local wtf = false

	local function VectorRGB(RGB)
		return Vector3.new(RGB.R, RGB.G, RGB.B)
	end
	local function new(name, prop)
		local obj = Instance.new(name)
		for i,v in pairs(prop) do
			if i ~= "Parent" then
				obj[i] = v
			end
		end
		if prop["Parent"] ~= nil then
			obj.Parent = prop["Parent"]
		end
	end
	local function UpdateSleeve(Sleeve)
		Sleeve.Material = values.visuals.effects["sleeve material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField"
		Sleeve.Mesh.VertexColor = VectorRGB(values.visuals.effects["sleeve chams"].Color)
		Sleeve.Color = values.visuals.effects["sleeve chams"].Color
		Sleeve.Transparency = values.visuals.effects["sleeve chams"].Transparency
		if values.visuals.effects["sleeve material"].Dropdown ~= "ForceField" then
			Sleeve.Mesh.TextureId = ""
		else
			Sleeve.Mesh.TextureId = "rbxassetid://420"
		end
	end
	local function UpdateGlove(Glove)
		Glove.Material = values.visuals.effects["glove material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField"
		Glove.Mesh.VertexColor = VectorRGB(values.visuals.effects["glove chams"].Color)
		Glove.Color = values.visuals.effects["glove chams"].Color
		Glove.Transparency = values.visuals.effects["glove chams"].Transparency
		if values.visuals.effects["glove material"].Dropdown ~= "ForceField" then
			Glove.Mesh.TextureId = ""
		else
			Glove.Mesh.TextureId = "rbxassetid://420"
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
		if obj:IsA("MeshPart") then obj.TextureID = "" end
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
	local function UpdateArm(Arm)
		local mat = values.visuals.effects["arm material"].Dropdown
		Arm.Material = mat == "Smooth" and "SmoothPlastic" or "ForceField"
		Arm.Mesh.VertexColor = VectorRGB(values.visuals.effects["arm chams"].Color)
		Arm.Color = values.visuals.effects["arm chams"].Color
		Arm.Transparency = values.visuals.effects["arm chams"].Transparency
		if mat ~= "ForceField" then
			Arm.Mesh.TextureId = ""
		else
			Arm.Mesh.TextureId = "rbxassetid://420"
		end
	end
	local function RevertArm(Arm)
		Arm.Material = "SmoothPlastic"
		Arm.Mesh.VertexColor = Vector3.new(1,1,1)
		Arm.Color = Arm.Color3Value.Value
		Arm.Transparency = 0
		Arm.Mesh.TextureId = ""
	end
	local Skins = ReplicatedStorage.Skins
	local function MapSkin(Gun, Skin, CustomSkin)
		if CustomSkin ~= nil then
			for _,Data in pairs(CustomSkin) do
				local Obj = Camera.Arms:FindFirstChild(Data.Name)
				if Obj ~= nil and Obj.Transparency ~= 1 then
					Obj.TextureId = Data.Value
				end
			end
		else
			local SkinData = Skins:FindFirstChild(Gun):FindFirstChild(Skin)
			if not SkinData:FindFirstChild("Animated") then
				for _,Data in pairs(SkinData:GetChildren()) do
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
		for _,Part in pairs (LocalPlayer.Character:GetChildren()) do
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

		for _,Part in pairs (NewCharacter:GetChildren()) do
			if Part:IsA("Accessory") then
				local Clone = Part:Clone()
				for _,Weld in pairs (Clone.Handle:GetChildren()) do
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

			if values.rage.others["remove clothes"].Toggle then
				LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate = ""
			end
		end
		if LocalPlayer.Character:FindFirstChildOfClass("Pants") then
			local String = Instance.new("StringValue")
			String.Name = "OriginalTexture"
			String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate
			String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants")

			if values.rage.others["remove clothes"].Toggle then
				LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate = ""
			end
		end
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and v.Transparency ~= 1 then
				table.insert(SelfObj, v)
				local Color = Instance.new("Color3Value")
				Color.Name = "OriginalColor"
				Color.Value = v.Color
				Color.Parent = v

				local String = Instance.new("StringValue")
				String.Name = "OriginalMaterial"
				String.Value = v.Material.Name
				String.Parent = v
			elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
				table.insert(SelfObj, v.Handle)
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
			for _,obj in pairs(SelfObj) do
				if obj.Parent ~= nil then
					obj.Material = Enum.Material.ForceField
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

	for i,v in pairs(Viewmodels:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then
			v.HumanoidRootPart.Transparency = 1
		end
	end

	local Models = game:GetObjects("rbxassetid://6708336356")[1]
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


	for _,fldr in pairs(Gloves:GetChildren()) do
		if fldr ~= GloveModels and fldr.Name ~= "Racer" then
			AllGloves[fldr.Name] = {}
			for _2,modl in pairs(fldr:GetChildren()) do
				table.insert(AllGloves[fldr.Name], modl.Name)
			end
		end
	end

	for i,v in pairs(Models.Knives:GetChildren()) do
		table.insert(AllKnives, v.Name)
	end

	local AllSkins = {}
	local AllWeapons = {}
	local AllCharacters = {}

	for i,v in pairs(ChrModels:GetChildren()) do
		table.insert(AllCharacters, v.Name)
	end


	for i,v in pairs(Skins:GetChildren()) do
		table.insert(AllWeapons, v.Name)
	end

	table.sort(AllWeapons, function(a,b)
		return a < b
	end)

	for i,v in ipairs(AllWeapons) do
		AllSkins[v] = {}
		table.insert(AllSkins[v], "Inventory")
		for _,v2 in pairs(Skins[v]:GetChildren()) do
			if not v2:FindFirstChild("Animated") then
				table.insert(AllSkins[v], v2.Name)
			end
		end
	end

	RunService.RenderStepped:Wait()

	local gui = library:New("Crispaste")
	local legit = gui:Tab("legit")
	local rage = gui:Tab("rage")
	local visuals = gui:Tab("visuals")
	local misc = gui:Tab("misc")
	local skins = gui:Tab("skins")

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

	local knife = skins:Sector("knife", "Left")
	knife:Element("Toggle", "knife changer")
	knife:Element("Scroll", "model", {options = AllKnives, Amount = 15, alphabet = true})

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
		Tab:Element("Slider", "field of view", {min = 0, max = 180, default = 90})
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
	local p = game.Players
	local lp = p.LocalPlayer
	local m = math.random
	local pa = Instance.new('Part', workspace)
	local settings = legit:Sector("settings", "Right")
	settings:Element("Toggle", "free for all")
	settings:Element("Toggle", "forcefield check")
	settings:Element("ToggleColor", "draw fov")
	local aimbot = rage:Sector("aimbot", "Left")
	aimbot:Element("Toggle", "enabled")
	aimbot:Element("Dropdown", "origin", {options = {"character", "camera"}})
	aimbot:Element("Toggle", "silent aim")
	aimbot:Element("Dropdown", "automatic fire", {options = {"off", "standard", "hitpart"}})
	aimbot:Element("Toggle", "automatic penetration")
	aimbot:Element("Jumbobox", "resolver", {options = {"pitch", "roll", 'Forward Track', 'Kill all', 'Mega Forward Track'}})
	aimbot:Element('Toggle', 'Front Trinking')
	aimbot:Element('Toggle', 'RT')
	aimbot:Element('Slider', 'RT slid', {min = 1, max = 5, default = nil})
	aimbot:Element('Toggle', 'Nasa')
	aimbot:Element('Toggle', 'Head Tp')
	aimbot:Element('Slider', 'ATW Z/X', {min = 1, max = 180, default = 180})
	aimbot:Element("Toggle", "force hit")
	aimbot:Element("Dropdown", "prediction", {options = {"off", "old pos", "velocity", "test"}})
	aimbot:Element("Toggle", "teammates")
	aimbot:Element("Toggle", "auto baim")
	aimbot:Element("Toggle", "knife bot")

	local weapons = rage:MSector("weapons", "Left")
	local default = weapons:Tab("default")
	local pistol = weapons:Tab("pistol")
	local rifle = weapons:Tab("rifle")
	local scout = weapons:Tab("scout")
	local awp = weapons:Tab("awp")
	local auto = weapons:Tab("auto")

	local function AddRage(Tab)
		Tab:Element("Jumbobox", "hitboxes", {options = {"head", "torso", "pelvis"}})
		Tab:Element("Toggle", "prefer body")
		Tab:Element("Slider", "minimum damage", {min = -10, max = 100, default = 10})
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
	antiaim:Element("Dropdown", "yaw base", {options = {"camera", "targets", "spin", "random"}})
	antiaim:Element("Slider", "yaw offset", {min = -180, max = 180, default = 0})
	antiaim:Element("Toggle", "jitter")
	antiaim:Element("Slider", "jitter offset", {min = -180, max = 180, default = 0})
	antiaim:Element("Dropdown", "pitch", {options = {"none", "up", "down", "zero", "180", "random", "among us", "scoliosis", "jitter up"}})
	antiaim:Element("Toggle", "extend pitch")
	antiaim:Element("Dropdown", "body roll", {options = {"off", "180"}})
	antiaim:Element("Slider", "spin speed", {min = 1, max = 100, default = 1})

	local others = rage:Sector("others", "Right")
	others:Element("Toggle", "remove head")
	others:Element("Toggle", "no animations")
	others:Element("Toggle", "remove accessories", {}, function(tbl)
		local plr = game:GetService("Players")
		local lplr = plr.LocalPlayer
		while values.rage.others["remove accessories"].Toggle do
			RunService.Heartbeat:Wait()
			pcall(function()
				for i,v in pairs(game.Workspace[lplr.Name]:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
				end
			end)
		end
	end)
	others:Element("Toggle", "remove clothes", {}, function(tbl)
		if tbl.Toggle then
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
	end)

	others:Element("Dropdown", "leg movement", {options = {"off", "slide 1", "slide 2", "no jump anim"}})

	local LagTick = 0
	local fakelag = rage:Sector("fakelag", "Right")
	fakelag:Element("Toggle", "enabled", {default = {Toggle = false}}, function(tbl)
		if tbl.Toggle then
		else
			FakelagFolder:ClearAllChildren()
			game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
		end
	end)
	fakelag:Element("Dropdown", "amount", {options = {"static", "dynamic", "freeze"}})
	fakelag:Element("Slider", "limit", {min = 1, max = 16, default = 8})
	fakelag:Element("ToggleTrans", "visualize lag", {default = {Toggle = false, Color = Color3.fromRGB(255,255,255)}}, function(tbl)
		if tbl.Toggle then
			for _,obj in pairs(FakelagFolder:GetChildren()) do
				obj.Color = tbl.Color
				obj.Transparency = tbl.Transparency
			end
		else
			FakelagFolder:ClearAllChildren()
		end
	end)
	fakelag:Element("ToggleKeybind", "ping spike")
	local savedcamerapart = Instance.new("Part", RayIgnore)
	savedcamerapart.Anchored = true
	savedcamerapart.CanCollide = false
	savedcamerapart.Size = Vector3.new(1, 1, 1)
	savedcamerapart.Transparency = 1
	coroutine.wrap(function()
	while wait(1/16) do
		LagTick = math.clamp(LagTick + 1, 0, values.rage.fakelag.limit.Slider)
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") and values.rage.fakelag.enabled.Toggle then
			if LagTick == (values.rage.fakelag.amount.Dropdown == "static" and values.rage.fakelag.limit.Slider or math.random(1, values.rage.fakelag.limit.Slider)) then
				game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
				FakelagFolder:ClearAllChildren()
				LagTick = 0
				if values.rage.fakelag["visualize lag"].Toggle then
					for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
						if hitbox:IsA("BasePart") and hitbox.Name ~= "HumanoidRootPart" then
							local Part = Instance.new("Part")
							Part.BottomSurface = Enum.SurfaceType.Smooth
							Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
							Part.Color = values.rage.fakelag['visualize lag'].Color
							Part.Material = Enum.Material.ForceField
							Part.Shape = Enum.PartType.Ball
							Part.Size = Vector3.new(2, 2, 2)
							Part.TopSurface = Enum.SurfaceType.Smooth
							Part.Parent = FakelagFolder
							Part.Anchored = true
							Part.CanCollide = false
							Part.Position = LocalPlayer.Character.HumanoidRootPart.Position
						end
					end
				end
			elseif values.rage.fakelag.amount.Dropdown == "freeze" and allowedtofreeze then
				LagTick = 0
				FakelagFolder:ClearAllChildren()
				pcall(function()
					workspace.FreezeCharacter2:Remove()
				end)
				local loopfl
				pcall(function()
					saved = LocalPlayer.Character.HumanoidRootPart.CFrame
					savedcamerapart.CFrame = workspace.Camera.Focus
					workspace.Camera.CameraSubject = savedcamerapart
					loopfl = RunService.Stepped:Connect(function()
						savedcamerapart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.x, 0, savedcamerapart.CFrame.y, LocalPlayer.Character.Humanoid.CFrame.z)
					end)
				end)
				pcall(function()
					local part = Instance.new("Part", workspace)
					part.Size = Vector3.new(30, 1, 30)
					part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
					part.Velocity = LocalPlayer.Character.HumanoidRootPart.Velocity
					part.CanCollide = false
					part.Transparency = 1
					part.Name = "FreezeCharacter2"

					local weld = Instance.new("Weld", part)
					weld.Part0 = part
					weld.Part1 = LocalPlayer.Character.HumanoidRootPart

					if values.rage.fakelag["visualize lag"].Toggle then
						for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
							if hitbox:IsA("BasePart") and hitbox.Name ~= "HumanoidRootPart" then
								local Part = Instance.new("Part")
								Part.BottomSurface = Enum.SurfaceType.Smooth
								Part.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
								Part.Color = values.rage.fakelag['visualize lag'].Color
								Part.Material = Enum.Material.ForceField
								Part.Shape = Enum.PartType.Ball
								Part.Size = Vector3.new(2, 2, 2)
								Part.TopSurface = Enum.SurfaceType.Smooth
								Part.Parent = FakelagFolder
								Part.Anchored = true
								Part.CanCollide = false
								Part.Position = LocalPlayer.Character.HumanoidRootPart.Position
							end
						end
					end
				end)
				pcall(function()
					loopfl:Disconnect()
					workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
					workspace.FreezeCharacter2.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, LocalPlayer.Character.HumanoidRootPart.CFrame.z)
				end)
			else
				if values.rage.fakelag.enabled.Toggle and values.rage.fakelag.Dropdown == "static" then
					game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)
				end
			end
		else
			pcall(function()
				workspace.FreezeCharacter2:Remove()
			end)
			FakelagFolder:ClearAllChildren()
			game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
		end
	end
	end)()

	fakelag:Element("Button", "crash server", {}, function()
		while true do
			wait()
			for i = 1,1000,1 do
				local crash = LocalPlayer.Character.Gun.Mag
				game:GetService("ReplicatedStorage").Events.DropMag:FireServer(crash)
			end
		end   
	end)

	local exploits = rage:Sector("exploits", "Left")
	exploits:Element("ToggleKeybind", "double tap")
	exploits:Element("ToggleKeybind", "triple tap")
	exploits:Element("Toggle", "kill all")
	exploits:Element("Toggle", "anti-ping", {}, function(tbl)      
		spawn(function()
			while values.misc.grenades["anti-ping"].Toggle do
				pcall(function()
					game:GetService("RunService").RenderStepped:Wait()
					for i,v in pairs(workspace["Ray_Ignore"]:GetChildren()) do
						if v.Name == "MagDrop" then
							v:Destroy()
						end
					end
				end)
			end 
		end)    
	end) 
	exploits:Element("Toggle", "extend penetration")
	local function DefuseC4()
		pcall(function()
			if LocalPlayer.Character and workspace.Map.Gamemode.Value == "defusal" and not defusing and workspace:FindFirstChild("C4") then
				defusing = true
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				local pos = LocalPlayer.Character.HumanoidRootPart.CFrame 
				workspace.CurrentCamera.CameraType = "Fixed"
				LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.C4.Handle.CFrame + Vector3.new(0, 2, 0)
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				wait(0.1)
				LocalPlayer.Backpack.PressDefuse:FireServer(workspace.C4)
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				wait(0.25)
				if LocalPlayer.Character and workspace:FindFirstChild("C4") and workspace.C4:FindFirstChild("Defusing") and workspace.C4.Defusing.Value == LocalPlayer then
					LocalPlayer.Backpack.Defuse:FireServer(workspace.C4)
				end
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				wait(0.2)
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				LocalPlayer.Character.HumanoidRootPart.CFrame = pos
				LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
				game.Workspace.CurrentCamera.CameraType = "Custom"
				defusing = false
			end
		end)
	end
	exploits:Element("Button", "defuse c4", nil, DefuseC4)

	local players = visuals:Sector("players", "Left")
	players:Element("Toggle", "teammates")
	players:Element("ToggleColor", "box", {default = {Color = Color3.fromRGB(255,255,255)}})
	players:Element("ToggleColor", "name", {default = {Color = Color3.fromRGB(255,255,255)}})
	players:Element("Toggle", "health")
	players:Element("ToggleColor", "weapon", {default = {Color = Color3.fromRGB(255,255,255)}})
	players:Element("ToggleColor", "weapon icon", {default = {Color = Color3.fromRGB(255,255,255)}})
	players:Element("Jumbobox", "indicators", {options = {"armor"}})
	players:Element("Jumbobox", "outlines", {options = {"drawings", "text"}, default = {Jumbobox = {"drawings", "text"}}})
	players:Element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}})
	players:Element("Slider", "size", {min = 12, max = 16, default = 13})
	players:Element("ToggleColor", "outer chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl)
		for _,Player in pairs(Players:GetPlayers()) do
			if Player.Character then
				for _2,Obj in pairs(Player.Character:GetDescendants()) do
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
					end
				end
			end
		end
	end)
	players:Element("ToggleColor", "inner chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl)
		for _,Player in pairs(Players:GetPlayers()) do
			if Player.Character then
				for _2,Obj in pairs(Player.Character:GetDescendants()) do
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
					end
				end
			end
		end
	end)
	local effects = visuals:Sector("effects", "Right")
	effects:Element("ToggleTrans", "weapon chams", {default = {Color = Color3.fromRGB(255,255,255), Transparency = 0}}, function(tbl)
		if WeaponObj == nil then return end
		if tbl.Toggle then
			for i,v in pairs(WeaponObj) do
				UpdateWeapon(v)
			end
		else
			for i,v in pairs(WeaponObj) do
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
			for i,v in pairs(WeaponObj) do
				UpdateWeapon(v)
			end
		end
	end)
	effects:Element("Slider", "reflectance", {min = 0, max = 100, default = 0}, function(tbl)
		if values.visuals.effects["weapon chams"].Toggle then
			for i,v in pairs(WeaponObj) do
				UpdateWeapon(v)
			end
		end
	end)
	effects:Element("ToggleTrans", "sleeve chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if val.Toggle then
			if RSleeve ~= nil then
				UpdateSleeve(RSleeve)
			end
			if LSleeve ~= nil then
				UpdateSleeve(LSleeve)
			end
		else
			if RSleeve then
				ReverseAccessory(RSleeve)
			end
			if LSleeve then
				ReverseAccessory(LSleeve)
			end
		end
	end)
	effects:Element("Dropdown", "sleeve material", {options = {"Smooth","ForceField"}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if values.visuals.effects["sleeve chams"].Toggle then
			if RSleeve ~= nil then
				UpdateSleeve(RSleeve)
			end
			if LSleeve ~= nil then
				UpdateSleeve(LSleeve)
			end
		end
	end)
	effects:Element("ToggleTrans", "glove chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if val.Toggle then
			if RGlove ~= nil then
				UpdateGlove(RGlove)
			end
			if LGlove ~= nil then
				UpdateGlove(LGlove)
			end
		else
			if RGlove then
				ReverseAccessory(RGlove)
			end
			if LGlove then
				ReverseAccessory(LGlove)
			end
		end
	end)
	effects:Element("Dropdown", "glove material", {options = {"Smooth","ForceField"}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if values.visuals.effects["glove chams"].Toggle then
			if RGlove ~= nil then
				UpdateGlove(RGlove)
			end
			if LGlove ~= nil then
				UpdateGlove(LGlove)
			end
		end
	end)
	effects:Element("ToggleTrans", "arm chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if val.Toggle then
			if RArm ~= nil then
				UpdateArm(RArm)
			end
			if LArm ~= nil then
				UpdateArm(LArm)
			end
		else
			if RArm ~= nil then
				RevertArm(RArm)
			end
			if LArm ~= nil then
				RevertArm(LArm)
			end
		end
	end)
	effects:Element("Dropdown", "arm material", {options = {"Smooth", "ForceField"}}, function(val)
		if RArm == nil then return end
		if LArm == nil then return end
		if values.visuals.effects["arm chams"].Toggle then
			if RArm ~= nil then
				UpdateArm(RArm)
			end
			if LArm ~= nil then
				UpdateArm(LArm)
			end
		end
	end)
	effects:Element("Jumbobox", "removals", {options = {"scope", "flash", "smoke", "shadows", "decals"}}, function(val)
		local tbl = val.Jumbobox
		if table.find(tbl, "decals") then
			Client.createbullethole = function() end
			for i,v in pairs(workspace.Debris:GetChildren()) do
				if v.Name == "Bullet" or v.Name == "SurfaceGui" then
					v:Destroy()
				end
			end
		else
			Client.createbullethole = oldcreatebullethole
		end
		if table.find(tbl, "scope") then
			Crosshairs.Scope.ImageTransparency = 1
			Crosshairs.Scope.Scope.ImageTransparency = 1
			Crosshairs.Scope.Scope.Blur.ImageTransparency = 1
			Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 1
			Crosshairs.Frame1.Transparency = 1
			Crosshairs.Frame2.Transparency = 1
			Crosshairs.Frame3.Transparency = 1
			Crosshairs.Frame4.Transparency = 1
		else
			Crosshairs.Scope.ImageTransparency = 0
			Crosshairs.Scope.Scope.ImageTransparency = 0
			Crosshairs.Scope.Scope.Blur.ImageTransparency = 0
			Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 0
			Crosshairs.Frame1.Transparency = 0
			Crosshairs.Frame2.Transparency = 0
			Crosshairs.Frame3.Transparency = 0
			Crosshairs.Frame4.Transparency = 0
		end
		PlayerGui.Blnd.Enabled = not table.find(tbl, "flash") and true or false
		Lighting.GlobalShadows = not table.find(tbl, "shadows") and true or false
		if RayIgnore:FindFirstChild("Smokes") then
			if table.find(tbl, "smoke") then
				for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
					smoke.ParticleEmitter.Rate = 0
				end
			else
				for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
					smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value
				end
			end
		end
	end)
	effects:Element("Toggle", "force crosshair")
	effects:Element("Toggle", "old gun sounds", nil, function(tbl)
		if tbl.Toggle then
			OldGunSounds = game:GetService("RunService").RenderStepped:Connect(function()
				pcall(function()
					local player = game:GetService("Players").LocalPlayer.Character
					if player.EquippedTool.Value == "AK47" then
						player.Gun.Shoot.SoundId = "rbxassetid://749519885"
					end
			
					if player.EquippedTool.Value == "M4A1" then
						player.Gun.SShoot.SoundId = "rbxassetid://1665639883"
			
					end
			
					if player.EquippedTool.Value == "Glock" then
						player.Gun.Shoot.SoundId = "rbxassetid://1665635507"
			
					end
			
					if player.EquippedTool.Value == "M4A1" then
						player.Gun.Shoot.SoundId = "rbxassetid://223013951"
			
					end
			
					if player.EquippedTool.Value == "Galil" then
						player.Gun.Shoot.SoundId = "rbxassetid://344800912"
					end
			
					if player.EquippedTool.Value == "USP" then
						player.Gun.SShoot.SoundId = "rbxassetid://1112952739"
					end
			
					if player.EquippedTool.Value == "USP" then
						player.Gun.Shoot.SoundId = "rbxassetid://1665652648"
					end
			
					if player.EquippedTool.Value == "DualBerettas" then 
						player.Gun1.Shoot.SoundId = "rbxassetid://251030881"
						player.Gun2.Shoot.SoundId = "rbxassetid://251030881"
					end
			
					if player.EquippedTool.Value == "P250" then
						player.Gun.Shoot.SoundId = "rbxassetid://340365431"
					end
			
					if player.EquippedTool.Value == "DesertEagle" then
						player.Gun.Shoot.SoundId = "rbxassetid://202918645"
					end
			
					if player.EquippedTool.Value == "M249" then
						player.Gun.Shoot.SoundId = "rbxassetid://193868290"
					end
			
					if player.EquippedTool.Value == "MP9" then
						player.Gun.Shoot.SoundId = "rbxassetid://222888810"
					end
			
					if player.EquippedTool.Value == "MP7-SD" then
						player.Gun.Shoot.SoundId = "rbxassetid://2794150850"
					end
			
					if player.EquippedTool.Value == "UMP" then
						player.Gun.Shoot.SoundId = "rbxassetid://206953341"
					end
			
					if player.EquippedTool.Value == "P90" then
						player.Gun.Shoot.SoundId = "rbxassetid://1665644012"
					end
			
					if player.EquippedTool.Value == "Bizon" then
						player.Gun.Shoot.SoundId = "rbxassetid://485606203"
					end
			
					if player.EquippedTool.Value == "Famas" then
						player.Gun.Shoot.SoundId = "rbxassetid://206953280"
					end
			
					if player.EquippedTool.Value == "Scout" then
						player.Gun.Shoot.SoundId = "rbxassetid://2476571739"
						player.Gun.Zoom.SoundId = "rbxassetid://2862871544"
						player.Gun.Zoom.PlaybackSpeed = 1
					end
			
					if player.EquippedTool.Value == "AUG" then
						player.Gun.Shoot.SoundId = "rbxassetid://1657593449"
						player.Gun.Zoom.SoundId = "rbxassetid://297606725"
					end
			
					if player.EquippedTool.Value == "AWP" then
						player.Gun.Shoot.SoundId = "rbxassetid://2753888131"
						player.Gun.Zoom.SoundId = "rbxassetid://2862871544"
						player.Gun.Zoom.PlaybackSpeed = 1
					end
			
					if player.EquippedTool.Value == "G3SG1" then
						player.Gun.Shoot.SoundId = "rbxassetid://340365815"
					end
			
					if player.EquippedTool.Value == "MAC10" then
						player.Gun.Shoot.SoundId = "rbxassetid://242422782"
					end
			
					if player.EquippedTool.Value == "SawedOff" then
						player.Gun.Shoot.SoundId = "rbxassetid://1158047483"
					end
			
					if player.EquippedTool.Value == "CZ" then
						player.Gun.Shoot.SoundId = "rbxassetid://458727115"
					end
			
					if player.EquippedTool.Value == "Nova" then
						player.Gun.Shoot.SoundId = "rbxassetid://206953213"
					end
			
					if player.EquippedTool.Value == "XM" then
						player.Gun.Shoot.SoundId = "rbxassetid://202918888"
					end
			
					if player.EquippedTool.Value == "MAG7" then
						player.Gun.Shoot.SoundId = "rbxassetid://395724758"
					end
			
					if player.EquippedTool.Value == "Negev" then
						player.Gun.Shoot.SoundId = "rbxassetid://396243767"
					end
			
					if player.EquippedTool.Value == "SG" then
						player.Gun.Shoot.SoundId = "rbxassetid://347270113"
					end
			
					if player.EquippedTool.Value == "T Knife" then
						player.Gun.Shoot1.SoundId = "rbxassetid://1665637464"
						player.Gun.Shoot2.SoundId = "rbxassetid://1665637740"
					end
			
					if player.EquippedTool.Value == "CT Knife" then
						player.Gun.Shoot1.SoundId = "rbxassetid://1665637464"
						player.Gun.Shoot2.SoundId = "rbxassetid://1665637740"
					end
			
					if player.EquippedTool.Value == "M4A4" then
						player.Gun.Shoot.SoundId = "rbxassetid://202918741"
					end
			
					if player.EquippedTool.Value == "FiveSevenMoment" then
						player.Gun.Shoot.SoundId = "rbxassetid://212374232"
					end
			
					if player.EquippedTool.Value == "FiveSeven" then
						player.Gun.Shoot.SoundId = "rbxassetid://212374232"
					end
			
					if player.EquippedTool.Value == "Tec9" then
						player.Gun.Shoot.SoundId = "rbxassetid://206953317"
					end
					
					if player.EquippedTool.Value == "P2000" then
						player.Gun.Shoot.SoundId = "rbxassetid://263589107"
					end
					
					if player.EquippedTool.Value == "MP7" then
						player.Gun.Shoot.SoundId = "rbxassetid://2752835613"
					end
				end)
			end)
		elseif OldGunSounds then
			OldGunSounds:Disconnect()
		end
	end)

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
	self:Element("Slider", "distance", {min = 5, max = 18, default = 10}, function(tbl)
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
		if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
			Camera.FieldOfView = value.Slider
		end
	end)
	self:Element("Toggle", "on scope")
	self:Element("Toggle", "viewmodel changer")
	self:Element("Slider", "viewmodel x", {min = -180, max = 180}, function(val)
		ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/32, values.visuals.self["viewmodel y"].Slider/32, values.visuals.self["viewmodel z"].Slider/32) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/180)
	end)
	self:Element("Slider", "viewmodel y", {min = -180, max = 180}, function(val)
		ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/32, values.visuals.self["viewmodel y"].Slider/32, values.visuals.self["viewmodel z"].Slider/32) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/180)
	end)
	self:Element("Slider", "viewmodel z", {min = -180, max = 180}, function(val)
		ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/32, values.visuals.self["viewmodel y"].Slider/32, values.visuals.self["viewmodel z"].Slider/32) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/180)
	end)
	self:Element("Slider", "roll", {min = -180, max = 180}, function(val)
		ViewmodelOffset = CFrame.new(values.visuals.self["viewmodel x"].Slider/32, values.visuals.self["viewmodel y"].Slider/32, values.visuals.self["viewmodel z"].Slider/32) * CFrame.Angles(0, 0, values.visuals.self.roll.Slider/180)
	end)
	self:Element("ToggleColor", "self chams", {default = {Color = Color3.fromRGB(255,255,255)}}, function(tbl)
		if tbl.Toggle then
			for _,obj in pairs(SelfObj) do
				if obj.Parent ~= nil then
					obj.Material = Enum.Material.ForceField
					obj.Color = tbl.Color
				end
			end
		else
			for _,obj in pairs(SelfObj) do
				if obj.Parent ~= nil then
					obj.Material = obj.OriginalMaterial.Value
					obj.Color = obj.OriginalColor.Value
				end
			end
		end
	end)

	local world = visuals:Sector("world", "Left")
	world:Element("ToggleColor", "ambient color", {default = {Color = Color3.fromRGB(225,225,225)}}, function(val)
		if val.Toggle then
			Lighting.Ambient = val.Color
			Lighting.OutdoorAmbient = val.Color
			coroutine.wrap(function()
				wait(1)
				while values.visuals.world["ambient color"].Toggle do
					Lighting.Ambient = val.Color
					Lighting.OutdoorAmbient = val.Color
					wait()
				end
			end)()
		else
			Lighting.Ambient = Color3.fromRGB(200, 200, 200)
			Lighting.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
		end
	end)
	world:Element("ToggleColor", "tint color", {default = {Color = Color3.fromRGB(255,255,255)}}, function(val)
		if val.Toggle then
			Camera.ColorCorrection.TintColor = val.Color
		else
			Camera.ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
		end
	end)
	world:Element("Toggle", "shadowmap technology", nil, function(val) sethiddenproperty(Lighting, "Technology", val.Toggle and "Future" or "Compatibility") end)
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
		Beam.TextureLength = 0.8
		Beam.TextureMode = Enum.TextureMode.Stretch
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
	world:Element("ToggleTrans", "impacts", {default = {Color = Color3.fromRGB(255, 0, 0)}})
	world:Element('Slider', 'impacts time', {min = 1, max = 5, default = 1,})
	world:Element("Dropdown", "hitsound", {options = {"none", "csgo headshot", "skeet", "neverlose", "rust", "moan", "1", "semi", "baimware", "headshot"}})
	local headshots = {
		"rbxassetid://1543848180",
		"rbxassetid://1543848460",
		"rbxassetid://1543848682",
		"rbxassetid://1543848901"
	}
	local moans = {
		"rbxassetid://2440889605",
		"rbxassetid://2440891382",
		"rbxassetid://2440889869"
	}
	world:Element("Slider", "sound volume", {min = 1, max = 5, default = 3})
	world:Element("Dropdown", "skybox", {options = {"none", "nebula", "vaporwave", "clouds", "aesthetic",}}, function(tbl)
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
		for i,weapon in pairs(workspace.Debris:GetChildren()) do
			if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
				weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false
			end
		end
	end)
	world:Element("Jumbobox", "types", {options = {"icon"}}, function(tbl)
		for i,weapon in pairs(workspace.Debris:GetChildren()) do
			if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
				weapon.BillboardGui.ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(tbl.Jumbobox, "icon") and true or false
				weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
			end
		end
	end)
	local configs = misc:Sector("configs", "Left")
	configs:Element("TextBox", "config", {placeholder = "config name"})
	configs:Element("Button", "save", {}, function() if values.misc.configs.config.Text ~= "" then library:SaveConfig(values.misc.configs.config.Text) end end)
	configs:Element("Button", "load", {}, function() if values.misc.configs.config.Text ~= "" then ConfigLoad:Fire(values.misc.configs.config.Text) end end)
	configs:Element("Toggle", "keybind list", nil, function(tbl)
		library:SetKeybindVisible(tbl.Toggle)
	end)
	configs:Element("Toggle", "specators list", {}, function(tbl)
		if tbl.Toggle then
			local SpectatorsList = Instance.new("ScreenGui")
			local Spectators = Instance.new("Frame")
			local Container = Instance.new("Frame")
			local UIPadding = Instance.new("UIPadding")
			local Text = Instance.new("TextLabel")
			local Players = Instance.new("TextLabel")
			local Background = Instance.new("Frame")

			SpectatorsList.Parent = game.CoreGui
			SpectatorsList.Name = "SpectatorsList"
			SpectatorsList.Enabled = true

			Spectators.Name = "Spectators"
			Spectators.Parent = SpectatorsList
			Spectators.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Spectators.BackgroundTransparency = 1.000
			Spectators.BorderColor3 = Color3.fromRGB(223, 190, 117)
			Spectators.Position = UDim2.new(0, 1, 0.400000006, 49)
			Spectators.Size = UDim2.new(0, 200, 0, 20)

			Container.Name = "Container"
			Container.Parent = Spectators
			Container.BackgroundTransparency = 1.000
			Container.BorderSizePixel = 0
			Container.Position = UDim2.new(0, 0, 0, 4)
			Container.Size = UDim2.new(0, 200, 0, 20)
			Container.ZIndex = 3

			UIPadding.Parent = Container
			UIPadding.PaddingLeft = UDim.new(0, 4)

			Text.Name = "Text"
			Text.Parent = Container
			Text.BackgroundTransparency = 1.000
			Text.Position = UDim2.new(0, 0, 0, -3)
			Text.Size = UDim2.new(0, 200, 0, 20)
			Text.ZIndex = 4
			Text.Font = Enum.Font.GothamSemibold
			Text.Text = "spectators"
			Text.TextColor3 = Color3.fromRGB(255, 255, 255)
			Text.TextSize = 12.750
			Text.TextStrokeTransparency = 0.000

			Players.Name = "Players"
			Players.Parent = Container
			Players.BackgroundTransparency = 1.000
			Players.Position = UDim2.new(0, 0, 0.95, 0)
			Players.Size = UDim2.new(0, 200, 0, 20)
			Players.ZIndex = 4
			Players.Font = Enum.Font.GothamSemibold
			Players.Text = ""
			Players.TextColor3 = Color3.fromRGB(255, 255, 255)
			Players.TextSize = 12.750
			Players.TextStrokeTransparency = 0.000
			Players.TextYAlignment = Enum.TextYAlignment.Top

			Background.Name = "Background"
			Background.Parent = Spectators
			Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0, 0)
			Background.BorderColor3 = Color3.fromRGB(223, 190, 117)
			Background.BorderSizePixel = 1
			Background.Size = UDim2.new(0, 200, 0, 20)


			function GetSpectators()
				local CurrentSpectators = ""
				for i,v in pairs(game.Players:GetChildren()) do 
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
				local script = Instance.new("LocalScript", Spectators)
				local gui = script.Parent
				gui.Draggable = false
				gui.Active = true
			end
			coroutine.wrap(SCUAM_fake_script)()
		else
			game.CoreGui.SpectatorsList:Destroy()
		end
	end)

	local crosshaireditor = misc:Sector("crosshair editor", "Right")
	local function UpdateCrosshair()
		if values.misc["crosshair editor"].enabled.Toggle then
			local length = values.misc["crosshair editor"].length.Slider
			Crosshair.LeftFrame.Size = UDim2.new(0, length, 0, 2)
			Crosshair.RightFrame.Size = UDim2.new(0, length, 0, 2)
			Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, length)
			Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, length)
			for _,frame in pairs(Crosshair:GetChildren()) do
				if string.find(frame.Name, "Frame") then
					frame.BorderColor3 = Color3.new(0,0,0)
					if values.misc["crosshair editor"].border.Toggle then
						frame.BorderSizePixel = 1
					else
						frame.BorderSizePixel = 0
					end
				end
			end
		else
			Crosshair.LeftFrame.Size = UDim2.new(0, 10, 0, 2)
			Crosshair.RightFrame.Size = UDim2.new(0, 10, 0, 2)
			Crosshair.TopFrame.Size = UDim2.new(0, 2, 0, 10)
			Crosshair.BottomFrame.Size = UDim2.new(0, 2, 0, 10)
			for _,frame in pairs(Crosshair:GetChildren()) do
				if string.find(frame.Name, "Frame") then
					frame.BorderSizePixel = 0
				end
			end
		end
	end
	crosshaireditor:Element("Toggle", "enabled", nil, UpdateCrosshair)
	crosshaireditor:Element("Slider", "length", {min = 1, max = 15, default = 10}, UpdateCrosshair)
	crosshaireditor:Element("Toggle", "border", nil, UpdateCrosshair)

	local client = misc:Sector("client", "Right")
	client:Element("Button", "rejoin", nil, function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
	end)
	client:Element("Button", "fix vote bug", nil, function()
		game.Players.LocalPlayer.PlayerGui.GUI.MapVote.Visible = false
		game.Players.LocalPlayer.PlayerGui.GUI.Scoreboard.Visible = false
	end)
	client:Element("Toggle", "remove debris", nil, function(tbl)
		while values.misc.client["remove debris"].Toggle do
			wait(1)
			for i,v in pairs(game.Workspace.Debris:GetDescendants()) do
				game:GetService("ReplicatedStorage").Events.DestroyObject:FireServer(v)
			end
		end
	end)
	client:Element("Toggle", "infinite cash", nil, function(tbl)
		if tbl.Toggle then
			LocalPlayer.Cash.Value = 900000000
		end
	end)
	client:Element("Toggle", "infinite crouch")
	client:Element("Jumbobox", "damage bypass", {options = {"fire", "fall"}})
	client:Element("Jumbobox", "gun modifiers", {options = {"recoil", "spread", "reload", "equip", "ammo", "automatic", "firerate", "penetration"}})
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
	client:Element("Toggle", "chat alive")
	client:Element("Jumbobox", "shop", {options = {"inf time", "anywhere"}})

	local movement = misc:Sector("movement", "Left")
	movement:Element("Toggle", "bunny hop")
	movement:Element("Dropdown", "direction", {options = {"forward", "directional", "directional 2"}})
	movement:Element("Dropdown", "type", {options = {"gyro", "cframe"}})
	movement:Element("Slider", "speed", {min = 5, max = 100, default = 10})
	movement:Element("ToggleKeybind", "jump bug")
	movement:Element("ToggleKeybind", "edge jump")
	movement:Element("ToggleKeybind", "edge bug")
	local chat = misc:Sector("chat", "Left")
	chat:Element("Toggle", "chat spam", nil, function(tbl)
		if tbl.Toggle then
			while values.misc.chat["chat spam"].Toggle do
				game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat.type.Dropdown == "standard" and "nice cheat" or values.misc.chat.type.Dropdown == "what... who cares" and "what... who cares" or "selly.gg/@chickenplug", false, "Innocent", false, true)
				wait(values.misc.chat["speed (ms)"].Slider/1000)
			end
		end
	end)
	chat:Element("Dropdown", "type", {options = {"standard", "brutale momento", "what... who cares"}})
	chat:Element("Slider", "speed (ms)", {min = 150, max = 1000, default = 500})
	chat:Element("Toggle", "kill say")
	local killsays = {
		"1 sit down nn",
		"who.rru hhh nn laff uff ya b1g meme",
		"u got 1'd from a paste",
		"tapped",
		"oof thats a 1 right there",
		"media'd"
	}
	chat:Element("TextBox", "message", {placeholder = "message"})
	chat:Element("Toggle", "no filter")

	local Dance = Instance.new("Animation")
	Dance.AnimationId = "rbxassetid://5917459365"

	local LoadedAnim

	local animations = misc:Sector("animations", "Right")
	animations:Element("Toggle", "enabled", nil, function(tbl)
		if not tbl.Toggle or tbl.Toggle then
			pcall(function()
				LoadedAnim:Stop()
			end)
		else
			if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
				LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
				LoadedAnim.Priority = Enum.AnimationPriority.Action
				LoadedAnim:Play()
			end
		end
	end)
	animations:Element("Dropdown", "animation", {options = {"floss", "default dance"}}, function(tbl)
		Dance.AnimationId = tbl.Dropdown == "floss" and "rbxassetid://5917459365" or tbl.Dropdown == "default dance" and "rbxassetid://3732699835"
		
		pcall(function()
			LoadedAnim:Stop()
		end)

		if values.misc.animations.enabled.Toggle then
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
			for i, v in pairs(utility.default[type]) do
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
		for _,plr in pairs(Players:GetPlayers()) do
			if Player ~= LocalPlayer then
				utility.add(plr)
			end
		end
		Players.PlayerAdded:Connect(utility.add)
		Players.PlayerRemoving:Connect(function(plr)
			wait()
			if objects[plr] then
				for i,v in pairs(objects[plr]) do
					if v then
						v:Remove()
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
		for _,plr in pairs(Players:GetPlayers()) do
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
			ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false

			BillboardGui.Parent = obj
		end
	end)
	for _, obj in pairs(workspace.Debris:GetChildren()) do
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
			ImageLabel.Visible = values.visuals.world["item esp"].Toggle and table.find(values.visuals.world["types"].Jumbobox, "icon") and true or false

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
		return table.find(weps.Pistol, weapon) and "pistol" or table.find(weps.Rifle, weapon) and "rifle" or weapon == "AWP" and "awp" or weapon == "G3SG1"  and "auto" or weapon == "Scout" and "scout" or "default"
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
		return table.find(weps2.Pistol, weapon) and "pistol" or table.find(weps2.Rifle, weapon) and "rifle" or table.find(weps2.SMG, weapon) and "smg" or table.find(weps2.Sniper, weapon) and "sniper" or "default"
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
	allowedtofreeze = true
	local Jitter = false
	local Spin = 0
	local RageTarget
	local Filter = false
	local LastStep
	local TriggerDebounce = false
	local DisableAA = false
	local pa = Instance.new('Part', workspace)
	RunService.RenderStepped:Connect(function(step)
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
		for i,v in pairs(ChamItems) do
			if v.Parent == nil then
				table.remove(ChamItems, i)
			end
		end	if PlayerIsAlive then
			local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity
			if values.rage.fakelag["ping spike"].Toggle and values.rage.fakelag["ping spike"].Active then
				for count = 1, 25  do
					game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vector3.new()}) 
				end
			end
			local Root = LocalPlayer.Character.HumanoidRootPart
			if values.misc.client["infinite crouch"].Toggle then
				Client.crouchcooldown = 0
			end
			if table.find(values.misc.client["gun modifiers"].Jumbobox, "firerate") then
				Client.DISABLED = false
			end
			local function predict(part, ping)
				local oldPos = part.Position
				
				local newPos = part.Position
			
				local playerSpeed = (newPos - oldPos).magnitude / step
				local direction = CFrame.new(oldPos, newPos)
			
				local final = (direction * CFrame.new(0, 0, -(playerSpeed * (ping / 1000)))).p
				
				return final
			end 
		
			if values.rage.exploits["kill all"].Toggle and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
				for _,Player in pairs(Players:GetPlayers()) do
					if Player.Character and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0 and Player.Team ~= LocalPlayer.Team then
						local oh1 = Player.Character.Head
						local oh2 = predict(Player.Character.Head, Ping)
						local oh3 = LocalPlayer.Character.EquippedTool.Value
						local oh4 = math.random(1, 12000)
						local oh5 = nil
						local oh8 = math.random(-1, 50)
						local oh9 = false
						local oh10 = false	
						local oh11 = Vector3.new()
						local oh12 = 1
						local oh13 = Vector3.new()
						game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)   
					end
				end
			end

			local RageGuy
			if workspace:FindFirstChild("Map") and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
				if values.rage.aimbot.enabled.Toggle then
					local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, 1.425, 0) or CamCFrame.p
					local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name))
					for _,Player in pairs(Players:GetPlayers()) do
						if table.find(values.misc.client["gun modifiers"].Jumbobox, "firerate") then
							Client.DISABLED = false
						end
						if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and Player ~= LocalPlayer then
							if table.find(values.rage.aimbot.resolver.Jumbobox, "pitch") then
								Player.Character.Head.CFrame = CFrame.new(Player.Character.Head.Position)
							end
							if table.find(values.rage.aimbot.resolver.Jumbobox, "roll") then
								Player.Character.Humanoid.MaxSlopeAngle = 0
							end
							if table.find(values.rage.aimbot.resolver.Jumbobox, 'Forward Track') then
								Player.Character.Head.Size = Vector3.new(3,3,3)
								Player.Character.Head.CFrame = CFrame.new(0,0,-7)
							end
							if table.find(values.rage.aimbot.resolver.Jumbobox, 'Kill all') and LocalPlayer.Character:FindFirstChild("Head") and LocalPlayer.Character:FindFirstChild("Gun") then
								for _,Player in pairs(Players:GetPlayers()) do
								if Player.Character and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0 and Player.Team ~= LocalPlayer.Team then
									local oh1 = Player.Character.Head
									local oh2 = predict(Player.Character.Head, Ping)
									local oh3 = LocalPlayer.Character.EquippedTool.Value
									local oh4 = math.random(1, 12000)
									local oh5 = nil
									local oh8 = math.random(-1, 50)
									local oh9 = false
									local oh10 = false	
									local oh11 = Vector3.new()
									local oh12 = 1
									local oh13 = Vector3.new()
									game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)   
								end
							end	
							
							end
							if table.find(values.rage.aimbot.resolver.Jumbobox, 'Mega Forward Track') then
								Player.Character.Head.Size = Vector3.new(5,5,5)
								Player.Character.Head.CFrame = CFrame.new(0,0,-20)
							end
						end
						local RAY = Ray.new 
				
				
				
				
						if values.rage.aimbot['RT'].Toggle then
							RageTarget = values.rage.aimbot['RT slid'].Slider
							if RageTarget == 1 then
								RageTarget = nil
							end
						end
						
						if values.rage.aimbot['Nasa'].Toggle then
							

							local highfly = Instance.new('Part')
							highfly.Position = LocalPlayer.Character.Head.Position+Vector3.new(0,700000,0)

							local BillboardGui = Instance.new("BillboardGui")
							BillboardGui.Active = true
							BillboardGui.AlwaysOnTop = true
							BillboardGui.ClipsDescendants = true
							BillboardGui.LightInfluence = 1
							BillboardGui.Size = UDim2.new(0, 200, 0, 50)
							BillboardGui.Parent = highfly

							local TextLabel = Instance.new("TextLabel")
							TextLabel.BackgroundTransparency = 1
							TextLabel.Font = Enum.Font.Code
							TextLabel.Size = UDim2.new(0, 200, 0, 50)
							TextLabel.Text = "Your body."
							TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.TextSize = 14
							TextLabel.ZIndex = 2
							TextLabel.Parent = BillboardGui

							LocalPlayer.Character.HumanoidRootPart.Position = highfly.Position
							
						end
						if values.rage.aimbot['Head Tp'].Toggle then
						for _,Player in pairs(Players:GetPlayers()) do
							if Player.Character and Player.Team ~= LocalPlayer.Team then
								Player.Character.Head.Position = LocalPlayer.Character.Head.Position+Vector3.new(3,0,0)
								Player.Character.Head.Anchored = true
							end
						end 
						end
						if Player.Character and Player.Character:FindFirstChild("Humanoid") and not Client.DISABLED and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and not Player.Character:FindFirstChildOfClass("ForceField") and GetDeg(CamCFrame, Player.Character.Head.Position) <= Stats["max fov"].Slider and Player ~= LocalPlayer then
							if values.rage.aimbot.teammates.Toggle or Player.Team ~= LocalPlayer.Team and Player:FindFirstChild("Status") and Player.Status.Team.Value ~= LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then
								if Client.gun:FindFirstChild("Melee") and values.rage.aimbot["knife bot"].Toggle and LocalPlayer.Character:FindFirstChild("Gun") then
									local Ignore = {unpack(Collision)}
									table.insert(Ignore, game.Workspace.Map)
									table.insert(Ignore, game.Workspace.Map.Clips)
									table.insert(Ignore, game.Workspace.Map.SpawnPoints)
									table.insert(Ignore, LocalPlayer.Character)
									table.insert(Ignore, Player.Character.HumanoidRootPart)
									if Player.Character:FindFirstChild("BackC4") then
										table.insert(Ignore, Player.Character.BackC4)
									end
									if Player.Character:FindFirstChild("Gun") then
										table.insert(Ignore, Player.Character.Gun)
									end

									local Ray = Ray.new(Origin, (Player.Character.Head.Position - Origin).unit * 100)
									local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)

									if Hit and Hit.Parent == Player.Character then
										RageGuy = Hit
										RageTarget = Hit
										if not values.rage.aimbot["silent aim"].Toggle then
											Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position)
										end
										Filter = true
										Filter = false
										if Hit and Hit.Parent == Player.Character then
										local Arguments = {
											[1] = Hit,
											[2] = Hit.Position,
											[3] = LocalPlayer.Character.EquippedTool.Value,
											[4] = 16000,
											[5] = LocalPlayer.Character.Gun,
											[8] = 5,
											[9] = false,
											[10] = false,
											[11] = Vector3.new(),
											[12] = 16000,
											[13] = Vector3.new()
										}
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
									end
								end
								else
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
									for _,Hitbox in ipairs(Stats.hitboxes.Jumbobox) do
										if Stats["prefer body"].Toggle then
											if Hitbox == "head" and (not values.rage.aimbot["auto baim"].Toggle or Player.Character:FindFirstChild("FakeHead")) then
												table.insert(Hitboxes, Player.Character.Head)
											elseif Hitbox == "torso" then
											else
												table.insert(Hitboxes, Player.Character.LowerTorso)
											end
										else
											if Hitbox == "torso" then
												
											elseif Hitbox == "pelvis" then
												table.insert(Hitboxes, Player.Character.LowerTorso)
											elseif not values.rage.aimbot["auto baim"].Toggle or Player.Character:FindFirstChild("FakeHead") then
												table.insert(Hitboxes, Player.Character.Head)
											end
										end
									end

									for _,Hitbox in ipairs(Hitboxes) do
										local Ignore2 = {unpack(Ignore)}
										for _,Part in pairs(Player.Character:GetChildren()) do
											if Part ~= Hitbox then table.insert(Ignore2, Part) end
										end
										if values.rage.aimbot["automatic penetration"].Toggle then
											local Hits = {}
											local EndHit, Hit, Pos
											local Penetration
											if values.rage.exploits["extend penetration"].Toggle then
												Penetration = Client.gun.Penetration.Value * 10
											else
												Penetration = Client.gun.Penetration.Value * 0.01
											end
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
													if Damage >= Stats["minimum damage"].Slider then
														RageGuy = EndHit
														RageTarget = EndHit
														if not values.rage.aimbot["silent aim"].Toggle then
															Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
														end
														Filter = true
														if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
															Client.firebullet()
															if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
																Client.firebullet()
															end
															if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
																Client.firebullet()
																Client.firebullet()
															end
														elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
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
															if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
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
																if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
																	Client.firebullet()
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
																end
															end
														end
														Filter = false
														break
													end
												else
													local penetration
													if values.rage.exploits["extend penetration"].Toggle then
														penetration = Client.gun.Penetration.Value * 10
													else
														penetration = Client.gun.Penetration.Value * 0.01
													end
													local limit = 0
													local dmgmodifier
													if values.rage.exploits["extend penetration"].Toggle then
														dmgmodifier = 10
													else
														dmgmodifier = 1
													end
													for i = 1, #Hits do
														local data = Hits[i]
														local part = data["Hit"]
														local pos = data["Position"]
														local modifier
														if values.rage.exploits["extend penetration"].Toggle then
															modifier = 10
														else
															modifier = 1
														end
														if part.Material == Enum.Material.DiamondPlate then
															if values.rage.exploits["extend penetration"].Toggle then
																modifier = 30
															else
																modifier = 3
															end
														end
														if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
															if values.rage.exploits["extend penetration"].Toggle then
																modifier = 20
															else
																modifier = 2
															end
														end
														if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
															if values.rage.exploits["extend penetration"].Toggle then
																modifier = 10
															else
																modifier = 0.1
															end
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
														local direction = (Hitbox.Position - pos).unit * math.clamp(Client.gun.Range.Value, 0, 1000000)
														local ray = Ray.new(pos + direction * -0, direction * -2)
														local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true)
														local thickness = (endpos - pos).Magnitude
														thickness = thickness * modifier
														limit = math.min(penetration, limit + thickness)
														if values.rage.exploits["extend penetration"].Toggle then
															dmgmodifier = 10 - limit / penetration
														else
															dmgmodifier = 1 - limit / penetration
														end
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
													if Damage >= Stats["minimum damage"].Slider then
														RageGuy = EndHit
														RageTarget = EndHit
														if not values.rage.aimbot["silent aim"].Toggle then
															Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
														end
														Filter = true
														if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
															Client.firebullet()
															if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
																Client.firebullet()
															end
															if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
																Client.firebullet()
																Client.firebullet()
															end
														elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
															Client.firebullet()
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
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
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
																if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
																	Client.firebullet()
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
																end
															end
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
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
															Client.firebullet()
														end
														if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
															Client.firebullet()
															Client.firebullet()
														end
													elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
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
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
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
															if values.rage.exploits["triple tap"].Toggle and values.rage.exploits["triple tap"].Active then
																Client.firebullet()
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
																	[11] = Vector3.new(0,0,0),
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

					if not table.find(Stats.conditions.Jumbobox, "smoke") then
						table.insert(Ignore, workspace.Ray_Ignore)
					end

					if not table.find(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
						if not table.find(Stats.conditions.Jumbobox, "standing") or SelfVelocity < 3 then
							for _,Player in pairs(Players:GetPlayers()) do
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
														if not table.find(Stats.conditions.Jumbobox, "visible") then
															Target = Hitbox
														else
															local Ray1 = Ray.new(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude)
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
						if not table.find(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
							if not table.find(Stats.conditions.Jumbobox, "standing") or SelfVelocity < 3 then
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
			BodyVelocity.MaxForce = Vector3.new(99999, 0, 99999)
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
				BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2.85)
				if add == 0 and values.misc.movement.direction.Dropdown == "directional" and not UserInputService:IsKeyDown("W") then
					BodyVelocity:Destroy()
				else
					if values.misc.movement.type.Dropdown == "cframe" then
						BodyVelocity:Destroy()
						Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/16.05
					end
				end
			end
			if Root.Velocity.Y > 30 then 
				Root.Velocity = Vector3.new(Root.Velocity.x, 0, Root.Velocity.z)
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
			if values.rage.angles.enabled.Toggle  then
				local Angle = -math.atan2(CamLook.Z, CamLook.X) + math.rad(-90)
				if values.rage.angles["yaw base"].Dropdown == "spin" then
					Angle = Angle + math.rad(Spin)
				end
				if values.rage.angles["yaw base"].Dropdown == "random" then
					Angle = Angle + math.rad(math.random(0, 360) / 1)
				end
				local Offset = math.rad(-values.rage.angles["yaw offset"].Slider - (values.rage.angles.jitter.Toggle and Jitter and values.rage.angles["jitter offset"].Slider or 0))
				local CFramePos = CFrame.new(Root.Position) * CFrame.Angles(0, Angle + Offset, 0)
				if values.rage.angles["yaw base"].Dropdown == "targets" then
					local part
					local closest = 6969
					for _,plr in pairs(Players:GetPlayers()) do
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
					Root.CFrame = Root.CFrame * CFrame.Angles(values.rage.angles["body roll"].Dropdown == "180" and math.rad(180) or 0, 15.8, 0)
					LocalPlayer.Character.Humanoid.HipHeight = 3.4
				else 
					LocalPlayer.Character.Humanoid.HipHeight = 2
				end

				local Pitch = values.rage.angles["pitch"].Dropdown == "none" and CamLook.Y or values.rage.angles["pitch"].Dropdown == "up" and 1 or values.rage.angles["pitch"].Dropdown == "down" and -1 or values.rage.angles["pitch"].Dropdown == "zero" and 0 or values.rage.angles["pitch"].Dropdown == "among us" and math.huge or values.rage.angles["pitch"].Dropdown == "scoliosis" and -71 or values.rage.angles["pitch"].Dropdown == "random" and math.random(-1000, 1000) / 1.5 or values.rage.angles["pitch"].Dropdown == "180" and 2.5 or values.rage.angles["pitch"].Dropdown == "jitter up" and math.random(0, 1) / 1
				if values.rage.angles["extend pitch"].Toggle and (values.rage.angles["pitch"].Dropdown == "up" or values.rage.angles["pitch"].Dropdown == "down" or values.rage.angles["pitch"].Dropdown == "jitter up") then
					Pitch = (Pitch*2)/1.6
				end
				game.ReplicatedStorage.Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild("Climbing") and true or false)
			else
				LocalPlayer.Character.Humanoid.HipHeight = 2
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
			if table.find(values.misc.client["gun modifiers"].Jumbobox, "recoil") then
				Client.resetaccuracy()
				Client.RecoilX = 0
				Client.RecoilY = 0
			end
		end
		for _,Player in pairs(Players:GetPlayers()) do
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
		for _,Player in pairs(Players:GetPlayers()) do
			local tbl = objects[Player]
			if tbl == nil then return end
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer then
				local HumanoidRootPart = Player.Character.HumanoidRootPart
				local RootPosition = HumanoidRootPart.Position
				local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
				local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2

				local Drawings, Text = table.find(values.visuals.players.outlines.Jumbobox, "drawings") ~= nil, table.find(values.visuals.players.outlines.Jumbobox, "text") ~= nil

				tbl.Box.Color = values.visuals.players.box.Color
				tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9)
				tbl.Box.Position = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))

				if values.visuals.players.box.Toggle then
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

				if values.visuals.players.health.Toggle then
					tbl.Health.Color = Color3.new(0,1,0)
					tbl.Health.From = Vector2.new((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y)
					tbl.Health.To = Vector2.new(tbl.Health.From.X, tbl.Health.From.Y - (Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth) * tbl.Box.Size.Y)
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

				if values.visuals.players.weapon.Toggle then
					tbl.Weapon.Color = values.visuals.players.weapon.Color
					tbl.Weapon.Text = Player.Character.EquippedTool.Value
					tbl.Weapon.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)
					tbl.Weapon.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
					tbl.Weapon.Outline = Text
					tbl.Weapon.Size = values.visuals.players.size.Slider
					tbl.Weapon.Visible = OnScreen
				else
					tbl.Weapon.Visible = false
				end

				if values.visuals.players["weapon icon"].Toggle then
					Items[Player.Name].ImageColor3 = values.visuals.players["weapon icon"].Color
					Items[Player.Name].Image = GetIcon.getWeaponOfKiller(Player.Character.EquippedTool.Value)
					Items[Player.Name].Position = UDim2.new(0, tbl.Box.Size.X/2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22))
					Items[Player.Name].Visible = OnScreen
				else
					Items[Player.Name].Visible = false
				end

				if values.visuals.players.name.Toggle then
					tbl.Name.Color = values.visuals.players.name.Color
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
				if table.find(values.visuals.players.indicators.Jumbobox, "armor") and Player:FindFirstChild("Kevlar") then
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
					for i,v in pairs(tbl) do
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
	mt.__namecall = newcclosure(function(self, ...)
		local method = tostring(getnamecallmethod())
		local args = {...}

		if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then
			if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active and LocalPlayer.Character then
				args[1] = args[1] * CFrame.new(9999, -9999, 9999)
			else
				if values.visuals.self["viewmodel changer"].Toggle then
					args[1] = args[1] * ViewmodelOffset
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
			if string.len(self.Name) == 38 then
				return
			elseif self.Name == "FallDamage" and table.find(values.misc.client["damage bypass"].Jumbobox, "fall") or values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
				return
			elseif self.Name == "BURNME" and table.find(values.misc.client["damage bypass"].Jumbobox, "fire") then
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
			if self.Name == "ReplicateCamera" then
				if idk and too ~= nil then
					args[1] = too
				end
				if wtf and too and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
					args[1] = LocalPlayer.Character.Head.CFrame
				end
			end
		end
		if method == "FindPartOnRayWithWhitelist" and not checkcaller() and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
			if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then
				local Team = LocalPlayer.Status.Team.Value

				if table.find(values.misc.client.shop.Jumbobox, "anywhere") then
					return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2
				end
			end
		end
		if method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then
			if table.find(values.misc.client["gun modifiers"].Jumbobox, "penetration") then
				table.insert(args[2], workspace.Map)
			end
			if not checkcaller() or Filter then
				if table.find(values.misc.client["gun modifiers"].Jumbobox, "spread") then
					args[1] = Ray.new(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)
				end
				if values.legit.aimbot["silent aim"].Toggle then
					local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
					local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
					local Closest = 9999
					local Target

					if not table.find(Stats.conditions.Jumbobox, "smoke") then
						table.insert(Ignore, workspace.Ray_Ignore)
					end

					coroutine.wrap(function()
						if not table.find(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
							if not table.find(Stats.conditions.Jumbobox, "blind") or SelfVelocity < 3 then
								for _,Player in pairs(Players:GetPlayers()) do
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
															if not table.find(Stats.conditions.Jumbobox, "visible") then
																Target = Hitbox
															else
																local Ray1 = Ray.new(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude)
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
							args[1] = Ray.new(Camera.CFrame.Position, (Target.Position - Camera.CFrame.Position).unit * (Target.Position - Camera.CFrame.Position).magnitude)
						end
					end)()
				end
				if RageTarget ~= nil then
					local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.Head.Position + Vector3.new(0, 1.425, 0) or Camera.CFrame.p
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
			if values.rage.others["leg movement"].Dropdown == "slide 1" then
				if string.find(args[1].Name, "Walk") or string.find(args[1].Name, "Run") then
					args[1] = FakeAnim
				end
			elseif values.rage.others["leg movement"].Dropdown == "slide 2" then
				if string.find(args[1].Name, "Walk") or string.find(args[1].Name, "Run") or string.find(args[1].Name, "Jump") then
					args[1] = FakeAnim
				end
			elseif values.rage.others["leg movement"].Dropdown == "no jump anim" then
				if string.find(args[1].Name, "Jump") then
					args[1] = FakeAnim
				end
			end
			if values.rage.others["no animations"].Toggle then
				args[1] = FakeAnim
			end
		end
		if method == "FireServer" and self.Name == "HitPart" then	
			if RageTarget ~= nil then
			if values.rage.aimbot["force hit"].Toggle then
				args[1] = RageTarget.Parent.Head
				args[2] = RageTarget.Parent.Head.Position
			end
			
			if values.visuals.world["impacts"].Toggle then
				coroutine.wrap(function()
					

				local BillboardGui = Instance.new("BillboardGui")
				local ImageLabel = Instance.new("ImageLabel")
				


				
				
					BillboardGui.Parent = RageTarget
					BillboardGui.Active = true
					BillboardGui.AlwaysOnTop = true
					BillboardGui.LightInfluence = 1.000
					BillboardGui.Size = UDim2.new(0, 50, 0, 50)
					BillboardGui.StudsOffsetWorldSpace = Vector3.new(0.10000000149011612, 0, 0)
					
					ImageLabel.Parent = BillboardGui
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDim2.new(0, 9, 0, 0)
					ImageLabel.Selectable = true
					ImageLabel.Size = UDim2.new(0, 50, 0, 50)
					ImageLabel.Image = "http://www.roblox.com/asset/?id=5544769872"

				
					wait(values.visuals.world['impacts time'].Slider)
					
					
					
					RageTarget.BillboardGui:Destroy()
				end)()
			end
			if method == "FireServer" and self.Name == "HitPart" and tick() - lasthittick > 0.005 then
				lasthittick = tick()
				spawn(function()
					if values.visuals.world["bullet tracers"].Toggle then
						local Beam = createbullettracer(LocalPlayer.Character.UpperTorso.Position, args[2])
					end
				end)
			end
		
			if values.rage.aimbot["prediction"].Dropdown ~= "off" then
				coroutine.wrap(function()
					if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
						if values.rage.aimbot["prediction"].Dropdown == "old pos" then
							local hrp = RageTarget.Parent.HumanoidRootPart.Position
							local oldhrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value
							local vel = (Vector3.new(hrp.X, 0, hrp.Z) - Vector3.new(oldhrp.X, 0, oldhrp.Z)) / LastStep
							local dir = Vector3.new(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude)
							args[2] = args[2] + dir * (Ping / (math.pow(Ping, -1)) * (dir / (dir / -2)))
						elseif values.rage.aimbot["prediction"].Dropdown == "velocity" then
							local hrpvel = RageTarget.Parent.HumanoidRootPart.Velocity

							local velocity = Vector3.new(hrpvel.X, 0, hrpvel.Z)
							local direction = Vector3.new(velocity.X / velocity.magnitude, 0, velocity.Z / velocity.magnitude)

							args[2] = args[2] + direction * (Ping / (math.pow(Ping, -1)) * (direction / (direction / -2)))
							args[4] = 0
							args[12] = args[12] - 500
						elseif values.rage.aimbot["prediction"].Dropdown == "test" then
							local p1 = RageTarget.Parent.HumanoidRootPart.Position
							local p2 = RageTarget.Parent.HumanoidRootPart.OldPosition.Value
							local p3 = RageTarget.Parent.HumanoidRootPart.Velocity

							local p4 = (Vector3.new(p1.X, 0, p1.Z) + Vector3.new(p3.X, 0, p3.Z))
							local p5 = (Vector3.new(p4.X, 0, p4.Z) - Vector3.new(p2.X, 0, p2.Z)) / LastStep
							local p6 = Vector3.new(p5.X / p5.magnitude, 0, p5.Z / p5.magnitude)

							args[2] = args[2] + p6 * (Ping / (math.pow(Ping, -1)) * (p6 / (p6 / -2)))
							args[4] = 0
							args[12] = args[12] - 500
						end
					end
				end)()
			end
		end	
		end
		
		return oldNamecall(self, unpack(args))
	end)
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
	mt.__newindex = newcclosure(function(self, i, v)
		if self:IsA("Humanoid") and i == "JumpPower" and not checkcaller() then
			if values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
				v = 24
			end
			if values.misc.movement["edge bug"].Toggle and values.misc.movement["edge bug"].Active then
				v = 0
			end
		end
		if self:IsA("Humanoid") and i == "CameraOffset" then
			if values.rage.angles.enabled.Toggle and values.rage.angles["body roll"].Dropdown == "180" and not DisableAA then
				v = v + Vector3.new(0, -3.5, 0)
			end
		end

		return oldNewIndex(self, i, v)
	end)
	Crosshair:GetPropertyChangedSignal("Visible"):Connect(function(current)
		if not LocalPlayer.Character then return end
		if not values.visuals.effects["force crosshair"].Toggle then return end
		if LocalPlayer.Character:FindFirstChild("AIMING") then return end
		
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
					RunService.Heartbeat:Wait()
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
		sound.SoundId = values.visuals.world.hitsound.Dropdown == "csgo headshot" and "rbxassetid://5764885927" or values.visuals.world.hitsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.hitsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.visuals.world.hitsound.Dropdown == "moan" and moans[math.random(1, table.getn(moans))] or values.visuals.world.hitsound.Dropdown  == "1" and "rbxassetid://7349055654" or values.visuals.world.hitsound.Dropdown == "semi" and "rbxassetid://7791675603" or values.visuals.world.hitsound.Dropdown == "baimware" and "rbxassetid://6607339542" or values.visuals.world.hitsound.Dropdown == "neverlose" and "rbxassetid://6607204501" or values.visuals.world.hitsound.Dropdown == "headshot" and headshots[math.random(1, table.getn(headshots))]
		sound.Volume = values.visuals.world["sound volume"].Slider * 1.5
		sound.PlayOnRemove = true
		sound:Destroy()
	end)
	LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
		if current == 0 then return end
		if values.misc.chat["kill say"].Toggle then
			game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat["message"].Text ~= "" and values.misc.chat["message"].Text or killsays[math.random(1, table.getn(killsays))], false, "Innocent", false, true)
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
				if table.find(values.visuals.effects.removals.Jumbobox, "smokes") then
					smoke.ParticleEmitter.Rate = 0
				end
			end)
		end
	end)
	if RayIgnore:FindFirstChild("Smokes") then
		for _,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
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
			if table.find(values.visuals.effects.removals.Jumbobox, "smokes") then
				smoke.ParticleEmitter.Rate = 0
			end
		end)
	end
	Camera.ChildAdded:Connect(function(obj)
		if table.find(values.misc.client["gun modifiers"].Jumbobox, "ammo") then
			Client.ammocount = math.huge
			Client.primarystored = math.huge
			Client.ammocount2 = math.huge
			Client.secondarystored = math.huge
		end
		RunService.RenderStepped:Wait()
		if obj.Name ~= "Arms" then return end
		local Model
		for i,v in pairs(obj:GetChildren()) do
			if v:IsA("Model") and (v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm")) then
				Model = v
			end
		end
		if Model == nil then return end
		for i,v in pairs(obj:GetChildren()) do
			if (v:IsA("BasePart") or v:IsA("Part")) and v.Transparency ~= 1 and v.Name ~= "Flash" then
				local valid = true
				if v:IsA("Part") or v:IsA("MeshPart") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then
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
					local success3, err3 = pcall(function()
						local OriginalTexture = Instance.new("StringValue")
						OriginalTexture.Value = v.TextureID
						OriginalTexture.Name = "OriginalTexture"
						OriginalTexture.Parent = v
					end)
					if success or success2 or success3 then valid = true end
				end

				for i2,v2 in pairs(v:GetChildren()) do
					if (v2:IsA("BasePart") or v2:IsA("Part")) then
						table.insert(WeaponObj, v2)
					end
				end

				if valid then
					table.insert(WeaponObj, v)
				end
			end
		end

		local gunname = Client.gun ~= "none" and values.skins.knife["knife changer"].Toggle and Client.gun:FindFirstChild("Melee") and values.skins.knife.model.Scroll or Client.gun ~= "none" and Client.gun.Name
		if values.skins.skins["skin changer"].Toggle and gunname ~= nil and Skins:FindFirstChild(gunname) then
			if values.skins.skins.skin.Scroll[gunname] ~= "Inventory" then
				MapSkin(gunname, values.skins.skins.skin.Scroll[gunname])
			end
		end
		for _,v in pairs(WeaponObj) do
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
			local rmatselected = values.visuals.effects["arm material"].Dropdown
			local OriginalColor = Instance.new("Color3Value")
			OriginalColor.Value = RArm.Color
			OriginalColor.Name = "Color3Value"
			OriginalColor.Parent = RArm
			if values.visuals.effects["arm chams"].Toggle then
				UpdateArm(RArm)
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
				if values.visuals.effects["glove chams"].Toggle then
					UpdateGlove(RGlove)
				end
			end
			RSleeve = RArm:FindFirstChild("Sleeve")
			if RSleeve ~= nil then
				local SleeveTexture = Instance.new("StringValue")
				SleeveTexture.Value = RSleeve.Mesh.TextureId
				SleeveTexture.Name = "StringValue"
				SleeveTexture.Parent = RSleeve
				if values.visuals.effects["sleeve chams"].Toggle then
					UpdateSleeve(RSleeve)
				end
			end
		end
		if LArm then
			local OriginalColor = Instance.new("Color3Value")
			OriginalColor.Value = LArm.Color
			OriginalColor.Name = "Color3Value"
			OriginalColor.Parent = LArm
			if values.visuals.effects["arm chams"].Toggle then
				UpdateArm(LArm)
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
				if values.visuals.effects["glove chams"].Toggle then
					UpdateGlove(LGlove)
				end
			end
			LSleeve = LArm:FindFirstChild("Sleeve")
			if LSleeve ~= nil then
				local SleeveTexture = Instance.new("StringValue")
				SleeveTexture.Value = LSleeve.Mesh.TextureId
				SleeveTexture.Name = "StringValue"
				SleeveTexture.Parent = LSleeve
				if values.visuals.effects["sleeve chams"].Toggle then
					UpdateSleeve(LSleeve)
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
		if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
			Camera.FieldOfView = values.visuals.self["fov changer"].Slider
		end
	end)
	LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function(cash)
		if values.misc.client["infinite cash"].Toggle and cash ~= 900000000 then
			LocalPlayer.Cash.Value = 900000000
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
			table.insert(Collision, obj)
		end
		if obj:IsA("Part") then
			if obj.Name == "HeadHB" or obj.Name == "FakeHead" then
				table.insert(Collision, obj)
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

			if values.rage.others["remove clothes"].Toggle then
				char:FindFirstChildOfClass("Shirt").ShirtTemplate = ""
			end
		end
		if char:FindFirstChildOfClass("Pants") then
			local String = Instance.new("StringValue")
			String.Name = "OriginalTexture"
			String.Value = char:FindFirstChildOfClass("Pants").PantsTemplate
			String.Parent = char:FindFirstChildOfClass("Pants")

			if values.rage.others["remove clothes"].Toggle then
				char:FindFirstChildOfClass("Pants").PantsTemplate = ""
			end
		end
		for i,v in pairs(char:GetChildren()) do
			if v:IsA("BasePart") and v.Transparency ~= 1 then
				table.insert(SelfObj, v)
				local Color = Instance.new("Color3Value")
				Color.Name = "OriginalColor"
				Color.Value = v.Color
				Color.Parent = v

				local String = Instance.new("StringValue")
				String.Name = "OriginalMaterial"
				String.Value = v.Material.Name
				String.Parent = v
			elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
				table.insert(SelfObj, v.Handle)
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
			for _,obj in pairs(SelfObj) do
				if obj.Parent ~= nil then
					obj.Material = Enum.Material.ForceField
					obj.Color = values.visuals.self["self chams"].Color
				end
			end
		end
		LocalPlayer.Character.ChildAdded:Connect(function(Child)
			if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then
				table.insert(SelfObj, Child.Handle)
				local Color = Instance.new("Color3Value")
				Color.Name = "OriginalColor"
				Color.Value = Child.Handle.Color
				Color.Parent = Child.Handle

				local String = Instance.new("StringValue")
				String.Name = "OriginalMaterial"
				String.Value = Child.Handle.Material.Name
				String.Parent = Child.Handle

				if values.visuals.self["self chams"].Toggle then
					for _,obj in pairs(SelfObj) do
						if obj.Parent ~= nil then
							obj.Material = Enum.Material.ForceField
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
		for i,v in pairs(LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") and v.Transparency ~= 1 then
				table.insert(SelfObj, v)
				local Color = Instance.new("Color3Value")
				Color.Name = "OriginalColor"
				Color.Value = v.Color
				Color.Parent = v

				local String = Instance.new("StringValue")
				String.Name = "OriginalMaterial"
				String.Value = v.Material.Name
				String.Parent = v
			elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
				table.insert(SelfObj, v.Handle)
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
			for _,obj in pairs(SelfObj) do
				if obj.Parent ~= nil then
					obj.Material = Enum.Material.ForceField
					obj.Color = values.visuals.self["self chams"].Color
				end
			end
		end
		LocalPlayer.Character.ChildAdded:Connect(function(Child)
			if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then
				table.insert(SelfObj, Child.Handle)
				local Color = Instance.new("Color3Value")
				Color.Name = "OriginalColor"
				Color.Value = Child.Handle.Color
				Color.Parent = Child.Handle

				local String = Instance.new("StringValue")
				String.Name = "OriginalMaterial"
				String.Value = Child.Handle.Material.Name
				String.Parent = Child.Handle
				
				if values.visuals.self["self chams"].Toggle then
					for _,obj in pairs(SelfObj) do
						if obj.Parent ~= nil then
							obj.Material = Enum.Material.ForceField
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
				for _2,Obj in pairs(Player.Character:GetDescendants()) do
					if Obj.Name == "VisibleCham" then
						if values.visuals.players["outer chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								Obj.Visible = true
							else
								Obj.Visible = false
							end
						else
							Obj.Visible = false
						end
						Obj.Color3 = values.visuals.players["outer chams"].Color
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
				for _,obj in pairs(Character:GetChildren()) do
					if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
						local VisibleCham = Instance.new("BoxHandleAdornment")
						VisibleCham.Name = "VisibleCham"
						VisibleCham.AlwaysOnTop = false
						VisibleCham.ZIndex = 8
						VisibleCham.Size = obj.Size + Vector3.new(0.19,0.19,0.19)
						VisibleCham.AlwaysOnTop = false
						VisibleCham.Transparency = 0.05


						if values.visuals.players["outer chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								VisibleCham.Visible = true
							else
								VisibleCham.Visible = false
							end
						else
							VisibleCham.Visible = false
						end

						table.insert(ChamItems, VisibleCham)

						VisibleCham.Color3 = values.visuals.players["outer chams"].Color

						VisibleCham.AdornCullingMode = "Never"

						VisibleCham.Adornee = obj
						VisibleCham.Parent = obj
					end
				end
			end
		end)
	end)
	for _,Player in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			Player:GetPropertyChangedSignal("Team"):Connect(function(new)
				wait()
				if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
					for _2,Obj in pairs(Player.Character:GetDescendants()) do
						if Obj.Name == "VisibleCham"then
							if values.visuals.players["outer chams"].Toggle then
								if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
									Obj.Visible = true
								else
									Obj.Visible = false
								end
							else
								Obj.Visible = false
							end
							Obj.Color3 = values.visuals.players["outer chams"].Color
						end
					end
				end
			end)
		else
			LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new)
				wait()
				for _,Player in pairs(Players:GetPlayers()) do
					if Player.Character then
						for _2,Obj in pairs(Player.Character:GetDescendants()) do
							if Obj.Name == "VisibleCham" then
								if values.visuals.players["outer chams"].Toggle then
									if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
										Obj.Visible = true
									else
										Obj.Visible = false
									end
								else
									Obj.Visible = false
								end
								Obj.Color3 = values.visuals.players["outer chams"].Color
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
				for _,obj in pairs(Player.Character:GetChildren()) do
					if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
						local VisibleCham = Instance.new("BoxHandleAdornment")
						VisibleCham.Name = "VisibleCham"
						VisibleCham.AlwaysOnTop = false
						VisibleCham.ZIndex = 5
						VisibleCham.Size = obj.Size + Vector3.new(0.19,0.19,0.19)
						VisibleCham.AlwaysOnTop = false
						VisibleCham.Transparency = 0.05


						if values.visuals.players["outer chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								VisibleCham.Visible = true
							else
								VisibleCham.Visible = false
							end
						else
							VisibleCham.Visible = false
						end

						table.insert(ChamItems, VisibleCham)

						VisibleCham.Color3 = values.visuals.players["outer chams"].Color

						VisibleCham.AdornCullingMode = "Never"

						VisibleCham.Adornee = obj
						VisibleCham.Parent = obj
					end
				end
			end
		end)
		if Player.Character ~= nil and Player.Character:FindFirstChild("UpperTorso") then
			local Value = Instance.new("Vector3Value")
			Value.Name = "OldPosition"
			Value.Value = Player.Character.HumanoidRootPart.Position
			Value.Parent = Player.Character.HumanoidRootPart
			for _,obj in pairs(Player.Character:GetChildren()) do
				CollisionTBL(obj)
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
					local VisibleCham = Instance.new("BoxHandleAdornment")
					VisibleCham.Name = "VisibleCham"
					VisibleCham.AlwaysOnTop = false
					VisibleCham.ZIndex = 5
					VisibleCham.Size = obj.Size + Vector3.new(0.19,0.19,0.19)
					VisibleCham.AlwaysOnTop = false
					VisibleCham.Transparency = 0.05


					if values.visuals.players["outer chams"].Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							VisibleCham.Visible = true
						else
							VisibleCham.Visible = false
						end
					else
						VisibleCham.Visible = false
					end

					table.insert(ChamItems, VisibleCham)

					VisibleCham.Color3 = values.visuals.players["outer chams"].Color

					VisibleCham.AdornCullingMode = "Never"

					VisibleCham.Adornee = obj
					VisibleCham.Parent = obj
				end
			end
		end
	end

	Players.PlayerAdded:Connect(function(Player)
		Player:GetPropertyChangedSignal("Team"):Connect(function(new)
			wait()
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
				for _2,Obj in pairs(Player.Character:GetDescendants()) do
					if Obj.Name == "WallCham" then
						if values.visuals.players["inner chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								Obj.Visible = true
							else
								Obj.Visible = false
							end
						else
							Obj.Visible = false
						end
						Obj.Color3 = values.visuals.players["inner chams"].Color
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
				for _,obj in pairs(Character:GetChildren()) do
					if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then

						local WallCham = Instance.new("BoxHandleAdornment")
						WallCham.Name = "WallCham"
						WallCham.AlwaysOnTop = true
						WallCham.ZIndex = 5
						WallCham.Size = obj.Size + Vector3.new(0.058,0.058,0.058)
						WallCham.AlwaysOnTop = true
						WallCham.Transparency = 0.66

						if values.visuals.players["inner chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								WallCham.Visible = true
							else
								WallCham.Visible = false
							end
						else
							WallCham.Visible = false
						end

						table.insert(ChamItems, WallCham)

						WallCham.Color3 = values.visuals.players["inner chams"].Color

						WallCham.AdornCullingMode = "Never"

						WallCham.Adornee = obj
						WallCham.Parent = obj
					end
				end
			end
		end)
	end)
	for _,Player in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			Player:GetPropertyChangedSignal("Team"):Connect(function(new)
				wait()
				if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
					for _2,Obj in pairs(Player.Character:GetDescendants()) do
						if Obj.Name == "WallCham" then
							if values.visuals.players["inner chams"].Toggle then
								if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
									Obj.Visible = true
								else
									Obj.Visible = false
								end
							else
								Obj.Visible = false
							end
							Obj.Color3 = values.visuals.players["inner chams"].Color
						end
					end
				end
			end)
		else
			LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new)
				wait()
				for _,Player in pairs(Players:GetPlayers()) do
					if Player.Character then
						for _2,Obj in pairs(Player.Character:GetDescendants()) do
							if Obj.Name == "WallCham" then
								if values.visuals.players["inner chams"].Toggle then
									if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
										Obj.Visible = true
									else
										Obj.Visible = false
									end
								else
									Obj.Visible = false
								end
								Obj.Color3 = values.visuals.players["inner chams"].Color
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
				for _,obj in pairs(Player.Character:GetChildren()) do
					if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then

						local WallCham = Instance.new("BoxHandleAdornment")
						WallCham.Name = "WallCham"
						WallCham.AlwaysOnTop = true
						WallCham.ZIndex = 5
						WallCham.Size = obj.Size + Vector3.new(0.058,0.058,0.058)
						WallCham.AlwaysOnTop = true
						WallCham.Transparency = 0.66

						if values.visuals.players["inner chams"].Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								WallCham.Visible = true
							else
								WallCham.Visible = false
							end
						else
							WallCham.Visible = false
						end

						table.insert(ChamItems, WallCham)

						WallCham.Color3 = values.visuals.players["inner chams"].Color

						WallCham.AdornCullingMode = "Never"

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
			for _,obj in pairs(Player.Character:GetChildren()) do
				CollisionTBL(obj)
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then

					local WallCham = Instance.new("BoxHandleAdornment")
					WallCham.Name = "WallCham"
					WallCham.AlwaysOnTop = true
					WallCham.ZIndex = 5
					WallCham.Size = obj.Size + Vector3.new(0.058,0.058,0.058)
					WallCham.AlwaysOnTop = true
					WallCham.Transparency = 0.66

					if values.visuals.players["inner chams"].Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							WallCham.Visible = true
						else
							WallCham.Visible = false
						end
					else
						WallCham.Visible = false
					end

					table.insert(ChamItems, WallCham)

					WallCham.Color3 = values.visuals.players["inner chams"].Color

					WallCham.AdornCullingMode = "Never"

					WallCham.Adornee = obj
					WallCham.Parent = obj
				end
			end
		end
	end