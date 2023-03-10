local a = getfenv
local StoredObjects = {}
local TabBases = {}

local function setProperties(Object, Properties)
    for Property, Value in next, Properties do
        Object[Property] = Value
    end
end

local function createObject(Class, Properties)
    if not StoredObjects[Class] then
        StoredObjects[Class] = Instance.new(Class)
    end
    
    local CreatedObject = StoredObjects[Class].Clone(StoredObjects[Class])

    for Property, Value in next, Properties do
        CreatedObject[Property] = Value
    end

    return CreatedObject
end

local function createDrawing(Class, Properties)
    local CreatedDrawing = Drawing.new(Class)

    for Property, Value in next, Properties do
         CreatedDrawing[Property] = Value
    end

    return CreatedDrawing
end

local findService = setmetatable({}, {
    __index = function(self, Service)
        return game.GetService(game, Service)
    end
})

local function generateRandomString(Length)
    local Length = Length and Length or 32
    local GeneratedString = {}
    
    for Index = 1, Length do 
        GeneratedString[Index] = Index % 3 == 0 and string.char(math.random(65, 90)) or string.char(math.random(97, 122))
    end

    return table.concat(GeneratedString)
end

local function tweenObject(Object, Info, Properties)
    local CreatedTween = findService.TweenService:Create(Object, TweenInfo.new(unpack(Info)), Properties)

    CreatedTween:Play()

    return CreatedTween
end

local function waitTime(Time)
	local Time = tick() + Time
	repeat until tick() >= Time
end

local function nextElement(Table, Index)
	Index = Index + 1

	if Index <= #Table then
		return Index, Table[Index]
	end

	return nil
end

local function enumerateTable(Table)
	return nextElement, Table, 0
end

local function tableConcat(Table)

end

local function tableForEach(Table, Function)

end

local function tableInsert(Table, Value)
	Table[#Table + 1] = Value
end

local function tableRemove(Table, Index)
	local OldValue = Table[Index]

	Table[Index] = nil

	return OldValue
end


local CreatedComponents = {
    Buttons = {},
    Checkboxes = {},
    Colorpickers = {},
    Dropdowns = {},
    Keybinds = {},
    Sliders = {}
}

local MenuAccentColor = Color3.fromRGB(154, 239, 207)

local TweenService = game:GetService("TweenService")

local Bootstrapper = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")

Bootstrapper.Name = "Bootstrapper"
Bootstrapper.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Bootstrapper.ZIndexBehavior = Enum.ZIndexBehavior.Global
Bootstrapper.DisplayOrder = 2147483646

Main.Name = "Main"
Main.Parent = Bootstrapper
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(154, 239, 207)
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 342, 0, 135)
Main.BackgroundTransparency = 1
Main.ZIndex = 50

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.5, -50, 0.5, -50)
Logo.Size = UDim2.new(0, 100, 0, 100)
Logo.Image = "http://www.roblox.com/asset/?id=5660053998"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.ImageTransparency = 1
Logo.ZIndex = 51

TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

wait(0.25)
TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()

wait(2)
TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()

wait(0.25)
TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(19, 17, 25)}):Play()

local createMenu
do
	local s_scrollingframe, s_uigrid, s_uiaspect, s_uigradient, s_imagebutton, s_imagelabel, s_screengui, s_textbutton, s_textlabel, s_frame, g_enum, l_table, g_unpack, g_error, l_color3, d_udim, l_math, g_wait, l_coroutine, l_string, d_udim2, d_vector2, g_tonumber, g_tostring, g_pairs, g_pcall = "ScrollingFrame", "UIGridLayout", "UIAspectRatioConstraint", "UIGradient", "ImageButton", "ImageLabel", "ScreenGui", "TextButton", "TextLabel", "Frame", a()["Enum"], a()["table"], a()["unpack"], a()["error"], a()["Color3"], a()["UDim"], a()["math"], a()["wait"], a()["coroutine"], a()["string"], a()["UDim2"], a()["Vector2"], a()["tonumber"], a()["tostring"], a()["pairs"], a()["pcall"]
	local l_table_find, l_table_remove, l_table_insert, l_string_format, l_string_upper, l_color3_fromrgb, l_color3_tohsv, l_color3_fromhsv, d_udim_new, l_math_random, l_coroutine_wrap, l_string_char, l_string_sub, l_string_gsub, d_udim2_new, d_vector2_new = l_table["find"], l_table["remove"], l_table["insert"], l_string["format"], l_string["upper"], l_color3["fromRGB"], l_color3["toHSV"], l_color3["fromHSV"], d_udim["new"], l_math["random"], l_coroutine["wrap"], l_string["char"], l_string["sub"], l_string["gsub"], d_udim2["new"], d_vector2["new"]

	findService["ContentProvider"]["PreloadAsync"](findService["ContentProvider"], {"rbxasset://textures/ui/Scroll/scroll-middle.png", "http://www.roblox.com/asset/?id=5239373522", "http://www.roblox.com/asset/?id=5219455792", "http://www.roblox.com/asset/?id=4829792375", "http://www.roblox.com/asset/?id=4829902793", "http://www.roblox.com/asset/?id=4829798864", "http://www.roblox.com/asset/?id=4829781347"})
	
	local menu_accent_color = l_color3_fromrgb(154, 239, 207)

	local function scale_scrolling_frame(arguments)
		local scrolling_frame, ui_list_layout = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
		
		local function initiate_function()
			local function update_size()
				scrolling_frame["CanvasSize"] = d_udim2_new(0, 0, 0, ui_list_layout["AbsoluteContentSize"]["Y"] + 32)
			end
			
			ui_list_layout["GetPropertyChangedSignal"](ui_list_layout, "AbsoluteContentSize")["Connect"](ui_list_layout["GetPropertyChangedSignal"](ui_list_layout, "AbsoluteContentSize"), update_size)
			return nil
		end
		
		local function_success, function_result = g_pcall(initiate_function)
		
		return nil
	end
	
	createMenu = function(arguments)
		local is_mouse_over, TabBases, tab_button_bases = false, {}, {}
		local menu_screen_gui, menu_frame, menu_cover_frame, dragging, drag_input, drag_start, start_pos, bind_name
		
		local function initiate_component()
			TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1, Size = UDim2.new(0.303, 0, 0.371, 0)}):Play()

			wait(0.15)
			menu_screen_gui = createObject(s_screengui, {["DisplayOrder"] = 2147483647, ["Enabled"] = true, ["IgnoreGuiInset"] = false, ["Name"] = generateRandomString(), ["Parent"] = nil, ["ResetOnSpawn"] = false, ["ZIndexBehavior"] = g_enum["ZIndexBehavior"]["Global"], ["Archivable"] = true, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
			
			for index, gui_object in g_pairs(findService["CoreGui"]["GetChildren"](findService["CoreGui"])) do
				if gui_object["IsA"](gui_object, s_screengui) then
					if gui_object["DisplayOrder"] == 2147483647 and gui_object["IgnoreGuiInset"] == false and gui_object["ResetOnSpawn"] == false and gui_object["ZIndexBehavior"] == g_enum["ZIndexBehavior"]["Global"] then
						if menu_screen_gui["FindFirstChildOfClass"](menu_screen_gui, s_frame)["BackgroundColor3"] == l_color3_fromrgb(19, 17, 25) then
							menu_screen_gui["Destroy"](menu_screen_gui)
							g_error()
						end
					end
				end
			end

			menu_frame = createObject(s_frame, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(19, 17, 25), ["BackgroundTransparency"] = 0, ["BorderColor3"] = menu_accent_color, ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = menu_screen_gui, ["Position"] = d_udim2_new(0.5, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.303, 0, 0.371, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
			menu_cover_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(19, 17, 25), ["BackgroundTransparency"] = 0, ["BorderColor3"] = menu_accent_color, ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = menu_frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = 2147483645, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
			createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = menu_frame, ["Archivable"] = true, ["AspectRatio"] = 1.449, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
			createObject(s_uigrid, {["CellPadding"] = d_udim2_new(0.222, 0, 0.103, 0), ["CellSize"] = d_udim2_new(0.177, 0, 0.259, 0), ["Name"] = generateRandomString(), ["Parent"] = menu_cover_frame, ["Archivable"] = true, ["FillDirection"] = g_enum["FillDirection"]["Horizontal"], FillDirectionMaxCells = 2, HorizontalAlignment = g_enum["HorizontalAlignment"]["Center"], ["SortOrder"] = g_enum["SortOrder"]["LayoutOrder"], ["StartCorner"] = g_enum["StartCorner"]["TopLeft"], ["VerticalAlignment"] = g_enum["VerticalAlignment"]["Center"]})
			syn["protect_gui"](menu_screen_gui)
			menu_screen_gui["Parent"], bind_name = findService["CoreGui"], generateRandomString()
			
			local function mouse_enter()
				is_mouse_over = true
				return nil
			end
			
			local function mouse_leave()
				is_mouse_over = false
				return nil
			end
			
			local function gui_input_began(input_object)
				local gui_objects_over_mouse, gui_count = findService["CoreGui"]["GetGuiObjectsAtPosition"](findService["CoreGui"], input_object["Position"]["X"], input_object["Position"]["Y"]), 0
				
				for index, value in g_pairs(gui_objects_over_mouse) do 
					if value["IsDescendantOf"](value, menu_screen_gui) then
						gui_count = gui_count + 1
					end
				end

				if gui_count == 2 and input_object["UserInputType"] == g_enum["UserInputType"]["MouseButton1"] then
					dragging, drag_start, start_pos = true, input_object["Position"], menu_frame["Position"]
					
					local function changed()
						if input_object["UserInputState"] == g_enum["UserInputState"]["End"] then
							dragging = false
						end
						return nil
					end
					
					input_object["Changed"]["Connect"](input_object["Changed"], changed)
				end
				return nil
			end
			
			local function gui_input_changed(input_object)
				if input_object["UserInputType"] == g_enum["UserInputType"]["MouseMovement"] then
					drag_input = input_object
				end
				return nil
			end
			
			local function input_changed(input_object)
				if input_object == drag_input and dragging then
					local delta = input_object["Position"] - drag_start
					menu_frame["Position"] = d_udim2_new(start_pos["X"]["Scale"], start_pos["X"]["Offset"] + delta["X"], start_pos["Y"]["Scale"], start_pos["Y"]["Offset"] + delta["Y"])
				end
				return nil
			end
			
			local function change_mouse_state()
				if menu_screen_gui then
					findService["UserInputService"]["MouseIconEnabled"] = true
				end
				return nil
			end
			
			local function unbind_mouse_state()
				return findService["RunService"]["UnbindFromRenderStep"](findService["RunService"], bind_name)
			end
			
			local function input_began(input_object, game_processed)
				if game_processed == false and input_object["UserInputType"] == g_enum["UserInputType"]["Keyboard"] then
					if input_object["KeyCode"] == g_enum["KeyCode"]["Insert"] then
						local last_state = findService["UserInputService"]["MouseIconEnabled"]
						if menu_frame["Size"] == d_udim2_new() then
							menu_screen_gui["Enabled"], bind_name = true, generateRandomString()
							tweenObject(menu_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Size"] = d_udim2_new(0.303, 0, 0.371, 0)})
							findService["RunService"]["BindToRenderStep"](findService["RunService"], bind_name, 1, change_mouse_state)
						elseif menu_frame["Size"] == d_udim2_new(0.303, 0, 0.371, 0) then
							tweenObject(menu_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Size"] = d_udim2_new()})
							g_pcall(unbind_mouse_state)
							menu_screen_gui["Enabled"], findService["UserInputService"]["MouseIconEnabled"] = g_wait(0.15) and false, last_state
						end
					elseif input_object["KeyCode"] == g_enum["KeyCode"]["Home"] and menu_cover_frame["Position"] == d_udim2_new(-1, 0, 0, 0) then 
						tweenObject(menu_cover_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new()})
						g_wait(0.15)
						
						for index, value in g_pairs(TabBases) do
							value["Visible"] = false
						end
					end
				end
				return nil
			end
			
			findService["RunService"]["BindToRenderStep"](findService["RunService"], bind_name, 1, change_mouse_state)
			menu_frame["MouseEnter"]["Connect"](menu_frame["MouseEnter"], mouse_enter)
			menu_frame["MouseLeave"]["Connect"](menu_frame["MouseLeave"], mouse_leave)
			menu_frame["InputBegan"]["Connect"](menu_frame["InputBegan"], gui_input_began)
			menu_frame["InputChanged"]["Connect"](menu_frame["InputChanged"], gui_input_changed)
			findService["UserInputService"]["InputChanged"]["Connect"](findService["UserInputService"]["InputChanged"], input_changed)
			findService["UserInputService"]["InputBegan"]["Connect"](findService["UserInputService"]["InputBegan"], input_began)
			return nil
		end
		
		local component_success, component_result = g_pcall(initiate_component)

		if component_success == true then
			return {
				get_state = function(arguments)
					return menu_frame and menu_frame["Size"] == d_udim2_new(0.303, 0, 0.371, 0) or nil
				end,
				set_menu_color = function(arguments)
					local new_color = arguments and #arguments == 1 and arguments[1] or nil
					
					local function check_color(arguments)
						local color = arguments and #arguments == 1 and arguments[1] or nil
						
						local function initiate_function()
							if color ~= l_color3_fromrgb(19, 17, 25) and color ~= l_color3_fromrgb(32, 28, 37) and color ~= l_color3_fromrgb(51, 48, 57) and color ~= l_color3_fromrgb(255, 255, 255) and color ~= l_color3_fromrgb(41, 38, 46) then
								return true
							end

							return false
						end
						
						local function_success, function_result = g_pcall(initiate_function)
						
						return function_result
					end
					
					local function initiate_function()
						if check_color({new_color}) then
							local old_menu_accent_color = menu_accent_color
							menu_accent_color = new_color
							
							if typeof(old_menu_accent_color) == "Color3" and typeof(menu_accent_color) == "Color3" then
								for index, gui_object in g_pairs(menu_screen_gui["GetDescendants"](menu_screen_gui)) do
									if gui_object["IsA"](gui_object, s_frame) then
										if gui_object["BackgroundColor3"] == old_menu_accent_color and gui_object["Size"]["Y"]["Scale"] == 1 then
											gui_object["BackgroundColor3"] = new_color
										end
									if gui_object["BorderColor3"] == old_menu_accent_color then
											gui_object["BorderColor3"] = new_color
										end
									elseif gui_object["IsA"](gui_object, s_textbutton) or gui_object["IsA"](gui_object, s_textlabel) then
										if gui_object["BackgroundColor3"] == old_menu_accent_color then
											gui_object["BackgroundColor3"] = new_color
										end
										if gui_object["BorderColor3"] == old_menu_accent_color then
											gui_object["BorderColor3"] = new_color
										end
										if gui_object["TextColor3"] == old_menu_accent_color then
											gui_object["TextColor3"] = new_color
										end
									elseif gui_object["IsA"](gui_object, s_scrollingframe) then
										if gui_object["ScrollBarImageColor3"] == old_menu_accent_color then
											gui_object["ScrollBarImageColor3"] = new_color
										end
									end
								end
								
								for index, button_table in g_pairs(tab_button_bases) do
									for index, gui_object in g_pairs(button_table) do
										if gui_object["FindFirstChildOfClass"](gui_object, s_textlabel)["TextColor3"] ~= l_color3_fromrgb(255, 255, 255) then
											gui_object["FindFirstChildOfClass"](gui_object, s_textlabel)["TextColor3"] = new_color
										end
									end
								end
							end
						end
						return nil
					end
					
					local function_success, function_result = g_pcall(initiate_function)
					
					return nil
				end,
				create_tab = function(arguments)
					local component_info, tab_choices, tab_layout, tab_frames, tab_buttons, tabs = arguments and #arguments == 3 and arguments[1] or nil, arguments and #arguments == 3 and arguments[2] or nil, arguments and #arguments == 3 and arguments[3] or nil, {}, {}, {}
					local selection_text_button, selection_text_label, selection_image_label, tab_frame, tab_text_button, tab_frame_holder
					
					local function initiate_component()
						selection_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = menu_cover_frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = menu_cover_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
						selection_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = selection_text_button, ["Position"] = d_udim2_new(-0.393, 0, 0.659, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1.786, 0, 0.3, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = selection_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSansLight"], ["LineHeight"] = 1, ["Text"] = arguments[1][1], ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
						selection_image_label = createObject(s_imagelabel, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = selection_text_button, ["Position"] = d_udim2_new(0.215, 0, 0.175, 0), ["Rotation"] = 0, ["Size"] = d_udim2_new(0.55, 0, 0.55, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = selection_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Image"] = "http://www.roblox.com/asset/?id=" .. arguments[1][2], ["ImageColor3"] = l_color3_fromrgb(255, 255, 255), ["ImageRectOffset"] = d_vector2_new(), ["ImageRectSize"] = d_vector2_new(), ["ImageTransparency"] = 0, ["ScaleType"] = g_enum["ScaleType"]["Fit"], ["SliceScale"] = 1, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
						createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = selection_image_label, ["Archivable"] = true, ["AspectRatio"] = 1, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
						createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = selection_text_button, ["Archivable"] = true, ["AspectRatio"] = 1, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
						
						local function mouse_button1_click()
							tab_frame["Visible"] = true
							tweenObject(menu_cover_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(-1, 0, 0, 0)})
							return nil
						end
						
						local function mouse_enter()
							tweenObject(selection_text_label, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(-0.393, 0, 0.596, 0), ["TextColor3"] = menu_accent_color})
							tweenObject(selection_image_label, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(0.215, 0, 0.075, 0), ["ImageColor3"] = menu_accent_color})
							return nil
						end
						
						local function mouse_leave()
							tweenObject(selection_text_label, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(-0.393, 0, 0.659, 0), ["TextColor3"] = l_color3_fromrgb(255, 255, 255)})
							tweenObject(selection_image_label, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(0.215, 0, 0.175, 0), ["ImageColor3"] = l_color3_fromrgb(255, 255, 255)})
							return nil
						end
						
						selection_text_button["MouseButton1Click"]["Connect"](selection_text_button["MouseButton1Click"], mouse_button1_click)
						selection_text_button["MouseEnter"]["Connect"](selection_text_button["MouseEnter"], mouse_enter)
						selection_text_button["MouseLeave"]["Connect"](selection_text_button["MouseLeave"], mouse_leave)
						return nil
					end
					
					local function initiate_tab()
						tab_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = menu_frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = false, ["ZIndex"] = menu_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
						
						local function sort_tab(arguments)
							local tab_info, tab_table = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
							local frame, text_label, mask_frame, fade_out_frame, scrolling_frame, ui_list_layout, top_fade_frame
							
							for number, value in g_pairs(tab_info) do	
								for index, value in g_pairs(value) do
									if index % 2 ~= 0 then
										frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_table[number], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_table[number]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0.184, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = 2147483644, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = arguments[1][number][index + 1], ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})	
										mask_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["BackgroundColor3"] = l_color3_fromrgb(19, 17, 25), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = frame, ["Position"] = d_udim2_new(0.5, 0, 0, -1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.05, findService["TextService"]["GetTextSize"](findService["TextService"], text_label["Text"], 15, g_enum["Font"]["SourceSans"], d_vector2_new(text_label["Size"]["X"], text_label["Size"]["Y"]))["X"], 0, 1), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = frame["ZIndex"], ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										fade_out_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = frame, ["Position"] = d_udim2_new(0, 0, 0.93, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, -3, 0.07, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = 2147483643, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										top_fade_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = frame, ["Position"] = d_udim2_new(0, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, -3, 0.07, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = 2147483643, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										scrolling_frame = createObject(s_scrollingframe, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = frame, ["Position"] = d_udim2_new(0, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["CanvasPosition"] = d_vector2_new(0, 0), ["CanvasSize"] = d_udim2_new(0, 0, 0, 0), ["ElasticBehavior"] = g_enum["ElasticBehavior"]["WhenScrollable"], ["HorizontalScrollBarInset"] = g_enum["ScrollBarInset"]["None"], ["MidImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["ScrollBarImageColor3"] = menu_accent_color, ["ScrollBarImageTransparency"] = 0, ["ScrollBarThickness"] = 3, ["ScrollingDirection"] = g_enum["ScrollingDirection"]["XY"], ["ScrollingEnabled"] = true, ["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["VerticalScrollBarInset"] = g_enum["ScrollBarInset"]["None"], ["VerticalScrollBarPosition"] = g_enum["VerticalScrollBarPosition"]["Right"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										ui_list_layout = createObject("UIListLayout", {["Padding"] = d_udim_new(0, 10), ["Name"] = generateRandomString(), ["Parent"] = scrolling_frame, ["Archivable"] = true, ["FillDirection"] = g_enum["FillDirection"]["Vertical"], HorizontalAlignment = g_enum["HorizontalAlignment"]["Center"], ["SortOrder"] = g_enum["SortOrder"]["LayoutOrder"], ["VerticalAlignment"] = g_enum["VerticalAlignment"]["Top"]})
										createObject(s_uigradient, {["Color"] = nil, ["Enabled"] = true, ["Offset"] = d_vector2_new(), ["Rotation"] = 270, ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.05), NumberSequenceKeypoint.new(1, 1)}), ["Name"] = generateRandomString(), ["Parent"] = fade_out_frame, ["Archivable"] = true})
										createObject(s_uigradient, {["Color"] = nil, ["Enabled"] = true, ["Offset"] = d_vector2_new(), ["Rotation"] = 90, ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.05), NumberSequenceKeypoint.new(1, 1)}), ["Name"] = generateRandomString(), ["Parent"] = top_fade_frame, ["Archivable"] = true})
										createObject("UIPadding", {["Name"] = generateRandomString(), ["Parent"] = scrolling_frame, ["Archivable"] = true, ["PaddingBottom"] = d_udim_new(), ["PaddingLeft"] = d_udim_new(), ["PaddingRight"] = d_udim_new(), ["PaddingTop"] = d_udim_new(0, 16)})
										createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = text_label, ["Archivable"] = true, ["AspectRatio"] = 13.392, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
										scale_scrolling_frame({scrolling_frame, ui_list_layout})
										l_table_insert(tabs, scrolling_frame)

										if value == 1 then
											frame["Size"] = d_udim2_new(1, 0, 0.344, 0)
											text_label["Position"] = d_udim2_new(0, 0, -0.11, 0)
										elseif value == 2 then
											frame["Size"] = d_udim2_new(1, 0, 0.588, 0)
											text_label["Position"] = d_udim2_new(0, 0, -0.059, 0)
										elseif value == 3 then
											frame["Size"] = d_udim2_new(1, 0, 1, 0)
											text_label["Position"] = d_udim2_new(0, 0, -0.034, 0)
										end
									end
								end
							end
							
							frame, text_label, mask_frame, fade_out_frame, scrolling_frame, ui_list_layout, top_fade_frame = nil, nil, nil, nil, nil, nil, nil
							return nil
						end
						
						if #tab_choices == 1 then
							tab_frame_holder = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Position"] = d_udim2_new(0.5, 0, 0.181, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.926, 0, 0.765, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
							l_table_insert(tab_buttons, createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Position"] = d_udim2_new(0.037, 0, 0.052, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.926, 0, 0.074, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_buttons[1], ["Position"] = d_udim2_new(0, 0, 0.159, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0.668, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = tab_buttons[1]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = tab_choices[1], ["TextColor3"] = menu_accent_color, ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(0.519, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							sort_tab({tab_layout, tab_frames})
						elseif #tab_choices == 2 then 
							tab_frame_holder = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Position"] = d_udim2_new(0.5, 0, 0.181, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.926, 0, 0.765, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
							l_table_insert(tab_buttons, createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Position"] = d_udim2_new(0.037, 0, 0.052, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.46, 0, 0.074, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							l_table_insert(tab_buttons, createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Position"] = d_udim2_new(0.498, 0, 0.052, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.465, 0, 0.074, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_buttons[1], ["Position"] = d_udim2_new(0, 0, 0.159, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0.667, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = tab_buttons[1]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = tab_choices[1], ["TextColor3"] = menu_accent_color, ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
							createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_buttons[2], ["Position"] = d_udim2_new(0, 0, 0.159, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0.667, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = tab_buttons[2]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = tab_choices[2], ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(0.519, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = false, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							l_table_insert(tab_frames, createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tab_frame_holder, ["Position"] = d_udim2_new(0.519, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.483, 0,1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = false, ["ZIndex"] = tab_frame_holder["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
							sort_tab({tab_layout, tab_frames})
						end
						
						for index, tab_frame in g_pairs(tab_frames) do
							createObject("UIListLayout", {["Padding"] = d_udim_new(0.068, 0), ["Name"] = generateRandomString(), ["Parent"] = tab_frame, ["Archivable"] = true, ["FillDirection"] = g_enum["FillDirection"]["Vertical"], HorizontalAlignment = g_enum["HorizontalAlignment"]["Center"], ["SortOrder"] = g_enum["SortOrder"]["LayoutOrder"], ["VerticalAlignment"] = g_enum["VerticalAlignment"]["Top"]})
						end
						
						for index, value in g_pairs(tab_buttons) do
							local function mouse_button1_click()
								for i, value in g_pairs(tab_frames) do
									if index == 1 then
										tab_frames[1]["Visible"], tab_frames[2]["Visible"], tab_frames[3]["Visible"], tab_frames[4]["Visible"] = true, true, false, false
									elseif index == 2 then
										tab_frames[1]["Visible"], tab_frames[2]["Visible"], tab_frames[3]["Visible"], tab_frames[4]["Visible"] = false, false, true, true
									end
								end
								
								if index == 1 then
									tweenObject(tab_buttons[1]["FindFirstChildOfClass"](tab_buttons[1], s_textlabel), {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = menu_accent_color})
									tweenObject(tab_buttons[2]["FindFirstChildOfClass"](tab_buttons[2], s_textlabel), {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = l_color3_fromrgb(255, 255, 255)})
								elseif index ~= 1 then
									tweenObject(tab_buttons[1]["FindFirstChildOfClass"](tab_buttons[1], s_textlabel), {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = l_color3_fromrgb(255, 255, 255)})
									tweenObject(tab_buttons[2]["FindFirstChildOfClass"](tab_buttons[2], s_textlabel), {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = menu_accent_color})
								end
								return nil
							end
							
							local function mouse_enter()
								tweenObject(value, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
								return nil
							end
							
							local function mouse_leave()
								tweenObject(value, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
								return nil
							end
							
							if #tab_buttons == 2 then
								value["MouseButton1Click"]["Connect"](value["MouseButton1Click"], mouse_button1_click)
								value["MouseEnter"]["Connect"](value["MouseEnter"], mouse_enter)
								value["MouseLeave"]["Connect"](value["MouseLeave"], mouse_leave)
							end
						end
						
						l_table_insert(TabBases, tab_frame)
						l_table_insert(tab_button_bases, tab_buttons)
						return nil
					end
					
					local component_success, tab_success, component_result, tab_result = g_pcall(initiate_component), g_pcall(initiate_tab)
					
					if component_success == true and tab_success == true then
						return {
							create_button = function(arguments)
								local component_parent, component_text, component_callback = arguments and #arguments == 3 and arguments[1] or nil, arguments and #arguments == 3 and arguments[2] or nil, arguments and #arguments == 3 and arguments[3] or nil
								local component_holder_frame, component_text_button, component_text_label, return_table
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0.5), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.5, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.836, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_text_label, ["Archivable"] = true, ["AspectRatio"] = 11, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 9.714, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})

									local function mouse_button1_click()
										tweenObject(component_text_label, {0, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = menu_accent_color})
										l_coroutine_wrap(component_callback)()
										g_wait(0.3)
										tweenObject(component_text_label, {0.3, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["TextColor3"] = l_color3_fromrgb(255, 255, 255)})
										return nil
									end
									
									local function mouse_enter()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
									
									local function mouse_leave()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										return nil
									end
									
									component_text_button["MouseButton1Click"]["Connect"](component_text_button["MouseButton1Click"], mouse_button1_click)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									
									return_table = {}
									table.insert(buttons, return_table)
									
									return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
							create_checkbox = function(arguments)
								local component_parent, component_text, component_callback = arguments and #arguments == 3 and arguments[1] or nil, arguments and #arguments == 3 and arguments[2] or nil, arguments and #arguments == 3 and arguments[3] or nil
								local component_holder_frame, component_text_button, component_text_label, mask_frame, filler_frame, tick_image, return_table
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.082, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.212, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.788, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									mask_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(-1, 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 2, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									filler_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0.5, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = menu_accent_color, ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0.5, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 0, 0, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									tick_image = createObject(s_imagelabel, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = mask_frame, ["Position"] = d_udim2_new(1, 0, 0, 0), ["Rotation"] = 0, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = mask_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Image"] = "http://www.roblox.com/asset/?id=5219455792", ["ImageColor3"] = l_color3_fromrgb(32, 28, 37), ["ImageRectOffset"] = d_vector2_new(), ["ImageRectSize"] = d_vector2_new(), ["ImageTransparency"] = 0, ["ScaleType"] = g_enum["ScaleType"]["Fit"], ["SliceScale"] = 1, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 13.237, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Archivable"] = true, ["AspectRatio"] = 1, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"].Height})
									
									local function animate_checkbox()
										filler_frame["BorderSizePixel"], filler_frame["Size"], mask_frame["Position"], tick_image["Position"] = 0, d_udim2_new(0, 0, 0, 0), d_udim2_new(-1, 0, 0, 0), d_udim2_new(1, 0, 0, 0)
										filler_frame["BorderSizePixel"] = 1
										tweenObject(filler_frame, {0.1, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Size"] = d_udim2_new(1, 0, 1, 0)})
										g_wait(0.1)
										tweenObject(filler_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Size"] = d_udim2_new(0, 0, 0, 0), ["BorderSizePixel"] = 20})
										g_wait(0.15)
										tweenObject(mask_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(0, 0, 0, 0)})
										tweenObject(tick_image, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(0, 0, 0, 0)})
									end
									
									local function mouse_button1_click()
										if mask_frame["Position"] == d_udim2_new(-1, 0, 0, 0) then
											l_coroutine_wrap(component_callback)(true)
											animate_checkbox()
										elseif mask_frame["Position"] ~= d_udim2_new(-1, 0, 0, 0) then
											l_coroutine_wrap(component_callback)(false)
											tweenObject(mask_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(-1, 0, 0, 0)})
											tweenObject(tick_image, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Position"] = d_udim2_new(1, 0, 0, 0)})
											g_wait(0.15)
											tweenObject(filler_frame, {0.1, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["Size"] = d_udim2_new(0, 0, 0, 0), ["BorderSizePixel"] = 0})
										end
										return nil
									end
									
									local function changed(property)
										if property == "Visible" and mask_frame["Position"] == d_udim2_new(0, 0, 0, 0) then
											if component_holder_frame["Parent"]["Parent"]["Parent"]["Visible"] == true then
												animate_checkbox()
											end
										end
									end
									
									local function mouse_enter()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
									
									local function mouse_leave()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										return nil
									end
									
									component_holder_frame["Parent"]["Parent"]["Parent"]["Changed"]["Connect"](component_holder_frame["Parent"]["Parent"]["Parent"]["Changed"], changed)
									component_text_button["MouseButton1Click"]["Connect"](component_text_button["MouseButton1Click"], mouse_button1_click)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									
									return_table = {
										get_state = function(arguments)
											return mask_frame and mask_frame["Position"] == d_udim2_new(-1, 0, 0, 0) or nil
										end,
										set_state = function(arguments)
											local new_value, run_callback = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
											
											local function initiate_function()
												filler_frame["BorderSizePixel"], filler_frame["Size"], mask_frame["Position"], tick_image["Position"] = new_value and 20 or 0, d_udim2_new(0, 0, 0, 0), new_value and d_udim2_new(0, 0, 0, 0) or d_udim2_new(-1, 0, 0, 0), new_value and d_udim2_new(0, 0, 0, 0) or d_udim2_new(1, 0, 0, 0)
												
												if run_callback == true then
													l_coroutine_wrap(component_callback)(new_value)
												end
											end
											
											local function_success, function_result = g_pcall(initiate_function)
											
											return nil
										end,
									}
									table.insert(checkboxes, return_table)

									return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
							create_colorpicker = function(arguments)
								local component_parent, component_text, component_color, component_callback, dragging_rgb_thumb, dragging_saturation_thumb, dragging_color_thumb, is_open = arguments and #arguments == 4 and arguments[1] or nil, arguments and #arguments == 4 and arguments[2] or nil, arguments and #arguments == 4 and arguments[3] or nil, arguments and #arguments == 4 and arguments[4] or nil, false, false, false, false
								local component_holder_frame, component_text_button, value_frame, mask_frame, dropdown_frame, text_label, value_label, rgb_slider, saturation_slider, color_picker, rgb_slider_thumb, saturation_slider_thumb, color_picker_thumb, last_size, return_table
								
								local function from_hex(arguments)
									local value = arguments[1]
									local sub_value = l_string_gsub(value, "#", "")
									
									return l_color3_fromrgb(g_tonumber("0x" .. l_string_sub(sub_value, 1 ,2)), g_tonumber("0x" .. l_string_sub(sub_value, 3, 4)), g_tonumber("0x" .. l_string_sub(sub_value, 5, 6)))
								end
								
								local function to_hex(arguments)
									local color_value = arguments[1]
									local color_value_r, color_value_g, color_value_b = color_value["R"], color_value["G"], color_value["B"]
									
									color_value_r, color_value_g, color_value_b = color_value_r < 0 and 0 or color_value_r > 1 and 1 or color_value_r, color_value_g < 0 and 0 or color_value_g > 1 and 1 or color_value_g, color_value_b < 0 and 0 or color_value_b > 1 and 1 or color_value_b
									
									if g_tostring(color_value_r) == "-nan(ind)" then color_value_r = 0 end
									if g_tostring(color_value_g) == "-nan(ind)" then color_value_g = 0 end
									if g_tostring(color_value_b) == "-nan(ind)" then color_value_b = 0 end
									
									return l_string_upper("#" .. l_string_format("%02x", color_value_r * 255) .. l_string_format("%02x", color_value_g * 255) .. l_string_format("%02x", color_value_b * 255))
								end
								
								local new_color = from_hex({component_color})
								local color_value_h, color_value_s, color_value_v = l_color3_tohsv(new_color)
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.5, 0, 0.45, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.836, 0, 0.542, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									value_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = from_hex({component_color}), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0.03, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.071, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									mask_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0, -1, 1, 1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 2, 6.638, 2), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 2, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									dropdown_frame = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = mask_frame, ["Position"] = d_udim2_new(0, 1, -1, -1), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(1, -2, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = mask_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.082, 0 ,0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.913, 0, 0.378, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									value_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0.137, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(2.43, 0, 0.69, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_color, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									color_picker = createObject(s_imagebutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(255, 255, 255), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = false, ["Name"] = generateRandomString(), ["Parent"] = dropdown_frame, ["Position"] = d_udim2_new(0.033, 0, 0.05, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.824, 0, 0.794, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = dropdown_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, HoverImage = nil, ["Image"] = "http://www.roblox.com/asset/?id=5239373522", ["ImageColor3"] = l_color3_fromhsv(color_value_h, 1, 1), ["ImageRectOffset"] = d_vector2_new(), ["ImageRectSize"] = d_vector2_new(), ["ImageTransparency"] = 0, ["PressedImage"] = nil, ["ScaleType"] = g_enum["ScaleType"]["Stretch"], ["SliceScale"] = 1, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									color_picker_thumb = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = color_picker, ["Position"] = d_udim2_new(color_value_h, color_value_h == 1 and -3 or 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0, 3, 0, 3), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = color_picker["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = color_picker_thumb, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0, 1), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = color_picker_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = color_picker_thumb, ["Position"] = d_udim2_new(0, 0, 1, -1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0, 1), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = color_picker_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = color_picker_thumb, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 1, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = color_picker_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = color_picker_thumb, ["Position"] = d_udim2_new(1, -1, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 1, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = color_picker_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									rgb_slider = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(255, 255, 255), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = dropdown_frame, ["Position"] = d_udim2_new(0.888, 0, 0.05, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.071, 0, 0.798, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = dropdown_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									rgb_slider_thumb = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = rgb_slider, ["Position"] = d_udim2_new(0, 0, color_value_h, color_value_h == 1 and -3 or 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(1, 0, 0, 3), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = rgb_slider["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = rgb_slider_thumb, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0, 1), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = rgb_slider_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = rgb_slider_thumb, ["Position"] = d_udim2_new(0, 0, 1, -1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 0, 1), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = rgb_slider_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									saturation_slider = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = new_color, ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = dropdown_frame, ["Position"] = d_udim2_new(0.033, 0, 0.877, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.818, 0, 0.081, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = dropdown_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									saturation_slider_thumb = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = saturation_slider, ["Position"] = d_udim2_new(color_value_v, color_value_v == 1 and -3 or 0, 0, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0, 3, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = saturation_slider["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = saturation_slider_thumb, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 1, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = saturation_slider_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(51, 48, 57), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = saturation_slider_thumb, ["Position"] = d_udim2_new(1, -1, 0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 1, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = saturation_slider_thumb["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uigradient, {["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, l_color3_fromrgb(255, 0, 0)), ColorSequenceKeypoint.new(0.166, l_color3_fromrgb(255, 255, 0)), ColorSequenceKeypoint.new(0.332, l_color3_fromrgb(0, 255, 0)), ColorSequenceKeypoint.new(0.498, l_color3_fromrgb(0, 255, 255)), ColorSequenceKeypoint.new(0.672, l_color3_fromrgb(0, 0, 255)), ColorSequenceKeypoint.new(0.83, l_color3_fromrgb(255, 0, 255)), ColorSequenceKeypoint.new(1, l_color3_fromrgb(255, 0, 0))}), ["Enabled"] = true, ["Offset"] = d_vector2_new(), ["Rotation"] = 90, ["Transparency"] = nil, ["Name"] = generateRandomString(), ["Parent"] = rgb_slider, ["Archivable"] = true})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 4.948, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = value_frame, ["Archivable"] = true, ["AspectRatio"] = 1, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									
									local function mouse_button1_click()
										if is_open == false then
											last_size = tabs[component_parent].CanvasSize
											tabs[component_parent].CanvasSize = tabs[component_parent].CanvasSize + UDim2.new(0, 0, 0, mask_frame.AbsoluteSize.Y)
											component_holder_frame["ZIndex"] = component_holder_frame["ZIndex"] + 1
											tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = menu_accent_color})
											tweenObject(dropdown_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = menu_accent_color, ["Position"] = d_udim2_new(0, 1, 0, -2)})
											g_wait(0.15)
											is_open = true
										end
										return nil
									end
									
									local function rgb_slider_mouse_button1_down()
										dragging_rgb_thumb = true
										
										while dragging_rgb_thumb == true do
											rgb_slider_thumb["Position"] = d_udim2_new(0, 0, 0, findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["Y"] - rgb_slider["AbsolutePosition"]["Y"])
											
											if rgb_slider_thumb["Position"]["Y"]["Offset"] < 0 then
												rgb_slider_thumb["Position"] = d_udim2_new(0,0,0,0)
												color_picker["ImageColor3"] = l_color3_fromhsv(0, 1, 1)
												saturation_slider["BackgroundColor3"] = l_color3_fromhsv(0, color_picker_thumb["Position"]["X"]["Offset"] / color_picker["AbsoluteSize"]["X"], saturation_slider_thumb["Position"]["X"]["Scale"] > 0 and saturation_slider_thumb["Position"]["X"]["Scale"] or 1 - (color_picker_thumb["Position"]["Y"]["Offset"] / color_picker["AbsoluteSize"]["Y"]) / (saturation_slider_thumb["Position"]["X"]["Offset"] == -3 and saturation_slider["AbsoluteSize"]["X"] - 3 or saturation_slider_thumb["Position"]["X"]["Offset"] / saturation_slider["AbsoluteSize"]["X"]))
											elseif rgb_slider_thumb["Position"]["Y"]["Offset"] + rgb_slider_thumb["Size"]["Y"]["Offset"] >= rgb_slider["AbsoluteSize"]["Y"] then
												rgb_slider_thumb["Position"] = d_udim2_new(0, 0, 0, (rgb_slider["AbsoluteSize"]["Y"] - rgb_slider_thumb["Size"]["Y"]["Offset"]))
												saturation_slider["BackgroundColor3"] = l_color3_fromhsv(1, color_picker_thumb["Position"]["X"]["Offset"] / color_picker["AbsoluteSize"]["X"], saturation_slider_thumb["Position"]["X"]["Scale"] > 0 and saturation_slider_thumb["Position"]["X"]["Scale"] or 1 - (color_picker_thumb["Position"]["Y"]["Offset"] / color_picker["AbsoluteSize"]["Y"]) / (saturation_slider_thumb["Position"]["X"]["Offset"] == -3 and saturation_slider["AbsoluteSize"]["X"] or saturation_slider_thumb["Position"]["X"]["Offset"] / saturation_slider["AbsoluteSize"]["X"]))
												color_picker["ImageColor3"] = l_color3_fromhsv(1, 1, 1)
											else
												color_picker["ImageColor3"] = l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], 1, 1)
												saturation_slider["BackgroundColor3"] = l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Scale"] > 0 and rgb_slider_thumb["Position"]["Y"]["Scale"] or rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], color_picker_thumb["Position"]["X"]["Scale"] > 0 and color_picker_thumb["Position"]["X"]["Scale"] or color_picker_thumb["Position"]["X"]["Offset"] / color_picker["AbsoluteSize"]["X"],  1 - (color_picker_thumb["Position"]["Y"]["Scale"] > 0 and color_picker_thumb["Position"]["Y"]["Scale"] or color_picker_thumb["Position"]["Y"]["Offset"] / color_picker["AbsoluteSize"]["Y"]) / (saturation_slider_thumb["Position"]["X"]["Scale"] > 0 and saturation_slider_thumb["Position"]["X"]["Scale"] or saturation_slider_thumb["Position"]["X"]["Offset"] / saturation_slider["AbsoluteSize"]["X"]))		
											end
											
											value_frame["BackgroundColor3"] = saturation_slider["BackgroundColor3"]
											value_label["Text"] = to_hex({value_frame["BackgroundColor3"]})
											findService["RunService"]["RenderStepped"]["Wait"](findService["RunService"]["RenderStepped"])
										end
										return nil
									end
									
									local function rgb_slider_mouse_button1_up()
										dragging_rgb_thumb = false
										return nil
									end
									
									local function saturation_mouse_button1_down()
										dragging_saturation_thumb = true
										
										while dragging_saturation_thumb == true do
											saturation_slider_thumb["Position"] = d_udim2_new(0, findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["X"] - saturation_slider["AbsolutePosition"]["X"], 0, 0)
											
											if saturation_slider_thumb["Position"]["X"]["Offset"] < 0 then
												saturation_slider_thumb["Position"] = d_udim2_new(0, 0, 0, 0)
												l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Scale"] > 0 and rgb_slider_thumb["Position"]["Y"]["Scale"] or rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], 1, 0)
											elseif saturation_slider_thumb["Position"]["X"]["Offset"] + 3 > saturation_slider["AbsoluteSize"]["X"] then
												saturation_slider_thumb["Position"] = d_udim2_new(1, -3, 0, 0)
												l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Scale"] > 0 and rgb_slider_thumb["Position"]["Y"]["Scale"] or rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], 1, 1)
											end
											
											saturation_slider["BackgroundColor3"] = l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Scale"] > 0 and rgb_slider_thumb["Position"]["Y"]["Scale"] or rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], color_picker_thumb["Position"]["X"]["Scale"] > 0 and color_picker_thumb["Position"]["X"]["Scale"] or color_picker_thumb["Position"]["X"]["Offset"] / color_picker["AbsoluteSize"]["X"],  1 - (color_picker_thumb["Position"]["Y"]["Scale"] > 0 and color_picker_thumb["Position"]["Y"]["Scale"] or color_picker_thumb["Position"]["Y"]["Offset"] / color_picker["AbsoluteSize"]["Y"]) / (saturation_slider_thumb["Position"]["X"]["Scale"] > 0 and saturation_slider_thumb["Position"]["X"]["Scale"] or saturation_slider_thumb["Position"]["X"]["Offset"] / saturation_slider["AbsoluteSize"]["X"]))		
											value_frame["BackgroundColor3"] = saturation_slider["BackgroundColor3"]
											value_label["Text"] = to_hex({value_frame["BackgroundColor3"]})
											findService["RunService"]["RenderStepped"]["Wait"](findService["RunService"]["RenderStepped"])
										end
										return nil
									end
									
									local function saturation_mouse_button1_up()
										dragging_saturation_thumb = false
										return nil
									end
									
									local function color_mouse_button1_down()
										dragging_color_thumb = true
										
										while dragging_color_thumb == true do
											local gui_objects_over_mouse = findService["CoreGui"]["GetGuiObjectsAtPosition"](findService["CoreGui"], findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["X"], findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["Y"])
											
											local is_over_gui = false
											
											for index, value in g_pairs(gui_objects_over_mouse) do
												if value == color_picker then
													is_over_gui = true
												end
											end
											
											if is_over_gui == true then
												color_picker_thumb["Position"] = d_udim2_new(0, findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["X"] - color_picker["AbsolutePosition"]["X"], 0, findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["Y"] - color_picker["AbsolutePosition"]["Y"])
												saturation_slider["BackgroundColor3"] = l_color3_fromhsv(rgb_slider_thumb["Position"]["Y"]["Scale"] > 0 and rgb_slider_thumb["Position"]["Y"]["Scale"] or rgb_slider_thumb["Position"]["Y"]["Offset"] / rgb_slider["AbsoluteSize"]["Y"], color_picker_thumb["Position"]["X"]["Scale"] > 0 and color_picker_thumb["Position"]["X"]["Scale"] or color_picker_thumb["Position"]["X"]["Offset"] / color_picker["AbsoluteSize"]["X"],  1 - (color_picker_thumb["Position"]["Y"]["Scale"] > 0 and color_picker_thumb["Position"]["Y"]["Scale"] or color_picker_thumb["Position"]["Y"]["Offset"] / color_picker["AbsoluteSize"]["Y"]) / (saturation_slider_thumb["Position"]["X"]["Scale"] > 0 and saturation_slider_thumb["Position"]["X"]["Scale"] or saturation_slider_thumb["Position"]["X"]["Offset"] / saturation_slider["AbsoluteSize"]["X"]))		
												value_frame["BackgroundColor3"] = saturation_slider["BackgroundColor3"]
												value_label["Text"] = to_hex({value_frame["BackgroundColor3"]})
											end
											
											findService["RunService"]["RenderStepped"]["Wait"](findService["RunService"]["RenderStepped"])
										end
										return nil
									end
									
									local function color_mouse_button1_up()
										dragging_color_thumb = false
										return nil
									end
									
									local function mouse_enter()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
									
									local function mouse_leave()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										return nil
									end
									
									local function input_began(input_object, game_processed)
										local gui_objects_over_mouse = findService["CoreGui"]["GetGuiObjectsAtPosition"](findService["CoreGui"], input_object["Position"]["X"], input_object["Position"]["Y"])
										
										if findService["UserInputService"]["GetFocusedTextBox"](findService["UserInputService"]) == nil and is_open == true then
											if input_object["UserInputType"]["Value"] == 0 and input_object["KeyCode"]["Value"] == 0 then
												local is_over_gui = false
												
												for index, gui_object in g_pairs(gui_objects_over_mouse) do
													if gui_object["IsDescendantOf"](gui_object, mask_frame) then
														is_over_gui = true
														break
													end
												end
												
												if is_over_gui == false then
													tabs[component_parent].CanvasSize = last_size
													tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = l_color3_fromrgb(51, 48, 57)})
													tweenObject(dropdown_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["Position"] = d_udim2_new(0, 1, -1, -2)})
													g_wait(0.15)
													is_open, component_holder_frame["ZIndex"] = false, component_holder_frame["ZIndex"] - 1
												end
											end
										end
										return nil
									end
									
									local function input_ended(input_object)
										if input_object["UserInputType"] == g_enum["UserInputType"]["MouseButton1"] then
											dragging_rgb_thumb, dragging_saturation_thumb, dragging_color_thumb = false, false, false
										end
										return nil
									end
									
									local function changed()
										l_coroutine_wrap(component_callback)(value_frame["BackgroundColor3"])
										return nil
									end
									
									component_text_button["MouseButton1Click"]["Connect"](component_text_button["MouseButton1Click"], mouse_button1_click)
									rgb_slider["MouseButton1Down"]["Connect"](rgb_slider["MouseButton1Down"], rgb_slider_mouse_button1_down)
									rgb_slider["MouseButton1Up"]["Connect"](rgb_slider["MouseButton1Up"], rgb_slider_mouse_button1_up)
									rgb_slider_thumb["MouseButton1Down"]["Connect"](rgb_slider_thumb["MouseButton1Down"], rgb_slider_mouse_button1_down)
									rgb_slider_thumb["MouseButton1Up"]["Connect"](rgb_slider_thumb["MouseButton1Up"], rgb_slider_mouse_button1_up)
									saturation_slider["MouseButton1Down"]["Connect"](saturation_slider["MouseButton1Down"], saturation_mouse_button1_down)
									saturation_slider["MouseButton1Up"]["Connect"](saturation_slider["MouseButton1Up"], saturation_mouse_button1_up)
									saturation_slider_thumb["MouseButton1Down"]["Connect"](saturation_slider_thumb["MouseButton1Down"], saturation_mouse_button1_down)
									saturation_slider_thumb["MouseButton1Up"]["Connect"](saturation_slider_thumb["MouseButton1Up"], saturation_mouse_button1_up)
									color_picker["MouseButton1Down"]["Connect"](color_picker["MouseButton1Down"], color_mouse_button1_down)
									color_picker["MouseButton1Up"]["Connect"](color_picker["MouseButton1Up"], color_mouse_button1_up)
									color_picker_thumb["MouseButton1Down"]["Connect"](color_picker_thumb["MouseButton1Down"], color_mouse_button1_down)
									color_picker_thumb["MouseButton1Up"]["Connect"](color_picker_thumb["MouseButton1Up"], color_mouse_button1_up)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									findService["UserInputService"]["InputBegan"]["Connect"](findService["UserInputService"]["InputBegan"], input_began)
									findService["UserInputService"]["InputEnded"]["Connect"](findService["UserInputService"]["InputEnded"], input_ended)
									value_label["GetPropertyChangedSignal"](value_label, "Text")["Connect"](value_label["GetPropertyChangedSignal"](value_label, "Text"), changed)
									
									return_table = {
										get_state = function(arguments)
											return value_label and value_label["Text"] or nil
										end,
										set_state = function(arguments)
											local new_value, run_callback = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
											local new_color = from_hex({new_value})
											local color_value_h, color_value_s, color_value_v = l_color3_tohsv(new_color)
											
											local function initiate_function()
												rgb_slider_thumb["Position"] = d_udim2_new(0, 0, 0, rgb_slider["AbsoluteSize"]["Y"] / color_value_h)
												rgb_slider_thumb["Position"] = d_udim2_new(0, 0, color_value_h, color_value_h == 1 and -3 or 0)
												saturation_slider_thumb["Position"] = d_udim2_new(color_value_v, color_value_v == 1 and -3 or 0, 0, 0)
												color_picker_thumb["Position"] = d_udim2_new(color_value_h, color_value_h == 1 and -3 or 0, 0, 0)
												saturation_slider["BackgroundColor3"] = new_color
												color_picker["ImageColor3"] = l_color3_fromhsv(color_value_h, 1, 1)
												value_frame["BackgroundColor3"] = new_color
												value_label["Text"] = l_string_upper(new_value)
												
												if run_callback == true then
													l_coroutine_wrap(component_callback)(new_color)
												end
											end
											
											local function_success, function_result = g_pcall(initiate_function)
											
											return nil
										end,
									}
									table.insert(colorpickers, return_table)
									
									return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
							create_dropdown = function(arguments)
								local component_parent, component_text, component_multiple, component_choices, component_callback, selecting_choice, choices, selected_choices, is_mouse_over = arguments[1], arguments[2], arguments[3], arguments[4], arguments[5], false, {}, {}, false
								local component_holder_frame, component_text_button, component_text_label, value_label, mask_frame, dropdown_frame, last_size, return_table
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.5, 0, 0.45, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.836, 0, 0.542, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.082, 0 ,0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.913, 0, 0.378, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									value_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0.024, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(2.43, 0, 0.69, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = not component_multiple and (component_choices[1] or "") or "", ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									mask_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0, -1, 1, 1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 2, 1 * #arguments[4], 2), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									dropdown_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = mask_frame, ["Position"] = d_udim2_new(0, 1, -1, -1), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, -2, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = mask_frame["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 4.948, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									createObject("UIListLayout", {["Padding"] = UDim.new(), ["Name"] = generateRandomString(), ["Parent"] = dropdown_frame, ["Archivable"] = true, ["FillDirection"] = g_enum["FillDirection"]["Vertical"], HorizontalAlignment = g_enum["HorizontalAlignment"]["Center"], ["SortOrder"] = g_enum["SortOrder"]["LayoutOrder"], ["VerticalAlignment"] = g_enum["VerticalAlignment"]["Top"]})
									
									local function mouse_button1_click()
										if selecting_choice == false then
											last_size = tabs[component_parent].CanvasSize
											tabs[component_parent].CanvasSize = tabs[component_parent].CanvasSize + UDim2.new(0, 0, 0, mask_frame.AbsoluteSize.Y)
											component_holder_frame["ZIndex"] = component_holder_frame["ZIndex"] + 1
											tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = menu_accent_color})
											tweenObject(dropdown_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = menu_accent_color, ["Position"] = d_udim2_new(0, 1, 0, -2)})
											g_wait(0.15)
											selecting_choice = true
											return nil
										end
										return nil
									end
									
									local function mouse_enter()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
										
									local function mouse_leave()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										return nil
									end
									
									local function input_began(input_object, game_processed)
										local gui_objects_over_mouse = findService["CoreGui"]["GetGuiObjectsAtPosition"](findService["CoreGui"], input_object["Position"]["X"], input_object["Position"]["Y"])
										
										if findService["UserInputService"]["GetFocusedTextBox"](findService["UserInputService"]) == nil and selecting_choice == true then
											if input_object["UserInputType"]["Value"] == 0 and input_object["KeyCode"]["Value"] == 0 then
												local is_over_gui = false
												
												for index, gui_object in g_pairs(gui_objects_over_mouse) do
													if gui_object["IsDescendantOf"](gui_object, mask_frame) then
														is_over_gui = true
														break
													end
												end
												
												if is_over_gui == false then
													tabs[component_parent].CanvasSize = last_size
													tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = l_color3_fromrgb(51, 48, 57)})
													tweenObject(dropdown_frame, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["Position"] = d_udim2_new(0, 1, -1, -2)})
													g_wait(0.15)
													selecting_choice, component_holder_frame["ZIndex"] = false, component_holder_frame["ZIndex"] - 1
												end
											end
										end
										return nil
									end
									
									for index, value in g_pairs(component_choices) do
										l_table_insert(choices, createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = dropdown_frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(1, 0, 1 / #arguments[4], 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = dropdown_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil}))
										local text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = choices[index], ["Position"] = d_udim2_new(0.024, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = choices[index]["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = g_tostring(value), ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"].Top, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
										createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = text_label, ["Archivable"] = true, ["AspectRatio"] = 11, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									end
									
									for index, value in g_pairs(choices) do
										local function mouse_button1_click()
											local new_text = ""
											
											if component_multiple == true then
												if l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]) then
													value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = l_color3_fromrgb(255, 255, 255)
													l_table_remove(selected_choices, l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]))
												elseif not l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]) then
													l_table_insert(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"])
													value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = menu_accent_color
												end
												
												for index, value in g_pairs(choices) do
													if not l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]) then
														value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = l_color3_fromrgb(255, 255, 255)
													end
												end
											elseif component_multiple == false then
												for index, value in g_pairs(choices) do
													value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = l_color3_fromrgb(255, 255, 255)
													l_table_remove(selected_choices, l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]))
												end
												
												l_table_insert(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"])
												value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = menu_accent_color
												value_label["Text"] = value["FindFirstChildOfClass"](value, s_textlabel)["Text"]
											end
											
											for index, value in g_pairs(selected_choices) do
												new_text = index == #selected_choices and new_text .. value or new_text .. value .. ", "
											end
											
											value_label["Text"] = new_text
											l_coroutine_wrap(component_callback)(selected_choices)
											return nil
										end
										
										local function mouse_enter()
											tweenObject(value, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
											return nil
										end
										
										local function mouse_leave()
											tweenObject(value, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
											return nil
										end
										
										value["MouseButton1Click"]["Connect"](value["MouseButton1Click"], mouse_button1_click)
										value["MouseEnter"]["Connect"](value["MouseEnter"], mouse_enter)
										value["MouseLeave"]["Connect"](value["MouseLeave"], mouse_leave)
									end
									
									if arguments[3] == false then
										l_table_insert(selected_choices, choices[1]["FindFirstChildOfClass"](choices[1], s_textlabel)["Text"])
										choices[1]["FindFirstChildOfClass"](choices[1], s_textlabel)["TextColor3"] = menu_accent_color
									end
									
									component_text_button["MouseButton1Click"]["Connect"](component_text_button["MouseButton1Click"], mouse_button1_click)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									findService["UserInputService"]["InputBegan"]["Connect"](findService["UserInputService"]["InputBegan"], input_began)
									
									return_table = {
										get_state = function(arguments)
											return selected_choices and selected_choices and component_multiple and g_unpack(selected_choices) or selected_choices and selected_choices and not component_multiple and selected_choices or nil
										end,
										set_state = function(arguments)
											local new_value, run_callback, new_text = arguments[1], arguments[2], ""
											
											local function initiate_function()
												selected_choices = new_value
												
												for index, value in g_pairs(choices) do
													if l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]) then
														value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = menu_accent_color
													elseif not l_table_find(selected_choices, value["FindFirstChildOfClass"](value, s_textlabel)["Text"]) then
														value["FindFirstChildOfClass"](value, s_textlabel)["TextColor3"] = l_color3_fromrgb(255, 255, 255)
													end
												end
												
												for index, value in g_pairs(selected_choices) do
													new_text = index == #selected_choices and new_text .. value or new_text .. value .. ", "
												end
												
												value_label["Text"] = component_multiple and new_text or selected_choices[1]
												
												if run_callback == true then
													l_coroutine_wrap(component_callback)(g_unpack(selected_choices))
												end
											end
											
											local function_success, function_result = g_pcall(initiate_function)
											
											return nil
										end
									}
									table.insert(dropdowns, return_table) return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
							create_keybind = function(arguments)
								local component_parent, component_text, component_callback, selecting_keybind, selected_keybind, outline_tween = arguments and #arguments == 3 and arguments[1] or nil, arguments and #arguments == 3 and arguments[2] or nil, arguments and #arguments == 3 and arguments[3] or nil, false, false, nil
								local component_holder_frame, component_text_button, component_text_label, value_label, return_table
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.5, 0, 0.45, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.836, 0, 0.542, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.082, 0 ,0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.913, 0, 0.378, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									value_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(0, 0.5), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(0.024, 0, 0.5, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = value_label, ["Archivable"] = true, ["AspectRatio"] = 11, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 4.948, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									
									local function mouse_button1_click()
										if selecting_keybind == false then
											value_label["Text"], selecting_keybind  = "...", true
											outline_tween = tweenObject(component_text_button, {0.5, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["InOut"], -1, true, 0}, {["BorderColor3"] = menu_accent_color})
											return nil
										end
										return nil
									end
									
									local function mouse_enter()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
									
									local function mouse_leave()
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										return nil
									end
									
									local function input_began(input_object, game_processed)
										if findService["UserInputService"]["GetFocusedTextBox"](findService["UserInputService"]) == nil and selecting_keybind and selected_keybind == false then
											selected_keybind, component_text_button["BorderColor3"] = true, l_color3_fromrgb(51, 48, 57)
											outline_tween["Cancel"](outline_tween)

											if input_object.KeyCode ~= Enum.KeyCode.Insert and input_object.KeyCode ~= Enum.KeyCode.Home then
												if input_object.KeyCode == Enum.KeyCode.Delete then
													l_coroutine_wrap(component_callback)(nil)
													value_label.Text = ""
												else
													if input_object["KeyCode"] ~= nil and input_object["KeyCode"]["Value"] ~= 0 then
														l_coroutine_wrap(component_callback)(input_object["KeyCode"])
														value_label["Text"] = input_object["KeyCode"]["Name"]
													elseif input_object["UserInputType"] ~= nil and input_object["KeyCode"]["Value"] == 0 and input_object["UserInputType"]["Value"] == 0 or input_object["UserInputType"]["Value"] == 1 or input_object["UserInputType"]["Value"] == 2 then
														l_coroutine_wrap(component_callback)(input_object["UserInputType"])
														value_label["Text"] = input_object["UserInputType"]["Name"]
													end
												end
											end
											
											g_wait(0.15)
											selecting_keybind, selected_keybind = false, false
										end
										return nil
									end
									
									component_text_button["MouseButton1Click"]["Connect"](component_text_button["MouseButton1Click"], mouse_button1_click)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									findService["UserInputService"]["InputBegan"]["Connect"](findService["UserInputService"]["InputBegan"], input_began)
									
									return_table = {
										get_state = function(arguments)
											return value_label and value_label["Text"]
										end,
										set_state = function(arguments)
											local new_value, run_callback = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
											
											local function initiate_function()
												value_label["Text"] = new_value["Name"]
												
												if run_callback == true then
													l_coroutine_wrap(component_callback)(new_value)
												end
											end
											
											local function_success, function_result = g_pcall(initiate_function)
											
											return nil
										end,
									}
									table.insert(keybinds, return_table)

									return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
							create_slider = function(arguments)
								local component_parent, component_text, component_min_value, component_max_value, component_value_rounding, component_callback, dragging_slider, mouse_over = arguments[1], arguments[2], arguments[3], arguments[4], arguments[5], arguments[6], false, false
								local component_holder_frame, component_text_button, component_text_label, slider_frame, value_label, slider_value, return_table
								
								local function initiate_component()
									component_holder_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = tabs[component_parent], ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(1, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = tabs[component_parent]["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_button = createObject(s_textbutton, {["Active"] = true, ["AnchorPoint"] = d_vector2_new(0.5, 0), ["AutoButtonColor"] = false, ["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37), ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(51, 48, 57), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 1, ["LayoutOrder"] = 0, ["Modal"] = true, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.5, 0, 0.55, 0), ["Rotation"] = 0, ["Selectable"] = true, ["Selected"] = false, ["Size"] = d_udim2_new(0.836, 0, 0.411, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["ButtonStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1 , ["Archivable"] = true, ["ClipsDescendants"] = true, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = "", ["TextColor3"] = l_color3_fromrgb(), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 1, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Center"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									component_text_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(0.082, 0 ,0, 0), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.918, 0, 0.469, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_text, ["TextColor3"] = l_color3_fromrgb(255, 255, 255), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Left"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									slider_frame = createObject(s_frame, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = menu_accent_color, ["BackgroundTransparency"] = 0, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_text_button, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0, 0, 1, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Style"] = g_enum["FrameStyle"]["Custom"], ["Visible"] = true, ["ZIndex"] = component_text_button["ZIndex"] + 1, ["Archivable"] = true, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									value_label = createObject(s_textlabel, {["Active"] = false, ["AnchorPoint"] = d_vector2_new(), ["BackgroundColor3"] = l_color3_fromrgb(), ["BackgroundTransparency"] = 1, ["BorderColor3"] = l_color3_fromrgb(), ["BorderMode"] = g_enum["BorderMode"]["Outline"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 0, ["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Position"] = d_udim2_new(), ["Rotation"] = 0, ["Selectable"] = false, ["Size"] = d_udim2_new(0.918, 0, 0.469, 0), ["SizeConstraint"] = g_enum["SizeConstraint"]["RelativeXY"], ["Visible"] = true, ["ZIndex"] = component_holder_frame["ZIndex"] + 1, ["Archivable"] = false, ["ClipsDescendants"] = false, ["NextSelectionDown"] = nil, ["NextSelectionLeft"] = nil, ["NextSelectionRight"] = nil, ["NextSelectionUp"] = nil, ["Font"] = g_enum["Font"]["SourceSans"], ["LineHeight"] = 1, ["Text"] = component_min_value, ["TextColor3"] = l_color3_fromrgb(105, 102, 110), ["TextScaled"] = true, ["TextSize"] = 0, ["TextStrokeColor3"] = l_color3_fromrgb(), ["TextStrokeTransparency"] = 1, ["TextTransparency"] = 0, ["TextTruncate"] = g_enum["TextTruncate"]["None"], ["TextWrapped"] = true, ["TextXAlignment"] = g_enum["TextXAlignment"]["Right"], ["TextYAlignment"] = g_enum["TextYAlignment"]["Center"], ["AutoLocalize"] = true, ["RootLocalizationTable"] = nil})
									createObject(s_uiaspect, {["Name"] = generateRandomString(), ["Parent"] = component_holder_frame, ["Archivable"] = true, ["AspectRatio"] = 6.056, ["AspectType"] = g_enum["AspectType"]["FitWithinMaxSize"], ["DominantAxis"] = g_enum["DominantAxis"]["Width"]})
									if value_label.Text == "-0" then value_label.Text = "0" end

									local function mouse_button1_down()
										dragging_slider = true
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										
										while dragging_slider == true do
											slider_frame.Size = d_udim2_new(0, findService["Players"]["LocalPlayer"]["GetMouse"](findService["Players"]["LocalPlayer"])["X"] - component_text_button["AbsolutePosition"]["X"], 1, 0)
											
											slider_value = component_min_value + (component_max_value - component_min_value) * (slider_frame.Size.X.Offset / component_text_button.AbsoluteSize.X)
											slider_value = math.clamp(((slider_value + 0.5) - (slider_value + 0.5) % component_value_rounding), component_min_value, component_max_value)

											l_coroutine_wrap(component_callback)(tonumber(slider_value))
											value_label.Text = slider_value

											if value_label.Text == "-0" then value_label.Text = "0" end
											
											findService["RunService"]["RenderStepped"]["Wait"](findService["RunService"]["RenderStepped"])
										end
										return nil
									end
									
									local function mouse_button1_up()
										dragging_slider = false
										if mouse_over == false then
											tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										end											
										return nil
									end
									
									local function mouse_enter()
										mouse_over = true
										tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(41, 38, 46)})
										return nil
									end
									
									local function mouse_leave()
										mouse_over = false
										if dragging_slider == false then
											tweenObject(component_text_button, {0.15, g_enum["EasingStyle"]["Linear"], g_enum["EasingDirection"]["In"], 0, false, 0}, {["BackgroundColor3"] = l_color3_fromrgb(32, 28, 37)})
										end
										return nil
									end
									
									local function input_ended(input_object)
										if input_object["UserInputType"] == g_enum["UserInputType"]["MouseButton1"] then
											mouse_button1_up()
										end
										return nil
									end
									
									component_text_button["MouseButton1Down"]["Connect"](component_text_button["MouseButton1Down"], mouse_button1_down)
									component_text_button["MouseButton1Up"]["Connect"](component_text_button["MouseButton1Up"], mouse_button1_up)
									component_text_button["MouseEnter"]["Connect"](component_text_button["MouseEnter"], mouse_enter)
									component_text_button["MouseLeave"]["Connect"](component_text_button["MouseLeave"], mouse_leave)
									findService["UserInputService"]["InputEnded"]["Connect"](findService["UserInputService"]["InputEnded"], input_ended)
									
									return_table = {
										get_state = function(arguments)
											return value_label and value_label["Text"]
										end,
										set_state = function(arguments)
											local new_value, run_callback = arguments and #arguments == 2 and arguments[1] or nil, arguments and #arguments == 2 and arguments[2] or nil
											
											local function initiate_function()
												value_label["Text"], slider_frame["Size"] = new_value, d_udim2_new(new_value / component_max_value, 0, 1, 0)
												
												if run_callback == true then
													l_coroutine_wrap(component_callback)(new_value)
												end
											end
											
											local function_success, function_result = g_pcall(initiate_function)
											
											return nil
										end,
									}
									table.insert(sliders, return_table)
									
									return nil
								end
								
								local component_success, component_result = g_pcall(initiate_component)
								
								if component_success == true then
									return return_table
								end
								return nil
							end,
						}
					end
				end,
			}
		end
		return nil
	end
end

do
	local Features = {
		["KeyBinds"] = {
			["LeftOverride"] = nil,
			["RightOverride"] = nil,
			["BackOverride"] = nil,
		},
		["Rage"] = {
			["Aimbot"] = {
				["Enabled"] = {
					["Value"] = false,
				},
				["Target"] = nil,
				["AutoFire"] = {
					["Enabled"] = false,
				},
				["NoRecoil"] = {
					["Enabled"] = false,
				},
				["NoSpread"] = {
					["Enabled"] = false,
				},
				["Hitboxes"] = {},
				["HitboxFormat"] = {
					["Head"] = {"Head", "FakeHead", "HeadHB"},
					["Torso"] = {"UpperTorso", "LowerTorso"},
					["Arms"] = {"RightUpperArm", "RightLowerArm", "LeftUpperArm", "LeftLowerArm"},
					["Legs"] = {"RightUpperLeg", "RightLowerLeg", "LeftUpperLeg", "LeftLowerLeg"},
				},
			},
			["AntiAimbot"] = {
				["Enabled"] = {
					["Value"] = false,
					["Toggled"] = false,
				},
				["Pitch"] = {
					["Value"] = "None",
					["Randomize"] = false,
				},
				["Yaw"] = {
					["Enabled"] = false,
					["Value"] = 0,
					["Last"] = 0,
				},
				["Spin"] = {
					["Enabled"] = false,
					["Increment"] = 0,
					["Range"] = 0,
				},
				["Jitter"] = {
					["Enabled"] = false,
					["Range"] = 0,
					["Randomize"] = false,
					["Debounce"] = false,
				},
				["LookAtFOVTarget"] = {
					["Enabled"] = false,
					["Looking"] = false,
				},
				["Freestand"] = {
					["Enabled"] = false,
					["Value"] = 0,
				},
				["Override"] = {
					["Enabled"] = false,
					["Value"] = nil,
				},
				["FakeLag"] = {
					["Enabled"] = false,
					["Value"] = 1,
					["Mode"] = "Static",
				},
			},
		},
		["Visuals"] = {
			["ESP"] = {
				["Enabled"] = {
					["Value"] = false,
				},
				["BoundingBox"] = {
					["Enabled"] = false,
					["Color"] = Color3.fromRGB(255, 255, 255),
				},
				["HealthBar"] = {
					["Enabled"] = false,
				},
				["Bones"] = {
					["Enabled"] = false,
					["Color"] = Color3.fromRGB(255, 255, 255),
				},
				["Name"] = {
					["Enabled"] = false,
				},
				["Weapon"] = {
					["Enabled"] = false,
				},
				["LookAngle"] = {
					["Enabled"] = false,
					["Color"] = Color3.fromRGB(255, 255, 255),
				},
			},
			["BulletBeams"] = {
				["Enabled"] = false,
				["Color"] = Color3.fromRGB(255, 255, 255),
				["Beams"] = {},
			},
			["BulletImpacts"] = {
				["Enabled"] = false,
				["Material"] = "Plastic",
				["Color"] = Color3.fromRGB(255, 255, 255),
				["Impacts"] = {},
			},
		},
		["Legit"] = {
			["TriggerBot"] = {
				["Enabled"] = {
					["Value"] = false,
					["Toggle"] = false,
				},
				["Magnet"] = {
					["Enabled"] = false,
				},
			},
			["AimAssist"] = {
				["Enabled"] = {
					["Value"] = false,
					["Toggle"] = false,
				},
				["HitBoxes"] = {},
				["Exceptions"] = {},
				["Smoothing"] = {
					["Value"] = 0,
				},
				["FieldOfView"] = {
					["Value"] = 0,
				},
			},
		},
		["Miscellaneous"] = {
			["BunnyHop"] = {
				["Enabled"] = false,
			}
		},
	}

	local Services = {
		["Workspace"] = findService.Workspace,
		["Players"] = findService.Players,
		["ReplicatedStorage"] = findService.ReplicatedStorage,
		["RunService"] = findService.RunService,
		["UserInputService"] = findService.UserInputService,
		["Debris"] = findService.Debris,
		["NetworkClient"] = findService.NetworkClient,
	}

	local Objects = {
		["Client"] = {
			["Player"] = Services.Players.LocalPlayer,
			["Camera"] = Services.Workspace.CurrentCamera,
			["BodyParts"] = {},
			["GunInformation"] = {
				["Name"] = nil,
				["Model"] = nil,
				["Stats"] = nil,
				["Explosive"] = nil,
				["Projectile"] = nil,
				["Melee"] = nil,
			}
		},
		["Workspace"] = {
			["Map"] = Services.Workspace:WaitForChild("Map"),
		},
		["Players"] = {},
		["ReplicatedStorage"] = {
			["Events"] =  Services.ReplicatedStorage:WaitForChild("Events"),
			["wkspc"] = Services.ReplicatedStorage:WaitForChild("wkspc"),
			["Weapons"] = Services.ReplicatedStorage:WaitForChild("Weapons"),
		},
	}

	Objects["Client"]["Character"] = Objects["Client"]["Player"].Character or Objects["Client"]["Player"].CharacterAdded:Wait()

	local ValueStorage = { -- temp
		BoneFormat = {
			{From = "Head", To = "UpperTorso"},
			{From = "UpperTorso", To = "LowerTorso"},
			{From = "UpperTorso", To = "RightUpperArm"},
			{From = "UpperTorso", To = "LeftUpperArm"},
			{From = "LeftUpperArm", To = "LeftLowerArm"},
			{From = "RightUpperArm", To = "RightLowerArm"},
			{From = "LowerTorso", To = "LeftUpperLeg"},
			{From = "LeftUpperLeg", To = "LeftLowerLeg"},
			{From = "LowerTorso", To = "RightUpperLeg"},
			{From = "LeftLowerLeg", To = "LeftFoot"},
			{From = "RightUpperLeg", To = "RightLowerLeg"},
			{From = "RightLowerLeg", To = "RightFoot"},
		},
	}

	for Index, Object in next, Objects["Client"]["Character"]:GetChildren() do 
		if Object:IsA("BasePart") then
			Objects["Client"]["BodyParts"][Object.Name] = Object
		end
	end

	Objects["Client"]["Humanoid"] = Objects["Client"]["Character"]:WaitForChild("Humanoid")
	Objects["Client"]["HumanoidRootPart"] = Objects["Client"]["Character"]:WaitForChild("HumanoidRootPart")
	Objects["Client"]["Head"] = Objects["Client"]["Character"]:WaitForChild("Head")
	Objects["Client"]["Mouse"] = Objects["Client"]["Player"]:GetMouse()
	Objects["Client"]["NRPBS"] = Objects["Client"]["Player"]:WaitForChild("NRPBS")
	Objects["Client"]["Equipped"] = Objects["Client"]["NRPBS"]:WaitForChild("EquippedTool")

	Objects["Workspace"]["Ignore"] = Objects["Workspace"]["Map"]:WaitForChild("Ignore")

	Objects["ReplicatedStorage"]["Status"] = Objects["ReplicatedStorage"]["wkspc"]:WaitForChild("Status")
	Objects["ReplicatedStorage"]["Preparation"] = Objects["ReplicatedStorage"]["Status"]:WaitForChild("Preparation")
	Objects["ReplicatedStorage"]["FFA"] = Objects["ReplicatedStorage"]["wkspc"]:WaitForChild("FFA")
	Objects["ReplicatedStorage"]["ControlTurn"] = Objects["ReplicatedStorage"]["Events"]:WaitForChild("ControlTurn")
	Objects["ReplicatedStorage"]["BuildWall"] = Objects["ReplicatedStorage"]["Events"]:WaitForChild("BuildWall")

	Objects["Client"]["Equipped"].Changed:Connect(function(NewValue)
		local Stats = Objects["ReplicatedStorage"]["Weapons"]:FindFirstChild(NewValue)

		Objects["Client"]["GunInformation"]["Name"] = NewValue

		if Stats then
			Objects["Client"]["GunInformation"]["Stats"] = Stats
			Objects["Client"]["GunInformation"]["Explosive"] = Stats:FindFirstChild("Explosive")
			Objects["Client"]["GunInformation"]["Projectile"] = Stats:FindFirstChild("Projectile")
			Objects["Client"]["GunInformation"]["Melee"] = Stats:FindFirstChild("Melee")
		end
	end)

	Objects["Client"]["Character"].ChildAdded:Connect(function(Child)
		if Child.Name == "Gun" then
			Objects["Client"]["GunInformation"]["Model"] = Child

			Child.CanCollide = false
			Child.Massless = true

			local check = Child:WaitForChild("Idle")

			for Index, Object in next, Child:GetDescendants() do 
				if Object:IsA("MeshPart") then
					Object.CanCollide = false
					Object.Massless = true
				end
			end
		end
		return nil
	end)

	Services["Workspace"].ChildAdded:Connect(function(Child)
		 if Child.Name == "Map" then
			Objects["Workspace"]["Map"] = Child
			Objects["Workspace"]["Ignore"] = Objects["Workspace"]["Map"]:WaitForChild("Ignore")
		 end
	end)

	local function onPlayerAdded(Player)
		Objects["Players"][Player.Name] = {
			["Character"] = Player.Character or Player.CharacterAdded:Wait(),
		}

		Objects["Players"][Player.Name]["Humanoid"] = Objects["Players"][Player.Name]["Character"]:WaitForChild("Humanoid")
		Objects["Players"][Player.Name]["NRPBS"] = Player:WaitForChild("NRPBS")
		Objects["Players"][Player.Name]["Equipped"] = Services.Players[Player.Name]["NRPBS"]:WaitForChild("EquippedTool")
		Objects["Players"][Player.Name]["Health"] = Objects["Players"][Player.Name]["NRPBS"]:WaitForChild("Health")
		Objects["Players"][Player.Name]["MaxHealth"] = Objects["Players"][Player.Name]["NRPBS"]:WaitForChild("MaxHealth")

		Objects["Players"][Player.Name]["ESP"] = {
			["BoundingBox"] = {
				createDrawing("Square", {Filled = false, Position = Vector2.new(), Size = Vector2.new(), Visible = false, Thickness = 3, Color = Color3.fromRGB(0, 0, 0)}),
				createDrawing("Square", {Filled = false, Position = Vector2.new(), Size = Vector2.new(), Visible = false, Thickness = 1, Color = Features["Visuals"]["ESP"]["BoundingBox"]["Color"]}),
			},
			["Bones"] = {},
			["HealthBar"] = {
				createDrawing("Square", {Filled = false, Position = Vector2.new(), Size = Vector2.new(), Visible = false, Thickness = 3, Color = Color3.fromRGB(0, 0, 0)}),
				createDrawing("Square", {Filled = false, Position = Vector2.new(), Size = Vector2.new(), Visible = false, Thickness = 1, Color = Color3.new(1 - Objects["Players"][Player.Name]["Health"].Value / Objects["Players"][Player.Name]["MaxHealth"].Value, Objects["Players"][Player.Name]["Health"].Value / Objects["Players"][Player.Name]["MaxHealth"].Value, 0)}),
				createDrawing("Text", {Font = Drawing.Fonts.Monospace, Text = tostring(math.clamp(Objects["Players"][Player.Name]["Health"].Value, 0, Objects["Players"][Player.Name]["NRPBS"]:WaitForChild("MaxHealth").Value)), Position = Vector2.new(), Size = 14, Visible = false, Outline = true, Center = true, OutlineColor = Color3.fromRGB(0, 0, 0), Color = Color3.fromRGB(255, 255, 255)}),
			},
			["Name"] = {
				createDrawing("Text", {Font = Drawing.Fonts.Monospace, Text = Player.Name, Position = Vector2.new(), Size = 14, Visible = false, Outline = true, Center = true, OutlineColor = Color3.fromRGB(), Color = Color3.fromRGB(255, 255, 255)}),
			},
			["Weapon"] = {
				createDrawing("Text", {Font = Drawing.Fonts.Monospace, Text = Objects["Players"][Player.Name]["Equipped"].Value, Position = Vector2.new(), Size = 14, Visible = false, Outline = true, Center = true, OutlineColor = Color3.fromRGB(), Color = Color3.fromRGB(255, 255, 255)}),
			},
			["LookAngle"] = {
				createDrawing("Line", {Visible = false, Transparency = 1, Color = Features["Visuals"]["ESP"]["LookAngle"]["Color"], Thickness = 1, From = Vector2.new(), To = Vector2.new()}),
			},
		}

		for Index = 1, #ValueStorage.BoneFormat do
            table.insert(Objects["Players"][Player.Name]["ESP"]["Bones"], createDrawing("Line", {Visible = true, Transparency = 1, Color = Features["Visuals"]["ESP"]["Bones"]["Color"], Thickness = 1, From = Vector2.new(), To = Vector2.new()}))
		end

		Objects["Players"][Player.Name]["Health"].Changed:Connect(function(NewValue)
			Objects["Players"][Player.Name]["ESP"]["HealthBar"][2].Color = Color3.fromRGB(255 - 255 / (Objects["Players"][Player.Name]["MaxHealth"].Value / Objects["Players"][Player.Name]["Health"].Value), 255 / (Objects["Players"][Player.Name]["MaxHealth"].Value / Objects["Players"][Player.Name]["Health"].Value), 0)
			Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Text = tostring(math.clamp(Objects["Players"][Player.Name]["Health"].Value, 0, Objects["Players"][Player.Name]["NRPBS"]:WaitForChild("MaxHealth").Value))
		end)

		Objects["Players"][Player.Name]["Equipped"].Changed:Connect(function(NewValue)
			Objects["Players"][Player.Name]["ESP"]["Weapon"][1].Text = NewValue
		end)

		Player:GetPropertyChangedSignal("Team"):Connect(function()
			for Index, Table in next, Objects["Players"][Player.Name]["ESP"] do 
				for Index, Drawing in next, Table do
					Drawing.Visible = false
				end
			end
		end)
	end

	for Index, Player in next, Services.Players:GetPlayers() do
		onPlayerAdded(Player)
	end

	Services.Players.PlayerAdded:Connect(onPlayerAdded)

	Services.Players.PlayerRemoving:Connect(function(Player)
		for Index, Table in next, Objects["Players"][Player.Name]["ESP"] do 
			for Index, Drawing in next, Table do
				Drawing:Remove()
			end
		end

		Objects["Players"][Player.Name] = nil
	end)

	Objects["Client"]["Player"]:GetPropertyChangedSignal("Team"):Connect(function()
		for Index, Player in next, Services.Players:GetPlayers() do
			if Objects["Players"][Player.Name]["ESP"] then
				for Index, Table in next, Objects["Players"][Player.Name]["ESP"] do 
					for Index, Drawing in next, Table do
						Drawing.Visible = false
					end
				end
			end
		end
	end)

	local rage_bot_enabled, aim_assist_enabled, trigger_bot_enabled, bunny_hop_enabled, edge_jump_enabled, chat_bot_enabled, kill_say_enabled, death_say_enabled, third_person_enabled = false, false, false, false, false, false, false, false, false
	local local_player = findService.Players.LocalPlayer
	local local_player_character = local_player.Character or local_player.CharacterAdded:Wait()

	local ignore_walls = false
	local do_ragebot, ragebot_bind_name = true, nil
	local do_aimbot, aimbot_flag, aimbot_bind_name, aimbot_key = false, "On key held", nil, nil
	local trigger_flag, trigger_key, do_trigger, trigger_bind_name, trigger_exceptions = "On key held", nil, false, nil, {}
	local noslow_exceptions, do_noslow = {}, false
	local chat_bot_bind_name, already_chatted = nil, false

	local game_metatable = getrawmetatable(game)
	local backup_index = game_metatable.__index
	local BackupNamecall = game_metatable.__namecall
	local chat_bot_enabled = false
	local third_person_key = nil
	local third_person_distance = 8
	local chat_bot_flags = {}

	local ChatSpamMessages = {
		"cant hvh? desuhook has automatic hvh features to always ensure you stand on top!",
		"once again, it seems you have been tapped by the cheating client, desuhook",
		"this game of arsenal has been brought to you by the desuhook team, a superior cheating client.",
		"you are more welcome to share your 5 star review of this match in the arsenal report server",
		"desuhook, undetected by rolve anti cheat, completely dominating the cheating scene",
		"if in the unlikely event you might be upset with someone cheating in a video game, please record this match and send it in the arsenal report server",
		"desuhook owning the competition (of which it has none)",
		"desuhook, grab a copy today!",
		"unlike other cheats, desuhook wont run away with your money!",
		"desuhook, $10 lifetime subscription.",
	}

	local kill_say_messages = {
		"that's a yikes",
		"couple thousand on my wrist",
		"uuh i hope you didn't pay for that",
		"uno!",
		"sorry! couldn't hear you over the sound of that 1",
		"that made me break my screenshot key",
		"hey how does the death screen look? I haven't seen it in a while",
		"looks pasted",
		" DEAD ",
		"bitcoin is waiting for ya bud",
		"i get the feeling you were dropped on your head as a kid, repeatedly, for 3 hours. Just a hunch",
		"you're the sort of person to get 3rd place in a 1v1",
	}

	local death_say_messages = {
		"yea nice wallbang",
		"my dog started barking",
		"i had fps drops",
		"you teleported",
		"teleported me back lol",
		"nice ping advantage",
		"i have low fps",
		"i was typing",
		"the sun was in my eyes",
		"my leg fell asleep",
		"i had 29 ping and you had 20 nice ping advantage loser",
		"wasn't a headshot lol you manipulated the killfeed hh",
		"nice server side, making expose vid rn",
		"my ping spoofer failed",
	}

	local fov_circle = createDrawing("Circle", {Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), NumSides = 32, Radius = 0, Thickness = 1, Filled = true, Transparency = 0, Visible = true, Color = Color3.fromRGB(255, 255, 255)})

	local speed_update_value
	local no_slow_enabled

	local EnabledFeatures = {
		Visuals = {},
	}
	local FeatureValues = {
		Visuals = {},
	}
	local BindNames = {}
	FeatureValues["ESPTable"] = {}

	local function get_player_weapon(arguments)
		local player = arguments and #arguments == 1 and arguments[1] or nil

		local function initiate_function()
			if player and player.Character then
				local weapon = player.Character:FindFirstChild("Gun") or nil
				local weapon_name = weapon and weapon:FindFirstChild("Boop").Value or nil
				local weapon_in_storage = weapon_name and findService.ReplicatedStorage.Weapons:FindFirstChild(weapon_name) or nil

				if weapon and weapon_name and weapon_in_storage then
					return {
						weapon_model = weapon,
						weapon_name = weapon_name,
						weapon_stats = weapon_in_storage,
					}
				end
			end

			return nil
		end

		local function_success, function_result = pcall(initiate_function)

		return function_result
	end

	local function get_match_information(arguments)

		local function initiate_function()
			return {
				is_free_for_all = findService.ReplicatedStorage:FindFirstChild("wkspc"):FindFirstChild("FFA").Value,
				is_in_progress = findService.ReplicatedStorage:FindFirstChild("wkspc"):FindFirstChild("Status"):FindFirstChild("Preparation").Value == false,
				game_type = findService.ReplicatedStorage:FindFirstChild("wkspc"):FindFirstChild("gametype").Value,
				map_model = findService.Workspace:FindFirstChild("Map") or nil,
			}
		end

		local function_success, function_result = pcall(initiate_function)

		return function_result
	end

	local function get_player_information(arguments)
		local player, match_information = arguments and #arguments == 1 and arguments[1] or nil, get_match_information()

		local function initiate_function()
			if player and player.Character then
				local is_alive, is_spawned, is_taunting, has_force_field = player.Character:FindFirstChild("IsAPlayer") and player.Character:FindFirstChildOfClass("Humanoid").Health > 0 or false, player.Character:FindFirstChild("Spawned") and true or false, player.Character:FindFirstChild("Taunting") and true or false, player.Character:FindFirstChildOfClass("ForceField") and true or false

				return {
					is_alive = is_alive,
					is_spawned = is_spawned,
					is_enemy = player ~= local_player and is_spawned and is_alive and match_information.is_free_for_all or player.Team ~= local_player.Team,
					is_taunting = is_taunting,
					has_forcefield = has_force_field,
				}
			end

			return nil
		end

		local function_success, function_result = pcall(initiate_function)

		return function_result
	end

	local function get_weapon_information(arguments)
		local weapon = arguments and #arguments == 1 and arguments[1] or nil

		local function initiate_function()
			if weapon then
				local is_melee, is_projectile, is_explosive = weapon:FindFirstChild("Melee") and true or false, weapon:FindFirstChild("Projectile") and true or false, weapon:FindFirstChild("Tags"):FindFirstChild("WeaponType").Value == "Explosive" or false
				local can_headshot

				if is_projectile or is_explosive then
					can_headshot = false
				else
					can_headshot = true
				end

				return {
					is_melee = is_melee,
					is_projectile = is_projectile,
					is_explosive = is_explosive,
					can_headshot = can_headshot,
				}
			end

			return nil
		end

		local function_success, function_result = pcall(initiate_function)

		return function_result
	end

	local client
	
	for index, value in pairs(getgc(true)) do
		if typeof(value) == "table" and rawget(value, "firebullet") then
			client = value
			break
		end
	end

	setreadonly(game_metatable, false)

	local menu = createMenu({})

	if menu then
		local RageTab = menu.create_tab({{"Rage", 4829792375}, {"Aimbot", "Anti-aimbot"}, {{3, "General"}, {3, "Accuracy"}, {3, "General"}, {3, "Other"}}})
		local visuals_tab = menu.create_tab({{"Visuals", 4829902793}, {"ESP", "Models"}, {{3, "Enemy Visuals"}, {3, "General"}, {3, "General"}, {3, "World"}}})
		local legit_tab = menu.create_tab({{"Legit", 4829798864}, {"General"}, {{3, "Aimbot"}, {3, "Triggerbot"}}})
		local miscellaneous_tab = menu.create_tab({{"Miscellaneous", 4829781347}, {"General", "Skins"}, {{3, "Miscellaneous"}, {3, "Configurations"}, {3, "General"}}})

		--[[
		local_player_character.Humanoid.Running:Connect(function(speed)
			if speed > 0 then
				game.RunService:BindToRenderStep("FloorMaterialCheck", Enum.RenderPriority.Character.Value - 5, function()
					if local_player_character.Humanoid.FloorMaterial ~= LastSetFloorMaterial then
						if local_player_character.Humanoid.FloorMaterial == Enum.Material.Air and local_player_character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping and local_player_character.Humanoid:GetState() ~= Enum.HumanoidStateType.Climbing then
							local_player_character.Humanoid.Jump = true
						end
					end
					LastSetFloorMaterial = local_player_character.Humanoid.FloorMaterial
				end)
			else
				game.RunService:UnbindFromRenderStep("FloorMaterialCheck")
			end
		end)]]

		local function checkInputObject(InputObject, KeyBind)
			if InputObject.KeyCode == KeyBind or InputObject.UserInputType == KeyBind then
				return true
			end

			return false
		end

		local function input_began(InputObject, GameProcessed)
			if not GameProcessed and not Services.UserInputService:GetFocusedTextBox() then
				if checkInputObject(InputObject, Features["KeyBinds"]["LeftOverride"]) then
					Features["Rage"]["AntiAimbot"]["Override"]["Value"] = Features["Rage"]["AntiAimbot"]["Override"]["Value"] ~= 90 and 90 or nil
				end

				if checkInputObject(InputObject, Features["KeyBinds"]["RightOverride"]) then
					Features["Rage"]["AntiAimbot"]["Override"]["Value"] = Features["Rage"]["AntiAimbot"]["Override"]["Value"] ~= -90 and -90 or nil
				end

				if checkInputObject(InputObject, Features["KeyBinds"]["BackOverride"]) then
					Features["Rage"]["AntiAimbot"]["Override"]["Value"] = Features["Rage"]["AntiAimbot"]["Override"]["Value"] ~= 180 and 180 or nil
				end

				if InputObject.KeyCode == third_person_key or InputObject.UserInputType == third_person_key then
					third_person_enabled = not third_person_enabled
					wait()
					mousescroll(50)
					if third_person_enabled and local_player_character.Head:FindFirstChild("Unusual") then
						for index, value in pairs(local_player_character.Head:FindFirstChild("Unusual"):GetChildren()) do 
							value.Enabled = true
						end
					elseif not third_person_enabled and local_player_character.Head:FindFirstChild("Unusual") then
						for index, value in pairs(local_player_character.Head:FindFirstChild("Unusual"):GetChildren()) do 
							value.Enabled = false
						end
					end
				elseif InputObject.KeyCode == trigger_key or InputObject.UserInputType == trigger_key then
					if trigger_bot_enabled then
						if trigger_flag == "On key held" then
							do_trigger = true
						elseif trigger_flag == "On key toggle" then
							do_trigger = not do_trigger
						end
					end
				end

				local_player_character.Hitbox.Anchored = (InputObject.KeyCode == ValueStorage["AirtsuckKey"] or InputObject.UserInputType == ValueStorage["AirtsuckKey"]) and not local_player_character.Hitbox.Anchored or not (InputObject.KeyCode == ValueStorage["AirtsuckKey"] or InputObject.UserInputType == ValueStorage["AirtsuckKey"]) and local_player_character.Hitbox.Anchored
			end

			return nil
		end

		local function input_ended(input_object, game_processsed)
			if game_processsed == false then
				if input_object.KeyCode == trigger_key or input_object.UserInputType == trigger_key then
					if trigger_bot_enabled and trigger_flag == "On key held" then
						do_trigger = false
					end
				end
			end
			
			return nil
		end

		game:GetService("UserInputService").InputBegan:Connect(input_began)
		game:GetService("UserInputService").InputEnded:Connect(input_ended)

		game_metatable.__index = newcclosure(function(object, property)
			if third_person_enabled then
				if property == "CameraMaxZoomDistance" then
					return third_person_distance
				elseif property == "CameraMinZoomDistance" then
					return third_person_distance
				elseif property == "CameraMode" then
					return Enum.CameraMode.Classic
				end
			end

			if no_slow_enabled then
				if property == "WalkSpeed" then
					return 28
				end
			end

			return backup_index(object, property)
		end)

		game_metatable.__namecall = newcclosure(function(Object, ...)
			local NamecallMethod = getnamecallmethod()
			local Arguments = {...}

			if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" and #Arguments == 4 then
				local Distance
				local NewRay

				if Features["Rage"]["Aimbot"]["Target"] then
					NewRay = Ray.new(Objects["Client"]["Camera"].CFrame.Position, (Features["Rage"]["Aimbot"]["Target"].Position + Vector3.new(0, (Objects["Client"]["Camera"].CFrame.Position - Features["Rage"]["Aimbot"]["Target"].Parent.Head.Position).Magnitude / 500, 0) - Objects["Client"]["Camera"].CFrame.Position).unit * 500)
				
					if Features["Rage"]["Aimbot"]["Enabled"] then 
						Arguments[1] = NewRay
					end
				else
					NewRay = Ray.new(Objects["Client"]["Camera"].CoordinateFrame.p, (CFrame.new(Objects["Client"]["Camera"].CoordinateFrame.p, Objects["Client"]["Camera"].CoordinateFrame.p + Objects["Client"]["Camera"].CoordinateFrame.lookVector * 999)).lookVector.unit * 999)
				end

				
				
				if not Objects["Client"]["GunInformation"]["Melee"] and not Objects["Client"]["GunInformation"]["Projectile"] and not Objects["Client"]["GunInformation"]["Explosive"] then
					local BulletBeam = createObject("Part", {CanCollide = false, Anchored = true, Color = Features["Visuals"]["BulletBeams"]["Color"], Material = Enum.Material.ForceField})
					local BulletImpact = createObject("Part", {CanCollide = false, Anchored = true, Size = Vector3.new(0.3, 0.3, 0.3), Color = Features["Visuals"]["BulletImpacts"]["Color"], Material = Enum.Material[Features["Visuals"]["BulletImpacts"]["Material"]]})
					
					local RayHit, HitPosition = Services.Workspace.FindPartOnRayWithIgnoreList(Services.Workspace, NewRay, {Objects["Workspace"]["Ignore"], Objects["Client"]["Camera"], Objects["Client"]["Character"]}, false, true, "")
					Distance = Features["Rage"]["Aimbot"]["Target"] and (Objects["Client"]["Head"].CFrame.p - Features["Rage"]["Aimbot"]["Target"].Position).Magnitude or (Objects["Client"]["Head"].CFrame.p - HitPosition).Magnitude

					if Features["Visuals"]["BulletBeams"]["Enabled"] then
						table.insert(Features["Visuals"]["BulletBeams"]["Beams"], BulletBeam)
						BulletBeam.CFrame = CFrame.new(Objects["Client"]["Head"].CFrame.p, Features["Rage"]["Aimbot"]["Target"] and Features["Rage"]["Aimbot"]["Target"].Position or HitPosition) * CFrame.new(0, 0, -Distance / 2)
						BulletBeam.Size = Vector3.new(0.1, 0.1, Distance)
						BulletBeam.Parent = Objects["Client"]["Camera"]

						if #Features["Visuals"]["BulletBeams"]["Beams"] >= 10 then
							Features["Visuals"]["BulletBeams"]["Beams"][1].Destroy(Features["Visuals"]["BulletBeams"]["Beams"][1])
							table.remove(Features["Visuals"]["BulletBeams"]["Beams"], 1)
						end
					end

					if Features["Visuals"]["BulletImpacts"]["Enabled"] then
						if RayHit then
							table.insert(Features["Visuals"]["BulletImpacts"]["Impacts"], BulletBeam)
							setProperties(BulletImpact, {Position = HitPosition, Parent = Objects["Client"]["Camera"]})
						end

						if #Features["Visuals"]["BulletImpacts"]["Impacts"] >= 10 then
							Features["Visuals"]["BulletImpacts"]["Impacts"][1].Destroy(Features["Visuals"]["BulletImpacts"]["Impacts"][1])
							table.remove(Features["Visuals"]["BulletImpacts"]["Impacts"], 1)
						end
					end

					Services.Debris.AddItem(findService.Debris, BulletBeam, 2)
					Services.Debris.AddItem(findService.Debris, BulletImpact, 2)
				end
			end
			

			return BackupNamecall(Object, unpack(Arguments))
		end)

		local function onCharacterAdded(Character)
			if EnabledFeatures["EnemyChams"] then
				queueOnSpawn(local_player_character, function()
					if findService.Players:GetPlayerFromCharacter(Character).Team ~= local_player.Team then
						updateChams(Character, FeatureValues["EnemyChamsColor"], Enum.Material[FeatureValues["EnemyChamsMaterial"][1]], EnabledFeatures["RemoveEnemyHats"])
					end
				end)
			end
		end
		
		local function queueOnSpawn(Character, Function)
			local Connection

			if Character:FindFirstChild("Spawned") then
				Function()
			else
				Connection = Character.ChildAdded:Connect(function(Child)
					if Child.Name == "Spawned" then
						Function()
						Connection:Disconnect()
					end
				end)
			end
		end

		local function unbind_from_render_step()
			local bind_name = arguments and #arguments == 1 and arguments[1] or nil

			local function initiate_function()
				return findService.RunService:UnbindFromRenderStep(bind_name)
			end

			local function_success, function_result = pcall(initiate_function)

			return nil
		end

		local function chat_bot()
			local function initiate_function()
				if table.find(chat_bot_flags, "Spam") then
					local server_time = findService.ReplicatedStorage.wkspc.DistributedTime.Value
					local no_decimal_time = math.floor(server_time)
					
					if tostring(math.floor(server_time * 10) / 10) == tostring(no_decimal_time) and not already_chatted then
						already_chatted = true
                        --game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", "msg", false, nil, false, true)
						game:GetService("ReplicatedStorage").ReplicatedStorage.Events.PlayerChatted:FireServer("Trolling42", ChatSpamMessages[tonumber(string.sub(no_decimal_time, -1)) + 1], false, nil, false, true)
					elseif tostring(math.floor(server_time * 10) / 10) ~= tostring(no_decimal_time) and already_chatted then
						already_chatted = false
					end
				end

				return nil
			end

			local function_success, function_result = pcall(initiate_function)

			return nil
		end

		RageTab.create_checkbox({1, "Enabled", function(IsEnabled)
			Features["Rage"]["Aimbot"]["Enabled"]["Value"] = IsEnabled
		end})

		RageTab.create_checkbox({1, "Auto-fire", function(IsEnabled)
			Features["Rage"]["Aimbot"]["AutoFire"]["Enabled"] = IsEnabled
		end})

		RageTab.create_dropdown({1, "Hitboxes", true, {"Head", "Torso", "Arms", "Legs"}, function(Flag)
			Features["Rage"]["Aimbot"]["Hitboxes"] = Flag
		end})

		RageTab.create_checkbox({2, "No recoil", function(IsEnabled)
			Features["Rage"]["Aimbot"]["NoRecoil"]["Enabled"] = IsEnabled
		end})

		RageTab.create_checkbox({2, "No spread", function(IsEnabled)
			Features["Rage"]["Aimbot"]["NoSpread"]["Enabled"] = IsEnabled
		end})

		local function changeAngle(Angle)
			local_player_character.HumanoidRootPart.CFrame = CFrame.new(local_player_character.HumanoidRootPart.Position, local_player_character.HumanoidRootPart.Position + Vector3.new(workspace.CurrentCamera.CFrame.lookVector.X, 0, workspace.CurrentCamera.CFrame.lookVector.Z)) * CFrame.Angles(0, math.rad(Angle), 0)
		end

		ValueStorage["BodyParts"] = {"HumanoidRootPart", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm", "UpperTorso", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LowerTorso", "Particle Area", "Head", "TouchDirection", "Hitbox", "Waist", "Neck", "RArm", "LArm", "TurnMode", "HeadHB", "Humanoid", "Sound", "OOB", "Health2", "DamageScr", "Regen", "PrimaryOUT", "Body Colors", "FakeHead", "Spawned", "Pants", "IsAPlayer", "Gat", "Gun"}

		local function updateChams(Character, Color, Material, RemoveHats)
			for Index, Object in next, Character:GetDescendants() do 
				if RemoveHats and Object.Parent == Character and not table.find(ValueStorage["BodyParts"], Object.Name) then
					Object:Destroy()
				end

				if Object:IsA("BasePart") then
					if Object.BrickColor ~= BrickColor.new(Color) then
						Object.BrickColor = BrickColor.new(Color)
					end

					if Object.Material ~= Material then
						Object.Material = Material
					end
				elseif (Object:IsA("SpecialMesh") or Object:IsA("FileMesh")) and Object.TextureId ~= "" then
					Object.TextureId = ""
				elseif Object:IsA("Shirt") and Object.ShirtTemplate ~= "" then
					Object.ShirtTemplate = ""
				elseif Object:IsA("Pants") and Object.PantsTemplate ~= "" then
					Object.PantsTemplate = ""
				end
			end

			return nil
		end

		local function updateLighting()
			local function initiateFunction()
				if EnabledFeatures["Models"] then
					findService.Lighting.Brightness = FeatureValues["NightMode"] and 1 - FeatureValues["NightMode"] / 99 or findService.Lighting.Brightness
					findService.Lighting.FogEnd = EnabledFeatures["ChangeFog"] and 1000 - FeatureValues["FogEnd"] * 9 or findService.Lighting.FogEnd
					findService.Lighting.FogColor = EnabledFeatures["ChangeFog"] and FeatureValues["FogColor"] or findService.Lighting.FogColor
					findService.Lighting.Ambient = EnabledFeatures["ChangeAmbient"] and FeatureValues["AmbientColor"] or findService.Lighting.Ambient
					findService.Lighting.OutdoorAmbient = EnabledFeatures["ChangeAmbient"] and FeatureValues["AmbientColor"] or findService.Lighting.OutdoorAmbient
				end
				
				return nil
			end

			return pcall(initiateFunction)
		end

		ValueStorage["FreestandableObjects"] = {}

		if findService.Workspace:FindFirstChild("Map") then
			ValueStorage["FreestandableObjects"] = {}

			for Index, Object in next, findService.Workspace:FindFirstChild("Map").Geometry:GetDescendants() do 
				if Object:IsA("BasePart") then
					if Object.Size.Y >= 10 then
						table.insert(ValueStorage["FreestandableObjects"], Object)
					end
				end
			end

			findService.Workspace:FindFirstChild("Map").Geometry.DescendantAdded:Connect(function(Descendant)
				if Descendant:IsA("BasePart") then
					if Descendant.Size.Y >= 10 then
						table.insert(ValueStorage["FreestandableObjects"], Descendant)
					end
				end
			end)
		end

		findService.Workspace.ChildAdded:Connect(function(Child)
			if Child:IsA("Model") and findService.Players:FindFirstChild(Child.Name) then
				if findService.Players:FindFirstChild(Child.Name):IsA("Player") then
					queueOnSpawn(Child, function()
						onCharacterAdded(Child)
					end)
				end
			elseif Child:IsA("Model") and Child.Name == "Map" then
				ValueStorage["FreestandableObjects"] = {}
				local Geometry = Child:WaitForChild("Geometry")

				for Index, Object in next, Geometry:GetDescendants() do 
					if Object:IsA("BasePart") then
						if Object.Size.Y >= 10 then
							table.insert(ValueStorage["FreestandableObjects"], Object)
						end
					end
				end

				Geometry.DescendantAdded:Connect(function(Descendant)
					if Descendant:IsA("BasePart") then
						if Descendant.Size.Y >= 10 then
							table.insert(ValueStorage["FreestandableObjects"], Descendant)
						end
					end
				end)

				wait(1)
				updateLighting()
			end
		end)

		RageTab.create_checkbox({3, "Enabled", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Enabled"]["Value"] = IsEnabled
			return nil
		end})

		local Pitches = {"None", "Up", "Down", "Zero", "Random"}
		
		RageTab.create_dropdown({3, "Pitch", false, Pitches, function(Flag)
			Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] = Flag[1]
			Features["Rage"]["AntiAimbot"]["Pitch"]["Randomize"] = Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] == "Random" and true or false

			while Features["Rage"]["AntiAimbot"]["Pitch"]["Randomize"] do 
				Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] = Pitches[math.random(1, #Pitches)]
				wait(0.5)
			end
			return nil
		end})

		RageTab.create_checkbox({3, "Yaw", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Yaw"]["Enabled"] = IsEnabled
		end})

		RageTab.create_slider({3, "Yaw value", 0, 360, 1, function(Value)
			Features["Rage"]["AntiAimbot"]["Yaw"]["Value"] = Value
			Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] = Value
		end})

		RageTab.create_checkbox({3, "Spin", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Spin"]["Enabled"] = IsEnabled
		end})

		RageTab.create_slider({3, "Spin increment", 0, 360, 1, function(Value)
			Features["Rage"]["AntiAimbot"]["Spin"]["Increment"] = Value
		end})

		RageTab.create_slider({3, "Spin range", 0, 360, 1, function(Value)
			Features["Rage"]["AntiAimbot"]["Spin"]["Range"] = Value
		end})

		RageTab.create_checkbox({3, "Jitter", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Jitter"]["Enabled"] = IsEnabled
		end})

		RageTab.create_checkbox({3, "Randomize jitter", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Jitter"]["Randomize"] = IsEnabled
		end})

		RageTab.create_slider({3, "Jitter range", 0, 180, 1, function(Value)
			Features["Rage"]["AntiAimbot"]["Jitter"]["Range"] = Value
		end})

		RageTab.create_checkbox({4, "At FOV target", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["LookAtFOVTarget"]["Enabled"] = IsEnabled
		end})

		RageTab.create_checkbox({4, "Freestand", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Freestand"]["Enabled"] = IsEnabled
		end})

		RageTab.create_checkbox({4, "Headless", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["Headless"] = IsEnabled
				return nil
			end

			return pcall(initiateFunction)
		end})

		RageTab.create_checkbox({4, "Override", function(IsEnabled)
			Features["Rage"]["AntiAimbot"]["Override"]["Enabled"] = IsEnabled
		end})

		RageTab.create_keybind({4, "Left override", function(Key)
			Features["KeyBinds"]["LeftOverride"] = Key
		end})

		RageTab.create_keybind({4, "Right override", function(Key)
			Features["KeyBinds"]["RightOverride"] = Key
		end})

		RageTab.create_keybind({4, "Back override", function(Key)
			Features["KeyBinds"]["BackOverride"] = Key
		end})

		RageTab.create_checkbox({4, "Fake-lag", function(IsEnabled)
			if not IsEnabled then Services["NetworkClient"]:SetOutgoingKBPSLimit(9e9) end
			Features["Rage"]["AntiAimbot"]["FakeLag"]["Enabled"] = IsEnabled
		end})

		RageTab.create_dropdown({4, "Fake-lag mode", false, {"Static", "Dynamic", "Random"}, function(Table)
			Features["Rage"]["AntiAimbot"]["FakeLag"]["Mode"] = Table[1]
		end})

		RageTab.create_slider({4, "Fake-lag value", 0, 20, 1, function(Value)
			Features["Rage"]["AntiAimbot"]["FakeLag"]["Value"] = Value + 1
		end})


		local function visualsLoop()
			local function initiateFunction()
				
				if EnabledFeatures["ArmChams"] then
					for Index, Object in next, findService.Workspace.Camera.Arms:GetDescendants() do 
						if Object:IsA("BasePart") and (Object:IsDescendantOf(findService.Workspace.Camera.Arms.CSSArms) or (Object.Name == "Right Arm" or Object.Name == "Left Arm")) then
							Object.BrickColor = BrickColor.new(FeatureValues["ArmsColor"])
							Object.Material = Enum.Material.ForceField
						end
					end
				end

				if EnabledFeatures["LocalChams"] then
					if local_player_character:FindFirstChild("FakeHead") then
						local_player_character:FindFirstChild("FakeHead"):Destroy()
					end

					for Index, Object in next, local_player_character:GetDescendants() do 
						if Object:IsA("BasePart") then
							Object.BrickColor = BrickColor.new(FeatureValues["LocalChamsColor"])

							if FeatureValues["LocalChamsMaterial"][1]  ~= "None" then
								Object.Material = Enum.Material[FeatureValues["LocalChamsMaterial"][1]]
							end
						elseif Object:IsA("SpecialMesh") then
							Object.TextureId = ""
						elseif Object:IsA("Shirt") then
							Object.ShirtTemplate = ""
						elseif Object:IsA("Pants") then
							Object.PantsTemplate = ""
						end
					end
				end
				
				return nil
			end

			return pcall(initiateFunction) 
		end

		local function getVector2(Vector)
			local ViewportPoint = Objects["Client"]["Camera"]:WorldToViewportPoint(Vector)
			return Vector2.new(ViewportPoint.X, ViewportPoint.Y)
		end


		visuals_tab.create_checkbox({1, "Enabled", function(IsEnabled)
			Features["Visuals"]["ESP"]["Enabled"]["Value"] = IsEnabled

			if not IsEnabled then
				for Index, Player in next, Services.Players:GetPlayers() do
					for Index, Value in next, Objects["Players"][Player.Name]["ESP"] do
						for Index, Value in next, Value do
							Value.Visible = false
						end
					end
				end
			end
		end})

		visuals_tab.create_checkbox({1, "Bounding box", function(IsEnabled)
			Features["Visuals"]["ESP"]["BoundingBox"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_colorpicker({1, "Bounding box color", "#FFFFFF", function(SetColor)
			Features["Visuals"]["ESP"]["BoundingBox"]["Color"] = SetColor
			for Index, Player in next, Services.Players:GetPlayers() do
				Objects["Players"][Player.Name]["ESP"]["BoundingBox"][2].Color = SetColor
			end
		end})

		visuals_tab.create_checkbox({1, "Health bar", function(IsEnabled)
			Features["Visuals"]["ESP"]["HealthBar"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_checkbox({1, "Skeleton", function(IsEnabled)
			Features["Visuals"]["ESP"]["Bones"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_colorpicker({1, "Skeleton color", "#FFFFFF", function(SetColor)
			Features["Visuals"]["ESP"]["Bones"]["Color"] = SetColor
			for Index, Player in next, Services.Players:GetPlayers() do
				for Index = 1, #Objects["Players"][Player.Name]["ESP"]["Bones"] do 
					Objects["Players"][Player.Name]["ESP"]["Bones"][Index].Color = SetColor
				end
			end
		end})

		visuals_tab.create_checkbox({1, "Player name", function(IsEnabled)
			Features["Visuals"]["ESP"]["Name"]["Enabled"] = IsEnabled
		end})
		
		visuals_tab.create_checkbox({1, "Show weapon", function(IsEnabled)
			Features["Visuals"]["ESP"]["Weapon"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_checkbox({1, "Look angle", function(IsEnabled)
			Features["Visuals"]["ESP"]["LookAngle"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_colorpicker({1, "Look angle color", "#FFFFFF", function(SetColor)
			Features["Visuals"]["ESP"]["LookAngle"]["Color"] = SetColor
			for Index, Player in next, Services.Players:GetPlayers() do
				Objects["Players"][Player.Name]["ESP"]["LookAngle"][1].Color = SetColor
			end
		end})

		visuals_tab.create_checkbox({2, "Bullet beams", function(IsEnabled)
			Features["Visuals"]["BulletBeams"]["Enabled"] = IsEnabled
		end})

		visuals_tab.create_colorpicker({2, "Bullet beams color", "#FFFFFF", function(SetColor)
			Features["Visuals"]["BulletBeams"]["Color"] = SetColor
		end})

		visuals_tab.create_checkbox({2, "Bullet impacts", function(IsEnabled)
			Features["Visuals"]["BulletImpacts"]["Enabled"] = IsEnabled
		end})
		
		visuals_tab.create_dropdown({2, "Bullet impacts material", false, {"Plastic", "Glass", "Neon", "ForceField"}, function(Flag)
			Features["Visuals"]["BulletImpacts"]["Material"] = Flag[1]
		end})

		visuals_tab.create_colorpicker({2, "Bullet impacts color", "#FFFFFF", function(SetColor)
			Features["Visuals"]["BulletImpacts"]["Color"] = SetColor
		end})

		visuals_tab.create_checkbox({3, "Enabled", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["Models"] = IsEnabled

				if not FeatureValues["ArmsColor"] then FeatureValues["ArmsColor"] = Color3.fromRGB(255, 255, 255) end
				if not FeatureValues["LocalChamsColor"] then FeatureValues["LocalChamsColor"] = Color3.fromRGB(255, 255, 255) end
				if not FeatureValues["LocalChamsMaterial"] then FeatureValues["LocalChamsMaterial"] = {"Plastic"} end
				if not FeatureValues["EnemyChamsColor"] then FeatureValues["EnemyChamsColor"] = Color3.fromRGB(255, 255, 255) end
				if not FeatureValues["EnemyChamsMaterial"] then FeatureValues["EnemyChamsMaterial"] = {"Plastic"} end
				if not EnabledFeatures["RemoveEnemyHats"] then EnabledFeatures["RemoveEnemyHats"] = false end
				if not FeatureValues["NightMode"] then FeatureValues["NightMode"] = 0 end
				if not FeatureValues["FogEnd"] then FeatureValues["FogEnd"] = 0 end
				if not FeatureValues["FogColor"] then FeatureValues["FogColor"] = Color3.fromRGB(255, 255, 255) end
				if not FeatureValues["AmbientColor"] then FeatureValues["AmbientColor"] = Color3.fromRGB(255, 255, 255) end

				if EnabledFeatures["Models"] then
					BindNames["Models"] = generateRandomString()
					findService.RunService:BindToRenderStep(BindNames["Models"], 1, visualsLoop)
				elseif not EnabledFeatures["Models"] then
					unbind_from_render_step({BindNames["Models"]})
				end

				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_checkbox({3, "Arm chams", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["ArmChams"] = IsEnabled
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_colorpicker({3, "Arms color", "#FFFFFF", function(SetColor)
			local function initiateFunction()
				FeatureValues["ArmsColor"] = SetColor
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_checkbox({3, "Local chams", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["LocalChams"] = IsEnabled
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_colorpicker({3, "Local chams color", "#FFFFFF", function(SetColor)
			local function initiateFunction()
				FeatureValues["LocalChamsColor"] = SetColor
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_dropdown({3, "Local chams material", false, {"Plastic", "Glass", "Neon", "ForceField"}, function(Flag)
			local function initiate_function()
				FeatureValues["LocalChamsMaterial"] = Flag
				return nil
			end
			
			return pcall(initiate_function)
		end})

		visuals_tab.create_checkbox({3, "Enemy chams", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["EnemyChams"] = IsEnabled

				if EnabledFeatures["EnemyChams"] then
					for Index, Player in next, findService.Players:GetPlayers() do 
						if Player.Character then
							onCharacterAdded(Player.Character)
						end
					end
				end

				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_colorpicker({3, "Enemy chams color", "#FFFFFF", function(SetColor)
			local function initiateFunction()
				FeatureValues["EnemyChamsColor"] = SetColor

				if EnabledFeatures["EnemyChams"] then
					for Index, Player in next, findService.Players:GetPlayers() do 
						if Player.Character then
							onCharacterAdded(Player.Character)
						end
					end
				end

				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_dropdown({3, "Enemy chams material", false, {"Plastic", "Glass", "Neon", "ForceField"}, function(Flag)
			local function initiate_function()
				FeatureValues["EnemyChamsMaterial"] = Flag

				if EnabledFeatures["EnemyChams"] then
					for Index, Player in next, findService.Players:GetPlayers() do
						if Player.Character then
							onCharacterAdded(Player.Character)
						end
					end
				end

				return nil
			end
			
			return pcall(initiate_function)
		end})

		visuals_tab.create_checkbox({3, "Remove enemy hats", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["RemoveEnemyHats"] = IsEnabled
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_checkbox({4, "Night mode", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["NightMode"] = IsEnabled
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_slider({4, "Night mode value", 0, 100, 1, function(Value)
			local function initiateFunction()
				FeatureValues["NightMode"] = Value
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_checkbox({4, "Change fog", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["ChangeFog"] = IsEnabled
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_slider({4, "Fog end", 0, 100, 1, function(Value)
			local function initiateFunction()
				FeatureValues["FogEnd"] = Value
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_colorpicker({4, "Fog color", "#FFFFFF", function(SetColor)
			local function initiateFunction()
				FeatureValues["FogColor"] = SetColor
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_checkbox({4, "Change ambient", function(IsEnabled)
			local function initiateFunction()
				EnabledFeatures["ChangeAmbient"] = IsEnabled
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		visuals_tab.create_colorpicker({4, "Ambient color", "#FFFFFF", function(SetColor)
			local function initiateFunction()
				FeatureValues["AmbientColor"] = SetColor
				updateLighting()
				return nil
			end

			return pcall(initiateFunction)
		end})

		legit_tab.create_checkbox({1, "Enabled", function(IsEnabled)
			Features["Legit"]["AimAssist"]["Enabled"]["Value"] = IsEnabled
			Features["Legit"]["AimAssist"]["Enabled"]["Toggled"] = IsEnabled
		end})

		legit_tab.create_dropdown({1, "Aimbot activation", false, {"On key held", "On key toggle", "Always ON"}, function(flag)
			aimbot_flag = flag[1]
		end})

		legit_tab.create_keybind({1, "Aimbot key", function(key)
			aimbot_key = key
		end})

		legit_tab.create_dropdown({1, "Hitboxes", false, {"Head"}, function(Table)
			Features["Legit"]["AimAssist"]["HitBoxes"] = Table
		end})

		legit_tab.create_slider({1, "Maximum FOV", 0, 10, 0.1, function(Value)
			fov_circle.Radius = Value * 10
			fov_circle.Transparency = 0.5
			wait(0.5)
			if fov_circle.Radius == Value * 10 then
				fov_circle.Transparency = 0
			end
			Features["Legit"]["AimAssist"]["FieldOfView"]["Value"] = Value
		end})

		legit_tab.create_slider({1, "Smoothing", 0, 20, 0.1, function(Value)
			Features["Legit"]["AimAssist"]["Smoothing"]["Value"] = Value
		end})

		legit_tab.create_checkbox({2, "Enabled", function(IsEnabled)
			Features["Legit"]["TriggerBot"]["Enabled"]["Value"] = IsEnabled
			Features["Legit"]["TriggerBot"]["Enabled"]["Toggled"] = IsEnabled
		end})

		legit_tab.create_checkbox({2, "Magnet", function(IsEnabled)
			Features["Legit"]["TriggerBot"]["Magnet"]["Enabled"] = IsEnabled
		end})

		legit_tab.create_dropdown({2, "Trigger activation", false, {"On key held", "On key toggle", "Always ON"}, function(flag)
			trigger_flag = flag[1]
			
			if trigger_flag == "Always ON" then
				do_trigger = true
			else
				do_trigger = false
			end
		end})

		legit_tab.create_dropdown({2, "Trigger exceptions", true, {"Melee", "Projectile", "Explosive"}, function(Table)
			Features["Legit"]["TriggerBot"]["Exceptions"] = Table
		end})

		legit_tab.create_keybind({2, "Trigger key", function(key)
			trigger_key = key
		end})

		miscellaneous_tab.create_button({1, "Crash server (not tested)", function()
			findService.RunService:BindToRenderStep(generateRandomString(), 1, function()
                -- game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", "msg", false, nil, false, true)
				game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("Trolling42", "??????????????????????????????????????????", false, nil, false, true)
			end)
		end})

		miscellaneous_tab.create_checkbox({1, "Bunny hop", function(IsEnabled)
			Features["Miscellaneous"]["BunnyHop"]["Enabled"] = IsEnabled
		end})

		miscellaneous_tab.create_checkbox({1, "Edge jump", function(is_enabled)
			
		end})

		miscellaneous_tab.create_checkbox({1, "No slow", function(boolean)
			no_slow_enabled = boolean
			do_noslow = boolean

			if not no_slow_enabled then
				client.speedupdate()
			end
		end})

		miscellaneous_tab.create_dropdown({1, "No slow exceptions", true, {"Match start", "Taunting"}, function(flags)
			noslow_exceptions = flags
		end})

		miscellaneous_tab.create_checkbox({1, "Chat bot", function(is_enabled)
			local function initiate_function()
				chat_bot_enabled = is_enabled

				if chat_bot_enabled then
					chat_bot_bind_name = generateRandomString()
					findService.RunService:BindToRenderStep(chat_bot_bind_name, 1, chat_bot)
				elseif not chat_bot_enabled then
					unbind_from_render_step({chat_bot_bind_name})
				end

				return nil
			end

			local function_success, function_result = pcall(initiate_function)

			return function_result
		end})

		miscellaneous_tab.create_dropdown({1, "Chat bot flags", true, {"Spam", "Kill say", "Death say"}, function(flag_table)
			chat_bot_flags = flag_table
		end})

		miscellaneous_tab.create_keybind({1, "Third-person", function(key)
			wait(0.15)
			third_person_key = key
		end})

		miscellaneous_tab.create_slider({1, "Third-person distance", 0, 30, 1, function(value)
			third_person_distance = value == 0 and 8 or value + 8
		end})

		miscellaneous_tab.create_keybind({1, "Airstuck", function(key)
			wait(0.15)
			ValueStorage["AirtsuckKey"] = key
		end})

		miscellaneous_tab.create_button({2, "Rage quit", function()
			game.Shutdown(game)
		end})
		
		miscellaneous_tab.create_colorpicker({2, "Menu accent", "#9AEFCF", function(passed_color)
			menu.set_menu_color({passed_color})
		end})

		miscellaneous_tab.create_dropdown({2, "Configuration slot", false, {"Default"}, function()
		
		end})

		miscellaneous_tab.create_button({2, "Save configuration", function()
			
		end})

		miscellaneous_tab.create_button({2, "Load configuration", function()
			
		end})

		local unusual_table = {"None"}

		for index, value in pairs(findService.ReplicatedStorage.Unusual:GetChildren()) do 
			table.insert(unusual_table, value.Name)
		end

		local unusual_skin_dropdown = miscellaneous_tab.create_dropdown({3, "Unusual", false, unusual_table, function(unusual)
			for index, value in pairs(local_player_character.Head:GetChildren()) do
				if value.Name == "Unusual" then
					value:Destroy()
				end
			end

			if unusual[1] ~= "None" then
				local selected_unusual = findService.ReplicatedStorage.Unusual:FindFirstChild(unusual[1])

				if selected_unusual:FindFirstChildOfClass("Attachment") then
					local clone = selected_unusual:FindFirstChildOfClass("Attachment"):Clone()
					clone.Name = "Unusual"
					clone.Parent = local_player_character.Head

					if not third_person_enabled then
						for index, value in pairs(clone:GetChildren()) do 
							value.Enabled = false
						end
					end
				end
			end
		end})

		local ClosestPlayer = nil
		local FarthestDistance = math.huge

		-- Main cheat loop
		Services.RunService:BindToRenderStep(generateRandomString(), 1, function()
			if Features["Rage"]["Aimbot"]["Enabled"]["Value"] then
				if Features["Rage"]["Aimbot"]["NoRecoil"]["Enabled"] then
					client.recoil = 0
				end

				if Features["Rage"]["Aimbot"]["NoSpread"]["Enabled"] then
					client.currentspread = 0
				end
			end

			if Features["Rage"]["AntiAimbot"]["Enabled"]["Value"] then
				local Climbing = Objects["Client"]["Humanoid"]:GetState() == Enum.HumanoidStateType.Climbing and true or false

				if not Climbing then
					for Index, Part in next, Objects["Client"]["BodyParts"] do
						for Index, Part in next, Part:GetTouchingParts() do 
							if Part:IsA("TrussPart") then
								Climbing = true
								break
							end
						end
					end
				end

				if Services.UserInputService:IsKeyDown(Enum.KeyCode.E) or Climbing then
					changeAngle(0)
					Objects["ReplicatedStorage"]["ControlTurn"]:FireServer(0)
				else
					if Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] ~= "None" then
						Objects["ReplicatedStorage"]["ControlTurn"]:FireServer(Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] == "Up" and 1 or Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] == "Down" and -1 or Features["Rage"]["AntiAimbot"]["Pitch"]["Value"] == "Zero" and 0)
					end

					if not Features["Rage"]["AntiAimbot"]["LookAtFOVTarget"]["Looking"] then
						if Features["Rage"]["AntiAimbot"]["Override"]["Enabled"] and Features["Rage"]["AntiAimbot"]["Override"]["Value"] then
							changeAngle(Features["Rage"]["AntiAimbot"]["Override"]["Value"])
						else
							if Features["Rage"]["AntiAimbot"]["Yaw"]["Enabled"] and not Features["Rage"]["AntiAimbot"]["Jitter"]["Debounce"] and not Features["Rage"]["AntiAimbot"]["Spin"]["Enabled"] then
								changeAngle(Features["Rage"]["AntiAimbot"]["Yaw"]["Value"])
							end

							if Features["Rage"]["AntiAimbot"]["Jitter"]["Enabled"] then
								if not Features["Rage"]["AntiAimbot"]["Jitter"]["Debounce"] then
									Features["Rage"]["AntiAimbot"]["Jitter"]["Debounce"] = true
									Services.RunService.RenderStepped:Wait()
									changeAngle(Features["Rage"]["AntiAimbot"]["Jitter"]["Randomize"] and (math.random(Features["Rage"]["AntiAimbot"]["Yaw"]["Last"], Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] + Features["Rage"]["AntiAimbot"]["Jitter"]["Range"])) or (Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] + Features["Rage"]["AntiAimbot"]["Jitter"]["Range"]))	
									Services.RunService.RenderStepped:Wait()
									changeAngle(Features["Rage"]["AntiAimbot"]["Yaw"]["Last"])
									Features["Rage"]["AntiAimbot"]["Jitter"]["Debounce"] = false
								end
							end

							if Features["Rage"]["AntiAimbot"]["Spin"]["Enabled"] then
								Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] = Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] + Features["Rage"]["AntiAimbot"]["Spin"]["Increment"]

								if Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] > (Features["Rage"]["AntiAimbot"]["Yaw"]["Value"] + Features["Rage"]["AntiAimbot"]["Spin"]["Range"]) then
									Features["Rage"]["AntiAimbot"]["Yaw"]["Last"] = Features["Rage"]["AntiAimbot"]["Yaw"]["Value"]
								end
								
								changeAngle(Features["Rage"]["AntiAimbot"]["Yaw"]["Last"])
							end
						end
					end
				end

				if Features["Rage"]["AntiAimbot"]["Freestand"]["Enabled"] then
					for Angle = 360 / 45, 360, 360 / 45 do
						local RayHit, HitPosition = Services.Workspace:FindPartOnRayWithIgnoreList(Ray.new(Objects["Client"]["HumanoidRootPart"].CFrame.p, (Objects["Client"]["HumanoidRootPart"].CFrame * CFrame.Angles(0, math.rad(Angle), 0 )).lookVector * 10), {Objects["Workspace"]["Ignore"], Objects["Client"]["Camera"], Objects["Client"]["Character"]}, false, true, "")

						if RayHit then
							if (RayHit.Size.X >= 5.5 and RayHit.Size.Y >= 5.5) or (RayHit.Size.Y >= 5.5 and RayHit.Size.Z >= 5.5) or (RayHit.Size.X >= 5.5 and RayHit.Size.Z >= 5.5) then
								print(RayHit:GetFullName())
								break
							end
						end
					end
				end

				if Features["Rage"]["AntiAimbot"]["FakeLag"]["Enabled"] then
					if math.floor(tick()) % (Features["Rage"]["AntiAimbot"]["FakeLag"]["Mode"] == "Random" and math.random(1, Features["Rage"]["AntiAimbot"]["FakeLag"]["Value"]) or Features["Rage"]["AntiAimbot"]["FakeLag"]["Value"]) == 0 then
						Services["NetworkClient"]:SetOutgoingKBPSLimit(9e9)
					else
						Services["NetworkClient"]:SetOutgoingKBPSLimit(Features["Rage"]["AntiAimbot"]["FakeLag"]["Mode"] ~= "Dynamic" and 1 or Objects["Client"]["Humanoid"].MoveDirection ~= Vector3.new(0,0,0) and 1 or 9e9)
					end
				end
			end

			for Index, Player in next, Services.Players:GetPlayers() do
				if Player.Character then
					if Player ~= Objects["Client"]["Player"] and (Objects["ReplicatedStorage"]["FFA"].Value or Player.Team ~= Objects["Client"]["Player"].Team) and Player.Character:FindFirstChild("HumanoidRootPart") then
						if Features["Visuals"]["ESP"]["Enabled"]["Value"] then
							local ViewportPoint, IsOnScreen = Objects["Client"]["Camera"]:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)

							if IsOnScreen and Objects["Players"][Player.Name]["ESP"] then
								for Feature, Value in next, Objects["Players"][Player.Name]["ESP"] do
									for Index, Value in next, Value do
										Value.Visible = Features["Visuals"]["ESP"][Feature]["Enabled"]
									end
								end

								local Distance = (Objects["Client"]["Camera"].CFrame.Position - Player.Character.HumanoidRootPart.Position).Magnitude
								local XScale = Objects["Client"]["Camera"].ViewportSize.X / Distance
								local YScale = Objects["Client"]["Camera"].ViewportSize.Y / Distance

								Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Size = Vector2.new(XScale, YScale * 3)
								Objects["Players"][Player.Name]["ESP"]["BoundingBox"][2].Size = Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Size
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][1].Size = Vector2.new(2, YScale * 3)
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][2].Size = Vector2.new(2, (YScale * 3) / (Objects["Players"][Player.Name]["MaxHealth"].Value / math.clamp(Objects["Players"][Player.Name]["Health"].Value, 0, Objects["Players"][Player.Name]["NRPBS"]:WaitForChild("MaxHealth").Value)))
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Size = math.clamp((XScale - YScale) * ((XScale / YScale) / 5), 12, 20)
								Objects["Players"][Player.Name]["ESP"]["Name"][1].Size = Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Size
								Objects["Players"][Player.Name]["ESP"]["Weapon"][1].Size = Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Size

								Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Position = Vector2.new(((ViewportPoint.X - XScale) + (XScale / 2)), (ViewportPoint.Y - YScale * 1.25))
								Objects["Players"][Player.Name]["ESP"]["BoundingBox"][2].Position = Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Position
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][1].Position = Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Position - Vector2.new(6, 0)
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][2].Position = Vector2.new(Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Position.X - 6, Objects["Players"][Player.Name]["ESP"]["BoundingBox"][1].Position.Y + (Objects["Players"][Player.Name]["ESP"]["HealthBar"][1].Size.Y - Objects["Players"][Player.Name]["ESP"]["HealthBar"][2].Size.Y))
								Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Position = Objects["Players"][Player.Name]["ESP"]["HealthBar"][2].Position
								Objects["Players"][Player.Name]["ESP"]["Name"][1].Position = Vector2.new(((ViewportPoint.X - XScale) + (XScale)), (ViewportPoint.Y - YScale * 1.5) - (10 - 10 / (Objects["Players"][Player.Name]["ESP"]["HealthBar"][3].Size) / 2))
								Objects["Players"][Player.Name]["ESP"]["Weapon"][1].Position = Vector2.new(((ViewportPoint.X - XScale) + (XScale)), ViewportPoint.Y + YScale * 1.75)
								
								for Index = 1, #Objects["Players"][Player.Name]["ESP"]["Bones"] do 
									Objects["Players"][Player.Name]["ESP"]["Bones"][Index].From = getVector2(Player.Character:FindFirstChild(ValueStorage.BoneFormat[Index].From).Position)
									Objects["Players"][Player.Name]["ESP"]["Bones"][Index].To = getVector2(Player.Character:FindFirstChild(ValueStorage.BoneFormat[Index].To).Position)
								end

								for Index = 10, 1, -1 do 
									local RayHit, HitPosition = Services.Workspace:FindPartOnRayWithIgnoreList(Ray.new(Player.Character.Head.Position, Player.Character.Head.CFrame.LookVector * Index), {Objects["Workspace"]["Ignore"], Objects["Client"]["Camera"], Player.Character}, false, true, "")

									local ViewportPoint, IsOnScreen = Objects["Client"]["Camera"]:WorldToViewportPoint(HitPosition)

									if IsOnScreen then
										Objects["Players"][Player.Name]["ESP"]["LookAngle"][1].From = getVector2(Player.Character.Head.Position)
										Objects["Players"][Player.Name]["ESP"]["LookAngle"][1].To = Vector2.new(ViewportPoint.X, ViewportPoint.Y)
										break
									end
								end
							elseif Objects["Players"][Player.Name]["ESP"] and (not IsOnScreen or tonumber(Objects["Players"][Player.Name]["Health"].Value) <= 0) then
								for Index, Value in next, Objects["Players"][Player.Name]["ESP"] do
									for Index, Value in next, Value do
										Value.Visible = false
									end
								end
							end
						end
						
						if Player.Character:FindFirstChild("Spawned") and Objects["Client"]["Character"]:FindFirstChild("Spawned") and Objects["Client"]["Character"]:FindFirstChild("HumanoidRootPart") and not Objects["ReplicatedStorage"]["Preparation"].Value then
							local HeadPosition = Objects["Client"]["Camera"]:WorldToViewportPoint(Player.Character.Head.Position)
							
							local HeadDistanceFromMouse = (Vector2.new(HeadPosition.X, HeadPosition.Y) - Vector2.new(Objects["Client"]["Mouse"].X, Objects["Client"]["Mouse"].Y)).magnitude

							if HeadDistanceFromMouse < FarthestDistance then
								FarthestDistance = HeadDistanceFromMouse
								ClosestPlayer = Player
							end
							
							if Features["Legit"]["TriggerBot"]["Enabled"]["Value"] and Features["Legit"]["TriggerBot"]["Enabled"]["Toggled"] then
								if Objects["Client"]["Mouse"].Target then
									if Features["Legit"]["TriggerBot"]["Exceptions"] then
										for Index, Exception in next, Features["Legit"]["TriggerBot"]["Exceptions"] do
											if Objects["Client"]["GunInformation"][Exception] then
												return nil
											end
										end
									end
								
									if Objects["Client"]["Mouse"].Target ~= Objects["Client"]["Mouse"].TargetFilter or not Objects["Client"]["Mouse"].Target:IsDescendantOf(Objects["Client"]["Mouse"].TargetFilter) then
										if Objects["Client"]["Mouse"].Target.Name == "Hitbox" then
											Objects["Client"]["Mouse"].TargetFilter = Objects["Client"]["Mouse"].Target
										elseif Objects["Client"]["Mouse"].Target:IsDescendantOf(Objects["Client"]["Camera"]) then
											Objects["Client"]["Mouse"].TargetFilter = Objects["Client"]["Camera"]
										else
											Objects["Client"]["Mouse"].TargetFilter = Objects["Workspace"]["Ignore"]
										end
									end
								
									if Objects["Client"]["Mouse"].Target:IsDescendantOf(Player.Character) and not client.DISABLED then
										if Objects["Client"]["GunInformation"]["Melee"] then
											if Player:DistanceFromCharacter(Objects["Client"]["Character"].HumanoidRootPart.Position) <= 6.5 then
												client.firebullet()
											end
										else
											client.firebullet()
										end
									end
								end
							end
							
							for Index, Child in next, Player.Character:GetChildren() do 
								if Child:IsA("BasePart") then
									local RayHit, HitPosition = Services.Workspace:FindPartOnRayWithIgnoreList(Ray.new(Objects["Client"]["Head"].Position, (Child.Position - Objects["Client"]["Head"].Position).unit * 999), {Objects["Workspace"]["Ignore"], Objects["Client"]["Camera"], Objects["Client"]["Character"]}, false, true, "")
								
									if RayHit then
										if RayHit.Parent == Player.Character then
											if Features["Rage"]["Aimbot"]["Enabled"]["Value"] then
												--for _, Hitbox in next, Features["Rage"]["Aimbot"]["Hitboxes"] do 
												--	print(Features["Rage"]["Aimbot"]["HitboxFormat"][Hitbox], RayHit.Name, table.find(Features["Rage"]["Aimbot"]["HitboxFormat"][Hitbox], RayHit.Name), unpack(Features["Rage"]["Aimbot"]["HitboxFormat"][Hitbox]))
													--if table.find(Features["Rage"]["Aimbot"]["HitboxFormat"][Hitbox], RayHit.Name) then
														if not client.DISABLED then
															Features["Rage"]["Aimbot"]["Target"] = RayHit
															
															if Features["Rage"]["Aimbot"]["AutoFire"]["Enabled"] then
																client.firebullet()
															end
														else
															Features["Rage"]["Aimbot"]["Target"] = nil
														--end
													--end

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

			--[[if Features["Legit"]["AimAssist"]["Enabled"]["Value"] and Features["Legit"]["AimAssist"]["Enabled"]["Toggled"] then
				local NearestPlayersHead, NearestPlayersHeadOnScreen = Objects["Client"]["Camera"]:WorldToViewportPoint(ClosestPlayer.Character.Head.Position)
									
				if NearestPlayersHeadOnScreen then
					mousemoverel((NearestPlayersHead.X - Objects["Client"]["Mouse"].X + 4) / 20, (NearestPlayersHead.Y - Objects["Client"]["Mouse"].Y - 35) / 20)
				end
			end]]

			if Features["Miscellaneous"]["BunnyHop"]["Enabled"] then
                
            end
                    

			return nil
		end)

	end
end