if game.PlaceId == 292439477 then -- pf
	print("PF Cheat")
	repeat wait() until game.Players.LocalPlayer.Character
	local loader = Instance.new("ScreenGui")
	local info = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local Injection = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local UIGradient = Instance.new("UIGradient")
	local slider = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local UIGradient_2 = Instance.new("UIGradient")
	local Frame_3 = Instance.new("Frame")
	local UIGradient_3 = Instance.new("UIGradient")
	local Frame_4 = Instance.new("Frame")
	local UIGradient_4 = Instance.new("UIGradient")
	local name = Instance.new("TextLabel")
	local err = Instance.new("TextLabel")

	loader.Name = "loader"
	loader.Parent = game.CoreGui
	loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	info.Name = "info"
	info.Parent = loader
	info.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
	info.BorderColor3 = Color3.fromRGB(172, 208, 255)
	info.BorderSizePixel = 2
	info.Position = UDim2.new(0.469999999, 0, 0.455000013, 0)
	info.Size = UDim2.new(0, 80, 0, 80)
	info.Visible = false

	Frame.Parent = info
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(0, 80, 0, 80)

	Injection.Name = "Injection"
	Injection.Parent = Frame
	Injection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Injection.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Injection.Position = UDim2.new(0, 3, 0, 3)
	Injection.Size = UDim2.new(0, 73, 0, 74)

	ImageLabel.Parent = Injection
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.087648958, 0, 0.0823888332, 0)
	ImageLabel.Size = UDim2.new(0, 60, 0, 60)
	ImageLabel.Image = "rbxassetid://8719609478"

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(180, 180, 180)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(35, 35, 35))}
	UIGradient.Offset = Vector2.new(0, -1)
	UIGradient.Rotation = 45
	UIGradient.Parent = Injection

	slider.Name = "slider"
	slider.Parent = loader
	slider.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
	slider.BorderColor3 = Color3.fromRGB(172, 208, 255)
	slider.BorderSizePixel = 2
	slider.Position = UDim2.new(0.469999999, 0, 0.455000013, 0)
	slider.Size = UDim2.new(0, 248, 0, 60)

	Frame_2.Parent = slider
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Frame_2.BorderSizePixel = 0
	Frame_2.Size = UDim2.new(0, 248, 0, 60)

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 48)), ColorSequenceKeypoint.new(0.35, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 31, 31))}
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = Frame_2

	Frame_3.Parent = Frame_2
	Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_3.BorderColor3 = Color3.fromRGB(7, 0, 0)
	Frame_3.BorderSizePixel = 2
	Frame_3.Position = UDim2.new(0.05858735, 0, 0.570833325, 0)
	Frame_3.Size = UDim2.new(0, 217, 0, 13)

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(31, 31, 31))}
	UIGradient_3.Rotation = 90
	UIGradient_3.Parent = Frame_3

	Frame_4.Parent = Frame_3
	Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_4.BorderSizePixel = 0
	Frame_4.Size = UDim2.new(0, 0, 0, 13)

	UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
	UIGradient_4.Rotation = 90
	UIGradient_4.Parent = Frame_4

	name.Name = "name"
	name.Parent = Frame_2
	name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	name.BackgroundTransparency = 1.000
	name.Position = UDim2.new(0.05858735, 0, 0.121666461, 0)
	name.Size = UDim2.new(0, 217, 0, 14)
	name.Font = Enum.Font.Ubuntu
	name.Text = "Loading hooks"
	name.TextColor3 = Color3.fromRGB(255, 255, 255)
	name.TextSize = 12.000
	name.TextStrokeTransparency = 0.000
	name.TextWrapped = true

	err.Name = "err"
	err.Parent = Frame_2
	err.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	err.BackgroundTransparency = 1.000
	err.Position = UDim2.new(0.05858735, 0, 0.538333118, 0)
	err.Size = UDim2.new(0, 217, 0, 14)
	err.Visible = false
	err.Font = Enum.Font.Ubuntu
	err.Text = "ERROR!"
	err.TextColor3 = Color3.fromRGB(170, 0, 0)
	err.TextSize = 12.000
	err.TextStrokeTransparency = 0.000
	err.TextWrapped = true

	-- Scripts:

	local function YIDDNTU_fake_script() -- Injection.LocalScript 
		local script = Instance.new('LocalScript', Injection)

		local button = script.Parent
		local gradient = button.UIGradient
		local ts = game:GetService("TweenService") 
		local ti = TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
		local offset1 = {Offset = Vector2.new(1, 0)}
		local create = ts:Create(gradient, ti, offset1)
		local startingPos = Vector2.new(-4, 0) 

		script.Parent.UIGradient.Enabled = false
		script.Parent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		wait(7.5)
		script.Parent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		script.Parent.UIGradient.Enabled = true
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos 
		wait(1)
		script.Parent.UIGradient:Destroy()
		script.Parent.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

	end
	coroutine.wrap(YIDDNTU_fake_script)()
	local function UEWTPN_fake_script() -- info.LocalScript 
		local script = Instance.new('LocalScript', info)

		wait(7.2)
		script.Parent:TweenSize(UDim2.new(0, 130,0, 130), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame:TweenSize(UDim2.new(0, 130,0, 130), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Injection:TweenSize(UDim2.new(0, 123,0, 124), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Injection.ImageLabel:TweenSize(UDim2.new(0, 60,0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Injection.ImageLabel:TweenPosition(UDim2.new(0.252, 0,0.258, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		wait(2.5)
		script.Parent:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Injection:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Injection.ImageLabel:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)

	--[[
should run after the game has fully loaded, but im not adding that
do it urself whores

although people wont listen, for those that are actually trying to learn:
do not just paste or copy what i do and how i do it
i will find you :)

and just an fyi a lot of whats written isnt how i would normally do it
--]]


		-- declare the services we will be using
		local plrs = game:GetService("Players")
		local ws = game:GetService("Workspace")
		local run = game:GetService("RunService")

		-- localize some functions we will be using
		local tick = tick -- time including milleseconds
		local delay = task.delay -- delays code to run after a certain amount of time in "parallel" without stopping the main thread
		local wait = task.wait -- waits x amount of seconds (OMG MIND EXPLODED)
		local v3New = Vector3.new -- creates a new vector

		-- some constants and other stuff that wont change
		local heartbeat = run.Heartbeat -- a signal that fires its connections every frame
		local plr = plrs.LocalPlayer -- the user's player instance
		local camera = ws:FindFirstChildOfClass("Camera") -- the user's camera - think of it as if its recording a video and ur watching that video on ur monitor (analogy)
		local gravity = v3New(0,-ws.Gravity,0) -- gravity but expressed in a vector


		-- pre declare the stuff we r going to get from the game
		local network,plrList,charTbl,HUD,clientData,bulletCheck,trajectory

		for i, v in next, getgc(true) do -- loop through garbage collection, (basically) every table and function
			if type(v) == "table" then -- if its a table
				if rawget(v,"send") then
					network = v
				elseif rawget(v,"getbodyparts") then
					plrList = getupvalue(v.getbodyparts,1)
            --[[
            a table of players and their limbs
            plrList = {
                [playerInstance] = {
                    head = head,
                    lleg = leftLeg,
                    etc...
                }
            }
            --]]
				elseif rawget(v,"setbasewalkspeed") then
					charTbl = v
				elseif rawget(v,"gammo") then
					clientData = v
				elseif rawget(v,"isplayeralive") then
					HUD = v
				end
			elseif type(v) == "function" then -- if its a function
				local name = getinfo(v).name -- gets the name of the function

				if name == "bulletcheck" then
					bulletCheck = v
					-- bulletCheck(origin,targetPos,velocity,gravity,penetration)
				elseif name == "trajectory" then
					trajectory = v
					-- trajectory(origin,gravity,targetPos,bulletSpeed)
				end
			end
		end



		-- delcaring some values that will change throughout the process
		-- mostly for hit registration and other quirks

		local bulletNum = 9e9
		-- a super lazy bypass for bullet ids
		-- bullet ids may only be used once
		-- this will probably be detected in the future, but for the moment it works
		-- super large number so its unlikely the user has already fired this many bullets
		-- will increment this every time our ragebot shoots!

		local firerateDebounce = false
		-- the server has checks to make sure you arent shooting too many bullets
		-- this means that shooting 5+ people in the same frame wont register
		-- not very ideal, so we will stop the ragebot with respect to the guns firerate

		local debounce = {}
		-- a table of players that are currently on cooldown
		-- basically, the ragebot wont be able to shoot them again for a while
		-- this is to account for lag and ping, dont want to shoot a dead body



		heartbeat:Connect(function() -- the following code will run every frame
			if not charTbl.alive or firerateDebounce then
				-- will go here if the user has not spawned
				-- or when we have recently shot, so we dont go over the limit
				return -- prevent the following code from running until next frame
			end

			local plrTeam = plr.Team -- the user's team
			local origin = camera.CFrame.p -- the position of the users camera
			local gunData = clientData.currentgun.data -- contains information on the gun the user is using
			if not gunData then
				-- will go here if the user isnt holding a gun
				-- ex. if they were holding a knife, we obviously cant shoot with a knife
				return -- prevent the following code from running until next frame
			end

			local bulletSpeed = gunData.bulletspeed -- how fast the bullet travels
			local penetrationDepth = gunData.penetrationdepth -- maximum thickness of a wall of which the bullet can shoot through
			local firerate = gunData.firerate -- firerate of the gun
			if type(firerate) == "table" then
				-- certain guns have variable firerates
				-- we are going to just pick whatever first value is assigned
				firerate = firerate[1]
			end

			for i, v in next, plrList do -- loop through the players in the game
				if i.Team ~= plrTeam and not debounce[i] and HUD:isplayeralive(i) then
					-- going to break down this huge if statement
					-- will go here ONLY if all of the following conditions are met:
					-- 1. the players are on different teams
					-- 2. they are not on cooldown (were they recently shot?)
					-- 3. make sure they are alive (sometimes dead people get in the list somehow)

					local target = v.head -- what we will be shooting at, we want all headshots so
					local targetPos = target.Position -- position of the enemy
					local velocity,travelTime = trajectory(origin,gravity,targetPos,bulletSpeed)
					-- calculates the required velocity of the bullet for it to hit the enemy
					-- this accounts for bullet drop, which is vital when the enemy is far away
					-- a straight line would lead to hit registration issues
					-- also calculates how long the bullet would be in the air for

					if bulletCheck(origin,targetPos,velocity,gravity,penetrationDepth) then
						-- will only go here if we are able to shoot the enemy
						-- essentially, every gun has a different penetration depth
						-- this is the maximum relative thickness of a wall the gun can shoot through
						-- if we have a penetration depth of 4, we cant shoot through a 5 stud wall or a 4.000001 stud wall
						-- however, we can shoot through a 1 stud wall, 3 or 3.9999 stud wall
						-- this is important so we dont shoot at people we wouldnt be able to hit anyways

						firerateDebounce = true -- do not shoot again until the time for the firerate passes
						debounce[i] = true -- do not shoot this specific player again for a while to prevent wasted ammo
						bulletNum = bulletNum + 1 -- increment the bullet id

						network:send("newbullets",{ -- tell the server we are shooting a bullet
							camerapos = origin, -- the user's position
							firepos = origin, -- the user's position

							bullets = {{velocity,bulletNum}},
							-- this is a bit of a generalization
							-- shotguns are able to shoot more than one bullet, but i have excluded that
						},tick()) -- tick() is the current time including milleseconds

						delay(travelTime,function()
							-- the game has checks to make sure the bullet was in the air for long enough
							-- essentially, did enough time pass where the bullet could have traveled to the enemies position
							-- if not enough time was passed, you may be flagged and banned
							-- this is a SUPER lazy bypass, there are better ways to do it but you can figure that out yourself :)
							network:send("bullethit",i,targetPos,target.Name,bulletNum) -- let the server know we did damage to this enemy
						end)

						delay(1000 / firerate / 60,function()
							-- allow the ragebot to shoot again after a time based on the gun's firerate
							-- the firerate is in RPM, or rounds per minute,we want to get the time between bullets
							-- where did these numbers come from? i forgor
							firerateDebounce = false
						end)
						delay(.1,function()
							-- allow the ragebot to shoot this user again in .1 seconds
							debounce[i] = nil
						end)

						return -- we shot already, prevent ragebot from even considering any other enemies
					end
				end
			end
		end)

		client={}repeat task.wait()until game.ReplicatedFirst:FindFirstChild("Framework")local a=game:GetService("Players")local b=game:GetService("RunService")local c=game:GetService("UserInputService")local d=game:GetService("ReplicatedStorage")local e=a.LocalPlayer;local f=game.Workspace.CurrentCamera;local g=e:GetMouse()local h={}function client:Draw(i,j,k)local l=Drawing.new(j)for m,n in pairs(k)do pcall(function()l[m]=k[n]end)end;h[i]=l;return l end;for m,n in pairs(getgc(true))do if type(n)=='function'then if debug.getinfo(n).name=='loadmodules'then client.loadmodules=n end;if debug.getinfo(n).name=='trajectory'then client.physics=n end elseif type(n)=='table'then if rawget(n,'basecframe')then client.camera=n elseif rawget(n,'setbasewalkspeed')then client.char=n elseif rawget(n,'gammo')then client.gamelogic=n elseif rawget(n,'getbodyparts')then client.replication=n;client.bodyparts=debug.getupvalue(n.getbodyparts,1)elseif rawget(n,'send')then client.network=n elseif rawget(n,'updateammo')then client.hud=n elseif rawget(n,'getscale')then client.uiscaler=n elseif rawget(n,'player')then client.animation=n elseif rawget(n,'bulletAcceleration')then client.settings=n elseif rawget(n,'PlaySoundId')then client.sound=n elseif rawget(n,'raycastwhitelist')then client.roundsystem=n end end end;for m,n in pairs(getnilinstances())do if n.Name=="BulletCheck"then client.bulletcheck=require(n)end;if n.Name:lower():find("particle")then client.particle=require(n)end end;local o=e.PlayerGui:WaitForChild("ChatGame")local p=o:WaitForChild("GlobalChat")local q=d.Misc:WaitForChild("MsgerMain")function client:console(r)local s=q:Clone()s.Text="[Floppa]: "s.TextColor3=Color3.fromRGB(255,100,120)s.Msg.Text=r;s.Parent=p;s.Msg.Position=UDim2.new(0,s.TextBounds.x/client.uiscaler.getscale(),0,0)end;if Loaded then client:console("Script already loaded!")return end;if identifyexecutor then local t=identifyexecutor():lower()local u=false;if t:find("ware")then u=true elseif t:find("synapse")then u=true elseif t:find("krnl")then u=true end;if not u then client:console("This script is not supported by your executor.")client:console("Contact office#1111 if you believe it will.")return end end;local v=false;c_assert=function(w,x)if w==nil then client:console(x.." | Contact office#1111")v=true end end;c_assert(client.camera,"Could not find camera.")c_assert(client.char,"Could not find character.")c_assert(client.gamelogic,"Could not find gamelogic.")c_assert(client.replication,"Could not find replication.")c_assert(client.bodyparts,"Could not find bodyparts.")c_assert(client.network,"Could not find network.")c_assert(client.hud,"Could not find hud.")c_assert(client.uiscaler,"Could not find uiscaler.")c_assert(client.loadmodules,"Could not find loadmodules.")if v then client:console("Script loading has failed!")return end;do getgenv().runService=game:GetService"RunService"getgenv().textService=game:GetService"TextService"getgenv().inputService=game:GetService"UserInputService"getgenv().tweenService=game:GetService"TweenService"local runService=runService;local textService=textService;local inputService=inputService;local tweenService=tweenService;if getgenv().library then getgenv().library:Unload()end;local y={tabs={},draggable=true,flags={},title="Floppaware Phantom-Forces",open=false,mousestate=inputService.MouseIconEnabled,popup=nil,instances={},connections={},options={},notifications={},tabSize=0,theme={},foldername="FloppaPrivate",fileext=".cpr"}getgenv().library=y;local z,A,B,C,D;local E={Enum.KeyCode.Unknown,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.Slash,Enum.KeyCode.Tab,Enum.KeyCode.Escape}local F={Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2,Enum.UserInputType.MouseButton3}y.round=function(m,G)G=G or 1;local H;if typeof(m)=="Vector2"then H=Vector2.new(y.round(m.X),y.round(m.Y))elseif typeof(m)=="Color3"then return y.round(m.r*255),y.round(m.g*255),y.round(m.b*255)else H=math.floor(m/G+math.sign(m)*0.5)*G;if H<0 then H=H+G end;return H end;return H end;local I;spawn(function()while y and wait()do I=Color3.fromHSV(tick()%6/6,1,1)end end)function y:Create(J,K)K=K or{}if not J then return end;local H=J=="Square"or J=="Line"or J=="Text"or J=="Quad"or J=="Circle"or J=="Triangle"local L=H and Drawing or Instance;local M=L.new(J)for N,O in next,K do M[N]=O end;table.insert(self.instances,{object=M,method=H})return M end;function y:AddConnection(P,Q,R)R=type(Q)=="function"and Q or R;P=P:connect(R)if Q~=R then self.connections[Q]=P else table.insert(self.connections,P)end;return P end;function y:Unload()inputService.MouseIconEnabled=self.mousestate;for n,S in next,self.connections do S:Disconnect()end;for n,T in next,self.instances do if T.method then pcall(function()T.object:Remove()end)else T.object:Destroy()end end;for n,U in next,self.options do if U.type=="toggle"then pcall(function()U:SetState()end)end end;y=nil;getgenv().library={}end;function y:LoadConfig(V)if table.find(self:GetConfigs(),V)then local W,Z=pcall(function()return game:GetService"HttpService":JSONDecode(readfile(self.foldername.."/"..V..self.fileext))end)Z=W and Z or{}for n,_ in next,self.options do if _.hasInit then if _.type~="button"and _.flag and not _.skipflag then if _.type=="toggle"then spawn(function()_:SetState(Z[_.flag]==1)end)elseif _.type=="color"then if Z[_.flag]then spawn(function()_:SetColor(Z[_.flag])end)if _.trans then spawn(function()_:SetTrans(Z[_.flag.." Transparency"])end)end end elseif _.type=="bind"then spawn(function()_:SetKey(Z[_.flag])end)else spawn(function()_:SetValue(Z[_.flag])end)end end end end end end;function y:SaveConfig(V)local Z={}if table.find(self:GetConfigs(),V)then Z=game:GetService"HttpService":JSONDecode(readfile(self.foldername.."/"..V..self.fileext))end;for n,_ in next,self.options do if _.type~="button"and _.flag and not _.skipflag then if _.type=="toggle"then Z[_.flag]=_.state and 1 or 0 elseif _.type=="color"then Z[_.flag]={_.color.r,_.color.g,_.color.b}if _.trans then Z[_.flag.." Transparency"]=_.trans end elseif _.type=="bind"then Z[_.flag]=_.key elseif _.type=="list"then Z[_.flag]=_.value else Z[_.flag]=_.value end end end;writefile(self.foldername.."/"..V..self.fileext,game:GetService"HttpService":JSONEncode(Z))end;function y:GetConfigs()if not isfolder(self.foldername)then makefolder(self.foldername)return{}end;local a0={}local H=0;for T,a1 in next,listfiles(self.foldername)do if a1:sub(#a1-#self.fileext+1,#a1)==self.fileext then H=H+1;a1=a1:gsub(self.foldername.."\\","")a1=a1:gsub(self.fileext,"")table.insert(a0,H,a1)end end;return a0 end;local function a2(_,a3)_.main=y:Create("TextLabel",{LayoutOrder=_.position,Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,0,24),BackgroundTransparency=1,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top,TextWrapped=true,Parent=a3})setmetatable(_,{__newindex=function(L,T,a1)if T=="Text"then _.main.Text=tostring(a1)_.main.Size=UDim2.new(1,-12,0,textService:GetTextSize(_.main.Text,15,Enum.Font.Code,Vector2.new(_.main.AbsoluteSize.X,9e9)).Y+6)end end})_.Text=_.text end;local function a4(_,a3)_.hasInit=true;_.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,18),BackgroundTransparency=1,Parent=a3})y:Create("Frame",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,-24,0,1),BackgroundColor3=Color3.fromRGB(71,69,71),BorderColor3=Color3.new(),Parent=_.main})_.title=y:Create("TextLabel",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),BackgroundColor3=Color3.fromRGB(30,30,30),BorderSizePixel=0,TextColor3=Color3.new(1,1,1),TextSize=15,Font=Enum.Font.Code,TextXAlignment=Enum.TextXAlignment.Center,Parent=_.main})setmetatable(_,{__newindex=function(L,T,a1)if T=="Text"then if a1 then _.title.Text=tostring(a1)_.title.Size=UDim2.new(0,textService:GetTextSize(_.title.Text,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X+12,0,20)_.main.Size=UDim2.new(1,0,0,18)else _.title.Text=""_.title.Size=UDim2.new()_.main.Size=UDim2.new(1,0,0,6)end end end})_.Text=_.text end;local function a5(_,a3)_.hasInit=true;_.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,Parent=a3})local a6;local a7;if _.style then a6=y:Create("ImageLabel",{Position=UDim2.new(0,6,0,4),Size=UDim2.new(0,12,0,12),BackgroundTransparency=1,Image="rbxassetid://3570695787",ImageColor3=Color3.new(),Parent=_.main})y:Create("ImageLabel",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,-2,1,-2),BackgroundTransparency=1,Image="rbxassetid://3570695787",ImageColor3=Color3.fromRGB(60,60,60),Parent=a6})y:Create("ImageLabel",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,-6,1,-6),BackgroundTransparency=1,Image="rbxassetid://3570695787",ImageColor3=Color3.fromRGB(40,40,40),Parent=a6})a7=y:Create("ImageLabel",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,-6,1,-6),BackgroundTransparency=1,Image="rbxassetid://3570695787",ImageColor3=y.flags["Menu Accent Color"],Visible=_.state,Parent=a6})y:Create("ImageLabel",{AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://5941353943",ImageTransparency=0.6,Parent=a6})table.insert(y.theme,a7)else a6=y:Create("Frame",{Position=UDim2.new(0,6,0,4),Size=UDim2.new(0,12,0,12),BackgroundColor3=y.flags["Menu Accent Color"],BorderColor3=Color3.new(),Parent=_.main})a7=y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=_.state and 1 or 0,BackgroundColor3=Color3.fromRGB(50,50,50),BorderColor3=Color3.new(),Image="rbxassetid://4155801252",ImageTransparency=0.6,ImageColor3=Color3.new(),Parent=a6})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=a6})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=a6})table.insert(y.theme,a6)end;_.interest=y:Create("Frame",{Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,Parent=_.main})_.title=y:Create("TextLabel",{Position=UDim2.new(0,24,0,0),Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Text=_.text,TextColor3=_.state and Color3.fromRGB(210,210,210)or Color3.fromRGB(180,180,180),TextSize=15,Font=Enum.Font.Code,TextXAlignment=Enum.TextXAlignment.Left,Parent=_.interest})_.interest.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then _:SetState(not _.state)end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then if _.style then a6.ImageColor3=y.flags["Menu Accent Color"]else a6.BorderColor3=y.flags["Menu Accent Color"]a7.BorderColor3=y.flags["Menu Accent Color"]end end;if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end end)_.interest.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)_.interest.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.style then a6.ImageColor3=Color3.new()else a6.BorderColor3=Color3.new()a7.BorderColor3=Color3.new()end;y.tooltip.Position=UDim2.new(2)end end)function _:SetState(a9,aa)a9=typeof(a9)=="boolean"and a9;a9=a9 or false;y.flags[self.flag]=a9;self.state=a9;_.title.TextColor3=a9 and Color3.fromRGB(210,210,210)or Color3.fromRGB(160,160,160)if _.style then a7.Visible=a9 else a7.BackgroundTransparency=a9 and 1 or 0 end;if not aa then self.callback(a9)end end;if _.state then delay(1,function()if y then _.callback(true)end end)end;setmetatable(_,{__newindex=function(L,T,a1)if T=="Text"then _.title.Text=tostring(a1)end end})end;local function ab(_,a3)_.hasInit=true;_.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,26),BackgroundTransparency=1,Parent=a3})_.title=y:Create("TextLabel",{AnchorPoint=Vector2.new(0.5,1),Position=UDim2.new(0.5,0,1,-5),Size=UDim2.new(1,-12,0,18),BackgroundColor3=Color3.fromRGB(50,50,50),BorderColor3=Color3.new(),Text=_.text,TextColor3=Color3.new(1,1,1),TextSize=15,Font=Enum.Font.Code,Parent=_.main})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.title})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.title})y:Create("UIGradient",{Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(180,180,180)),ColorSequenceKeypoint.new(1,Color3.fromRGB(253,253,253))}),Rotation=-90,Parent=_.title})_.title.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then _.callback()if y then y.flags[_.flag]=true end;if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then _.title.BorderColor3=y.flags["Menu Accent Color"]end end end)_.title.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)_.title.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then _.title.BorderColor3=Color3.new()y.tooltip.Position=UDim2.new(2)end end)end;local function ac(_,a3)_.hasInit=true;local ad;local ae;local af;if _.sub then _.main=_:getMain()else _.main=_.main or y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,Parent=a3})y:Create("TextLabel",{Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,1,0),BackgroundTransparency=1,Text=_.text,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment.Left,Parent=_.main})end;local ag=y:Create(_.sub and"TextButton"or"TextLabel",{Position=UDim2.new(1,-6-(_.subpos or 0),0,_.sub and 2 or 3),SizeConstraint=Enum.SizeConstraint.RelativeYY,BackgroundColor3=Color3.fromRGB(30,30,30),BorderSizePixel=0,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(160,160,160),TextXAlignment=Enum.TextXAlignment.Right,Parent=_.main})if _.sub then ag.AutoButtonColor=false end;local ah=_.sub and ag or _.main;local ai;ah.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then ad=true;ag.Text="[...]"ag.Size=UDim2.new(0,-textService:GetTextSize(ag.Text,16,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,16)ag.TextColor3=y.flags["Menu Accent Color"]end end)y:AddConnection(inputService.InputBegan,function(a8)if inputService:GetFocusedTextBox()then return end;if ad then local aj=table.find(F,a8.UserInputType)and not _.nomouse and a8.UserInputType;_:SetKey(aj or not table.find(E,a8.KeyCode)and a8.KeyCode)else if(a8.KeyCode.Name==_.key or a8.UserInputType.Name==_.key)and not ad then if _.mode=="toggle"then y.flags[_.flag]=not y.flags[_.flag]_.callback(y.flags[_.flag],0)else y.flags[_.flag]=true;if af then af:Disconnect()_.callback(true,0)end;af=y:AddConnection(runService.RenderStepped,function(ak)if not inputService:GetFocusedTextBox()then _.callback(nil,ak)end end)end end end end)y:AddConnection(inputService.InputEnded,function(a8)if _.key~="none"then if a8.KeyCode.Name==_.key or a8.UserInputType.Name==_.key then if af then af:Disconnect()y.flags[_.flag]=false;_.callback(true,0)end end end end)function _:SetKey(aj)ad=false;ag.TextColor3=Color3.fromRGB(160,160,160)if af then af:Disconnect()y.flags[_.flag]=false;_.callback(true,0)end;self.key=aj and aj.Name or aj or self.key;if self.key=="Backspace"then self.key="none"ag.Text="[NONE]"else local H=self.key;if self.key:match"Mouse"then H=self.key:gsub("Button",""):gsub("Mouse","M")elseif self.key:match"Shift"or self.key:match"Alt"or self.key:match"Control"then H=self.key:gsub("Left","L"):gsub("Right","R")end;ag.Text="["..H:gsub("Control","CTRL"):upper().."]"end;ag.Size=UDim2.new(0,-textService:GetTextSize(ag.Text,16,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,16)end;_:SetKey()end;local function al(_,a3)_.hasInit=true;if _.sub then _.main=_:getMain()_.main.Size=UDim2.new(1,0,0,42)else _.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,_.textpos and 24 or 40),BackgroundTransparency=1,Parent=a3})end;_.slider=y:Create("Frame",{Position=UDim2.new(0,6,0,_.sub and 22 or _.textpos and 4 or 20),Size=UDim2.new(1,-12,0,16),BackgroundColor3=Color3.fromRGB(50,50,50),BorderColor3=Color3.new(),Parent=_.main})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=_.slider})_.fill=y:Create("Frame",{BackgroundColor3=y.flags["Menu Accent Color"],BorderSizePixel=0,Parent=_.slider})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.slider})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.slider})_.title=y:Create("TextBox",{Position=UDim2.new((_.sub or _.textpos)and 0.5 or 0,(_.sub or _.textpos)and 0 or 6,0,0),Size=UDim2.new(0,0,0,(_.sub or _.textpos)and 14 or 18),BackgroundTransparency=1,Text=(_.text=="nil"and""or _.text..": ").._.value.._.suffix,TextSize=(_.sub or _.textpos)and 14 or 15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment[(_.sub or _.textpos)and"Center"or"Left"],Parent=(_.sub or _.textpos)and _.slider or _.main})table.insert(y.theme,_.fill)y:Create("UIGradient",{Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(115,115,115)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))}),Rotation=-90,Parent=_.fill})if _.min>=0 then _.fill.Size=UDim2.new((_.value-_.min)/(_.max-_.min),0,1,0)else _.fill.Position=UDim2.new((0-_.min)/(_.max-_.min),0,0,0)_.fill.Size=UDim2.new(_.value/(_.max-_.min),0,1,0)end;local am;_.title.Focused:connect(function()if not am then _.title:ReleaseFocus()_.title.Text=(_.text=="nil"and""or _.text..": ").._.value.._.suffix end end)_.title.FocusLost:connect(function()_.slider.BorderColor3=Color3.new()if am then if tonumber(_.title.Text)then _:SetValue(tonumber(_.title.Text))else _.title.Text=(_.text=="nil"and""or _.text..": ").._.value.._.suffix end end;am=false end)local ah=(_.sub or _.textpos)and _.slider or _.main;ah.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then if inputService:IsKeyDown(Enum.KeyCode.LeftControl)or inputService:IsKeyDown(Enum.KeyCode.RightControl)then am=true;_.title:CaptureFocus()else y.slider=_;_.slider.BorderColor3=y.flags["Menu Accent Color"]_:SetValue(_.min+(a8.Position.X-_.slider.AbsolutePosition.X)/_.slider.AbsoluteSize.X*(_.max-_.min))end end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then _.slider.BorderColor3=y.flags["Menu Accent Color"]end;if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end end)ah.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)ah.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then y.tooltip.Position=UDim2.new(2)if _~=y.slider then _.slider.BorderColor3=Color3.new()end end end)function _:SetValue(O,aa)if typeof(O)~="number"then O=0 end;O=y.round(O,_.float)O=math.clamp(O,self.min,self.max)if self.min>=0 then _.fill:TweenSize(UDim2.new((O-self.min)/(self.max-self.min),0,1,0),"Out","Quad",0.05,true)else _.fill:TweenPosition(UDim2.new((0-self.min)/(self.max-self.min),0,0,0),"Out","Quad",0.05,true)_.fill:TweenSize(UDim2.new(O/(self.max-self.min),0,1,0),"Out","Quad",0.1,true)end;y.flags[self.flag]=O;self.value=O;_.title.Text=(_.text=="nil"and""or _.text..": ").._.value.._.suffix;if not aa then self.callback(O)end end;delay(1,function()if y then _:SetValue(_.value)end end)end;local function an(_,a3)_.hasInit=true;if _.sub then _.main=_:getMain()_.main.Size=UDim2.new(1,0,0,48)else _.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,_.text=="nil"and 30 or 48),BackgroundTransparency=1,Parent=a3})if _.text~="nil"then y:Create("TextLabel",{Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,0,18),BackgroundTransparency=1,Text=_.text,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment.Left,Parent=_.main})end end;local function ao()local ap=""for n,O in next,_.values do ap=ap..(_.value[O]and tostring(O)..", "or"")end;return string.sub(ap,1,#ap-2)end;_.listvalue=y:Create("TextLabel",{Position=UDim2.new(0,6,0,_.text=="nil"and not _.sub and 4 or 22),Size=UDim2.new(1,-12,0,22),BackgroundColor3=Color3.fromRGB(50,50,50),BorderColor3=Color3.new(),Text=" "..(typeof(_.value)=="string"and _.value or ao()),TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,TextTruncate=Enum.TextTruncate.AtEnd,Parent=_.main})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=_.listvalue})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.listvalue})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.listvalue})_.arrow=y:Create("ImageLabel",{Position=UDim2.new(1,-16,0,7),Size=UDim2.new(0,8,0,8),Rotation=90,BackgroundTransparency=1,Image="rbxassetid://4918373417",ImageColor3=Color3.new(1,1,1),ScaleType=Enum.ScaleType.Fit,ImageTransparency=0.4,Parent=_.listvalue})_.holder=y:Create("TextButton",{ZIndex=4,BackgroundColor3=Color3.fromRGB(40,40,40),BorderColor3=Color3.new(),Text="",AutoButtonColor=false,Visible=false,Parent=y.base})_.content=y:Create("ScrollingFrame",{ZIndex=4,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarImageColor3=Color3.new(),ScrollBarThickness=3,ScrollingDirection=Enum.ScrollingDirection.Y,VerticalScrollBarInset=Enum.ScrollBarInset.Always,TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",Parent=_.holder})y:Create("ImageLabel",{ZIndex=4,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.holder})y:Create("ImageLabel",{ZIndex=4,Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.holder})local aq=y:Create("UIListLayout",{Padding=UDim.new(0,2),Parent=_.content})y:Create("UIPadding",{PaddingTop=UDim.new(0,4),PaddingLeft=UDim.new(0,4),Parent=_.content})local ar=0;aq.Changed:connect(function()_.holder.Size=UDim2.new(0,_.listvalue.AbsoluteSize.X,0,8+(ar>_.max and-2+_.max*22 or aq.AbsoluteContentSize.Y))_.content.CanvasSize=UDim2.new(0,0,0,8+aq.AbsoluteContentSize.Y)end)local ah=_.sub and _.listvalue or _.main;_.listvalue.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then if y.popup==_ then y.popup:Close()return end;if y.popup then y.popup:Close()end;_.arrow.Rotation=-90;_.open=true;_.holder.Visible=true;local as=_.main.AbsolutePosition;_.holder.Position=UDim2.new(0,as.X+6,0,as.Y+(_.text=="nil"and not _.sub and 66 or 84))y.popup=_;_.listvalue.BorderColor3=y.flags["Menu Accent Color"]end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then _.listvalue.BorderColor3=y.flags["Menu Accent Color"]end end end)_.listvalue.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if not _.open then _.listvalue.BorderColor3=Color3.new()end end end)ah.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end end)ah.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)ah.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then y.tooltip.Position=UDim2.new(2)end end)local at;function _:AddValue(O,a9)if self.labels[O]then return end;ar=ar+1;if self.multiselect then self.values[O]=a9 else if not table.find(self.values,O)then table.insert(self.values,O)end end;local au=y:Create("TextLabel",{ZIndex=4,Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,Text=O,TextSize=15,Font=Enum.Font.Code,TextTransparency=self.multiselect and(self.value[O]and 1 or 0)or self.value==O and 1 or 0,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment.Left,Parent=_.content})self.labels[O]=au;local av=y:Create("TextLabel",{ZIndex=4,Size=UDim2.new(1,0,1,0),BackgroundTransparency=0.8,Text=" "..O,TextSize=15,Font=Enum.Font.Code,TextColor3=y.flags["Menu Accent Color"],TextXAlignment=Enum.TextXAlignment.Left,Visible=self.multiselect and self.value[O]or self.value==O,Parent=au})at=at or self.value==O and av;table.insert(y.theme,av)au.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then if self.multiselect then self.value[O]=not self.value[O]self:SetValue(self.value)else self:SetValue(O)self:Close()end end end)end;for T,O in next,_.values do _:AddValue(tostring(typeof(T)=="number"and O or T))end;function _:RemoveValue(O)local au=self.labels[O]if au then au:Destroy()self.labels[O]=nil;ar=ar-1;if self.multiselect then self.values[O]=nil;self:SetValue(self.value)else table.remove(self.values,table.find(self.values,O))if self.value==O then at=nil;self:SetValue(self.values[1]or"")end end end end;function _:SetValue(O,aa)if self.multiselect and typeof(O)~="table"then O={}for T,a1 in next,self.values do O[a1]=false end end;self.value=typeof(O)=="table"and O or tostring(table.find(self.values,O)and O or self.values[1])y.flags[self.flag]=self.value;_.listvalue.Text=" "..(self.multiselect and ao()or self.value)if self.multiselect then for Q,au in next,self.labels do au.TextTransparency=self.value[Q]and 1 or 0;if au:FindFirstChild"TextLabel"then au.TextLabel.Visible=self.value[Q]end end else if at then at.TextTransparency=0;if at:FindFirstChild"TextLabel"then at.TextLabel.Visible=false end end;if self.labels[self.value]then at=self.labels[self.value]at.TextTransparency=1;if at:FindFirstChild"TextLabel"then at.TextLabel.Visible=true end end end;if not aa then self.callback(self.value)end end;delay(1,function()if y then _:SetValue(_.value)end end)function _:Close()y.popup=nil;_.arrow.Rotation=90;self.open=false;_.holder.Visible=false;_.listvalue.BorderColor3=Color3.new()end;return _ end;local function aw(_,a3)_.hasInit=true;_.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,_.text=="nil"and 28 or 44),BackgroundTransparency=1,Parent=a3})if _.text~="nil"then _.title=y:Create("TextLabel",{Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,0,18),BackgroundTransparency=1,Text=_.text,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment.Left,Parent=_.main})end;_.holder=y:Create("Frame",{Position=UDim2.new(0,6,0,_.text=="nil"and 4 or 20),Size=UDim2.new(1,-12,0,20),BackgroundColor3=Color3.fromRGB(50,50,50),BorderColor3=Color3.new(),Parent=_.main})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=_.holder})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.holder})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.holder})local ax=y:Create("TextBox",{Position=UDim2.new(0,4,0,0),Size=UDim2.new(1,-4,1,0),BackgroundTransparency=1,Text="  ".._.value,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,TextWrapped=true,ClearTextOnFocus=false,Parent=_.holder})ax.FocusLost:connect(function(ay)_.holder.BorderColor3=Color3.new()_:SetValue(ax.Text,ay)end)ax.Focused:connect(function()_.holder.BorderColor3=y.flags["Menu Accent Color"]end)ax.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then ax.Text=""end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then _.holder.BorderColor3=y.flags["Menu Accent Color"]end;if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end end)ax.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)ax.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if not ax:IsFocused()then _.holder.BorderColor3=Color3.new()end;y.tooltip.Position=UDim2.new(2)end end)function _:SetValue(O,ay)if tostring(O)==""then ax.Text=self.value else y.flags[self.flag]=tostring(O)self.value=tostring(O)ax.Text=self.value;self.callback(O,ay)end end;delay(1,function()if y then _:SetValue(_.value)end end)end;local function az(_)_.mainHolder=y:Create("TextButton",{ZIndex=4,Size=UDim2.new(0,_.trans and 200 or 184,0,200),BackgroundColor3=Color3.fromRGB(40,40,40),BorderColor3=Color3.new(),AutoButtonColor=false,Visible=false,Parent=y.base})y:Create("ImageLabel",{ZIndex=4,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.mainHolder})y:Create("ImageLabel",{ZIndex=4,Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.mainHolder})local aA,aB,aC=Color3.toHSV(_.color)aA,aB,aC=aA==0 and 1 or aA,aB+0.005,aC-0.005;local aD;local aE;local aF;local aG;if _.trans then aG=y:Create("ImageLabel",{ZIndex=5,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.fromHSV(aA,1,1),Rotation=180,Parent=y:Create("ImageLabel",{ZIndex=4,AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,-6,0,6),Size=UDim2.new(0,10,1,-12),BorderColor3=Color3.new(),Image="rbxassetid://4632082392",ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.new(0,5,0,5),Parent=_.mainHolder})})_.transSlider=y:Create("Frame",{ZIndex=5,Position=UDim2.new(0,0,_.trans,0),Size=UDim2.new(1,0,0,2),BackgroundColor3=Color3.fromRGB(38,41,65),BorderColor3=Color3.fromRGB(255,255,255),Parent=aG})aG.InputBegan:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aF=true;_:SetTrans(1-(aH.Position.Y-aG.AbsolutePosition.Y)/aG.AbsoluteSize.Y)end end)aG.InputEnded:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aF=false end end)end;local aI=y:Create("Frame",{ZIndex=4,AnchorPoint=Vector2.new(0,1),Position=UDim2.new(0,6,1,-6),Size=UDim2.new(1,_.trans and-28 or-12,0,10),BackgroundColor3=Color3.new(1,1,1),BorderColor3=Color3.new(),Parent=_.mainHolder})local aJ=y:Create("UIGradient",{Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(0.17,Color3.fromRGB(255,0,255)),ColorSequenceKeypoint.new(0.33,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(0,255,255)),ColorSequenceKeypoint.new(0.67,Color3.fromRGB(0,255,0)),ColorSequenceKeypoint.new(0.83,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,0))}),Parent=aI})local aK=y:Create("Frame",{ZIndex=4,Position=UDim2.new(1-aA,0,0,0),Size=UDim2.new(0,2,1,0),BackgroundColor3=Color3.fromRGB(38,41,65),BorderColor3=Color3.fromRGB(255,255,255),Parent=aI})aI.InputBegan:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aD=true;X=aI.AbsolutePosition.X+aI.AbsoluteSize.X-aI.AbsolutePosition.X;X=math.clamp((aH.Position.X-aI.AbsolutePosition.X)/X,0,0.995)_:SetColor(Color3.fromHSV(1-X,aB,aC))end end)aI.InputEnded:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aD=false end end)local aL=y:Create("ImageLabel",{ZIndex=4,Position=UDim2.new(0,6,0,6),Size=UDim2.new(1,_.trans and-28 or-12,1,-28),BackgroundColor3=Color3.fromHSV(aA,1,1),BorderColor3=Color3.new(),Image="rbxassetid://4155801252",ClipsDescendants=true,Parent=_.mainHolder})local aM=y:Create("Frame",{ZIndex=4,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(aB,0,1-aC,0),Size=UDim2.new(0,4,0,4),Rotation=45,BackgroundColor3=Color3.fromRGB(255,255,255),Parent=aL})aL.InputBegan:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aE=true;X=aL.AbsolutePosition.X+aL.AbsoluteSize.X-aL.AbsolutePosition.X;Y=aL.AbsolutePosition.Y+aL.AbsoluteSize.Y-aL.AbsolutePosition.Y;X=math.clamp((aH.Position.X-aL.AbsolutePosition.X)/X,0.005,1)Y=math.clamp((aH.Position.Y-aL.AbsolutePosition.Y)/Y,0,0.995)_:SetColor(Color3.fromHSV(aA,X,1-Y))end end)y:AddConnection(inputService.InputChanged,function(aH)if aH.UserInputType.Name=="MouseMovement"then if aE then X=aL.AbsolutePosition.X+aL.AbsoluteSize.X-aL.AbsolutePosition.X;Y=aL.AbsolutePosition.Y+aL.AbsoluteSize.Y-aL.AbsolutePosition.Y;X=math.clamp((aH.Position.X-aL.AbsolutePosition.X)/X,0.005,1)Y=math.clamp((aH.Position.Y-aL.AbsolutePosition.Y)/Y,0,0.995)_:SetColor(Color3.fromHSV(aA,X,1-Y))elseif aD then X=aI.AbsolutePosition.X+aI.AbsoluteSize.X-aI.AbsolutePosition.X;X=math.clamp((aH.Position.X-aI.AbsolutePosition.X)/X,0,0.995)_:SetColor(Color3.fromHSV(1-X,aB,aC))elseif aF then _:SetTrans(1-(aH.Position.Y-aG.AbsolutePosition.Y)/aG.AbsoluteSize.Y)end end end)aL.InputEnded:connect(function(aH)if aH.UserInputType.Name=="MouseButton1"then aE=false end end)function _:updateVisuals(aN)aA,aB,aC=Color3.toHSV(aN)aA=aA==0 and 1 or aA;aL.BackgroundColor3=Color3.fromHSV(aA,1,1)if _.trans then aG.ImageColor3=Color3.fromHSV(aA,1,1)end;aK.Position=UDim2.new(1-aA,0,0,0)aM.Position=UDim2.new(aB,0,1-aC,0)end;return _ end;local function aO(_,a3)_.hasInit=true;if _.sub then _.main=_:getMain()else _.main=y:Create("Frame",{LayoutOrder=_.position,Size=UDim2.new(1,0,0,20),BackgroundTransparency=1,Parent=a3})_.title=y:Create("TextLabel",{Position=UDim2.new(0,6,0,0),Size=UDim2.new(1,-12,1,0),BackgroundTransparency=1,Text=_.text,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.fromRGB(210,210,210),TextXAlignment=Enum.TextXAlignment.Left,Parent=_.main})end;_.visualize=y:Create(_.sub and"TextButton"or"Frame",{Position=UDim2.new(1,-(_.subpos or 0)-24,0,4),Size=UDim2.new(0,18,0,12),SizeConstraint=Enum.SizeConstraint.RelativeYY,BackgroundColor3=_.color,BorderColor3=Color3.new(),Parent=_.main})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.6,Parent=_.visualize})y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.visualize})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=_.visualize})local ah=_.sub and _.visualize or _.main;if _.sub then _.visualize.Text=""_.visualize.AutoButtonColor=false end;ah.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then if not _.mainHolder then az(_)end;if y.popup==_ then y.popup:Close()return end;if y.popup then y.popup:Close()end;_.open=true;local as=_.main.AbsolutePosition;_.mainHolder.Position=UDim2.new(0,as.X+36+(_.trans and-16 or 0),0,as.Y+56)_.mainHolder.Visible=true;y.popup=_;_.visualize.BorderColor3=y.flags["Menu Accent Color"]end;if a8.UserInputType.Name=="MouseMovement"then if not y.warning and not y.slider then _.visualize.BorderColor3=y.flags["Menu Accent Color"]end;if _.tip then y.tooltip.Text=_.tip;y.tooltip.Size=UDim2.new(0,textService:GetTextSize(_.tip,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X,0,20)end end end)ah.InputChanged:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if _.tip then y.tooltip.Position=UDim2.new(0,a8.Position.X+26,0,a8.Position.Y+36)end end end)ah.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseMovement"then if not _.open then _.visualize.BorderColor3=Color3.new()end;y.tooltip.Position=UDim2.new(2)end end)function _:SetColor(aP,aa)if typeof(aP)=="table"then aP=Color3.new(aP[1],aP[2],aP[3])end;aP=aP or Color3.new(1,1,1)if self.mainHolder then self:updateVisuals(aP)end;_.visualize.BackgroundColor3=aP;y.flags[self.flag]=aP;self.color=aP;if not aa then self.callback(aP)end end;if _.trans then function _:SetTrans(O,aQ)O=math.clamp(tonumber(O)or 0,0,1)if self.transSlider then self.transSlider.Position=UDim2.new(0,0,O,0)end;self.trans=O;y.flags[self.flag.." Transparency"]=1-O;self.calltrans(O)end;_:SetTrans(_.trans)end;delay(1,function()if y then _:SetColor(_.color)end end)function _:Close()y.popup=nil;self.open=false;self.mainHolder.Visible=false;_.visualize.BorderColor3=Color3.new()end end;function y:AddTab(aR,as)local aS={canInit=true,columns={},title=tostring(aR)}table.insert(self.tabs,as or#self.tabs+1,aS)function aS:AddColumn()local aT={sections={},position=#self.columns,canInit=true,tab=self}table.insert(self.columns,aT)function aT:AddSection(aR)local aU={title=tostring(aR),options={},canInit=true,column=self}table.insert(self.sections,aU)function aU:AddLabel(aV)local _={text=aV}_.section=self;_.type="label"_.position=#self.options;_.canInit=true;table.insert(self.options,_)if y.hasInit and self.hasInit then a2(_,self.content)else _.Init=a2 end;return _ end;function aU:AddDivider(aV)local _={text=aV}_.section=self;_.type="divider"_.position=#self.options;_.canInit=true;table.insert(self.options,_)if y.hasInit and self.hasInit then a4(_,self.content)else _.Init=a4 end;return _ end;function aU:AddToggle(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.state=typeof(_.state)=="boolean"and _.state or false;_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.type="toggle"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.subcount=0;_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)_.style=_.style==2;y.flags[_.flag]=_.state;table.insert(self.options,_)y.options[_.flag]=_;function _:AddColor(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddColor(aW)end;function _:AddBind(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddBind(aW)end;function _:AddList(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddList(aW)end;function _:AddSlider(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddSlider(aW)end;if y.hasInit and self.hasInit then a5(_,self.content)else _.Init=a5 end;return _ end;function aU:AddButton(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.type="button"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.subcount=0;_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)table.insert(self.options,_)y.options[_.flag]=_;function _:AddBind(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()_.main.Size=UDim2.new(1,0,0,40)return _.main end;self.subcount=self.subcount+1;return aU:AddBind(aW)end;function _:AddColor(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()_.main.Size=UDim2.new(1,0,0,40)return _.main end;self.subcount=self.subcount+1;return aU:AddColor(aW)end;if y.hasInit and self.hasInit then ab(_,self.content)else _.Init=ab end;return _ end;function aU:AddBind(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.key=_.key and _.key.Name or _.key or"none"_.nomouse=typeof(_.nomouse)=="boolean"and _.nomouse or false;_.mode=typeof(_.mode)=="string"and(_.mode=="toggle"or _.mode=="hold"and _.mode)or"toggle"_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.type="bind"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)table.insert(self.options,_)y.options[_.flag]=_;if y.hasInit and self.hasInit then ac(_,self.content)else _.Init=ac end;return _ end;function aU:AddSlider(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.min=typeof(_.min)=="number"and _.min or 0;_.max=typeof(_.max)=="number"and _.max or 0;_.value=_.min<0 and 0 or math.clamp(typeof(_.value)=="number"and _.value or _.min,_.min,_.max)_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.float=typeof(_.value)=="number"and _.float or 1;_.suffix=_.suffix and tostring(_.suffix)or""_.textpos=_.textpos==2;_.type="slider"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.subcount=0;_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)y.flags[_.flag]=_.value;table.insert(self.options,_)y.options[_.flag]=_;function _:AddColor(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddColor(aW)end;function _:AddBind(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddBind(aW)end;if y.hasInit and self.hasInit then al(_,self.content)else _.Init=al end;return _ end;function aU:AddList(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.values=typeof(_.values)=="table"and _.values or{}_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.multiselect=typeof(_.multiselect)=="boolean"and _.multiselect or false;_.value=_.multiselect and(typeof(_.value)=="table"and _.value or{})or tostring(_.value or _.values[1]or"")if _.multiselect then for T,a1 in next,_.values do _.value[a1]=false end end;_.max=_.max or 4;_.open=false;_.type="list"_.position=#self.options;_.labels={}_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.subcount=0;_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)y.flags[_.flag]=_.value;table.insert(self.options,_)y.options[_.flag]=_;function _:AddValue(O,a9)if self.multiselect then self.values[O]=a9 else table.insert(self.values,O)end end;function _:AddColor(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddColor(aW)end;function _:AddBind(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddBind(aW)end;if y.hasInit and self.hasInit then an(_,self.content)else _.Init=an end;return _ end;function aU:AddBox(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.value=tostring(_.value or"")_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.type="box"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)y.flags[_.flag]=_.value;table.insert(self.options,_)y.options[_.flag]=_;if y.hasInit and self.hasInit then aw(_,self.content)else _.Init=aw end;return _ end;function aU:AddColor(_)_=typeof(_)=="table"and _ or{}_.section=self;_.text=tostring(_.text)_.color=typeof(_.color)=="table"and Color3.new(_.color[1],_.color[2],_.color[3])or _.color or Color3.new(1,1,1)_.callback=typeof(_.callback)=="function"and _.callback or function()end;_.calltrans=typeof(_.calltrans)=="function"and _.calltrans or _.calltrans==1 and _.callback or function()end;_.open=false;_.trans=tonumber(_.trans)_.subcount=1;_.type="color"_.position=#self.options;_.flag=(y.flagprefix and y.flagprefix.." "or"")..(_.flag or _.text)_.canInit=_.canInit~=nil and _.canInit or true;_.tip=_.tip and tostring(_.tip)y.flags[_.flag]=_.color;table.insert(self.options,_)y.options[_.flag]=_;function _:AddColor(aW)aW=typeof(aW)=="table"and aW or{}aW.sub=true;aW.subpos=self.subcount*24;function aW:getMain()return _.main end;self.subcount=self.subcount+1;return aU:AddColor(aW)end;if _.trans then y.flags[_.flag.." Transparency"]=_.trans end;if y.hasInit and self.hasInit then aO(_,self.content)else _.Init=aO end;return _ end;function aU:SetTitle(aX)self.title=tostring(aX)if self.titleText then self.titleText.Text=tostring(aX)self.titleText.Size=UDim2.new(0,textService:GetTextSize(self.title,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X+10,0,3)end end;function aU:Init()if self.hasInit then return end;self.hasInit=true;self.main=y:Create("Frame",{BackgroundColor3=Color3.fromRGB(30,30,30),BorderColor3=Color3.new(),Parent=aT.main})self.content=y:Create("Frame",{Size=UDim2.new(1,0,1,0),BackgroundColor3=Color3.fromRGB(30,30,30),BorderColor3=Color3.fromRGB(60,60,60),BorderMode=Enum.BorderMode.Inset,Parent=self.main})y:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=self.main})table.insert(y.theme,y:Create("Frame",{Size=UDim2.new(1,0,0,1),BackgroundColor3=y.flags["Menu Accent Color"],BorderSizePixel=0,BorderMode=Enum.BorderMode.Inset,Parent=self.main}))local aq=y:Create("UIListLayout",{HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,2),Parent=self.content})y:Create("UIPadding",{PaddingTop=UDim.new(0,12),Parent=self.content})self.titleText=y:Create("TextLabel",{AnchorPoint=Vector2.new(0,0.5),Position=UDim2.new(0,12,0,0),Size=UDim2.new(0,textService:GetTextSize(self.title,15,Enum.Font.Code,Vector2.new(9e9,9e9)).X+10,0,3),BackgroundColor3=Color3.fromRGB(30,30,30),BorderSizePixel=0,Text=self.title,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),Parent=self.main})aq.Changed:connect(function()self.main.Size=UDim2.new(1,0,0,aq.AbsoluteContentSize.Y+16)end)for n,_ in next,self.options do if _.canInit then _.Init(_,self.content)end end end;if y.hasInit and self.hasInit then aU:Init()end;return aU end;function aT:Init()if self.hasInit then return end;self.hasInit=true;self.main=y:Create("ScrollingFrame",{ZIndex=2,Position=UDim2.new(0,6+self.position*239,0,2),Size=UDim2.new(0,233,1,-4),BackgroundTransparency=1,BorderSizePixel=0,ScrollBarImageColor3=Color3.fromRGB(),ScrollBarThickness=4,VerticalScrollBarInset=Enum.ScrollBarInset.ScrollBar,ScrollingDirection=Enum.ScrollingDirection.Y,Visible=false,Parent=y.columnHolder})local aq=y:Create("UIListLayout",{HorizontalAlignment=Enum.HorizontalAlignment.Center,SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,12),Parent=self.main})y:Create("UIPadding",{PaddingTop=UDim.new(0,8),PaddingLeft=UDim.new(0,2),PaddingRight=UDim.new(0,2),Parent=self.main})aq.Changed:connect(function()self.main.CanvasSize=UDim2.new(0,0,0,aq.AbsoluteContentSize.Y+14)end)for n,aU in next,self.sections do if aU.canInit and#aU.options>0 then aU:Init()end end end;if y.hasInit and self.hasInit then aT:Init()end;return aT end;function aS:Init()if self.hasInit then return end;self.hasInit=true;local aY=textService:GetTextSize(self.title,18,Enum.Font.Code,Vector2.new(9e9,9e9)).X+10;self.button=y:Create("TextLabel",{Position=UDim2.new(0,y.tabSize,0,22),Size=UDim2.new(0,aY,0,30),BackgroundTransparency=1,Text=self.title,TextColor3=Color3.new(1,1,1),TextSize=15,Font=Enum.Font.Code,TextWrapped=true,ClipsDescendants=true,Parent=y.main})y.tabSize=y.tabSize+aY;self.button.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then y:selectTab(self)end end)for n,aT in next,self.columns do if aT.canInit then aT:Init()end end end;if self.hasInit then aS:Init()end;return aS end;function y:AddWarning(aZ)aZ=typeof(aZ)=="table"and aZ or{}aZ.text=tostring(aZ.text)aZ.type=aZ.type=="confirm"and"confirm"or""local a_;function aZ:Show()y.warning=aZ;if aZ.main and aZ.type==""then return end;if y.popup then y.popup:Close()end;if not aZ.main then aZ.main=y:Create("TextButton",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=0.6,BackgroundColor3=Color3.new(),BorderSizePixel=0,Text="",AutoButtonColor=false,Parent=y.main})aZ.message=y:Create("TextLabel",{ZIndex=2,Position=UDim2.new(0,20,0.5,-60),Size=UDim2.new(1,-40,0,40),BackgroundTransparency=1,TextSize=16,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),TextWrapped=true,RichText=true,Parent=aZ.main})if aZ.type=="confirm"then local b0=y:Create("TextLabel",{ZIndex=2,Position=UDim2.new(0.5,-105,0.5,-10),Size=UDim2.new(0,100,0,20),BackgroundColor3=Color3.fromRGB(40,40,40),BorderColor3=Color3.new(),Text="Yes",TextSize=16,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),Parent=aZ.main})y:Create("ImageLabel",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=b0})y:Create("ImageLabel",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=b0})local b1=y:Create("TextLabel",{ZIndex=2,Position=UDim2.new(0.5,5,0.5,-10),Size=UDim2.new(0,100,0,20),BackgroundColor3=Color3.fromRGB(40,40,40),BorderColor3=Color3.new(),Text="No",TextSize=16,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),Parent=aZ.main})y:Create("ImageLabel",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=b1})y:Create("ImageLabel",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=b1})b0.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then a_=true end end)b1.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then a_=false end end)else local b0=y:Create("TextLabel",{ZIndex=2,Position=UDim2.new(0.5,-50,0.5,-10),Size=UDim2.new(0,100,0,20),BackgroundColor3=Color3.fromRGB(30,30,30),BorderColor3=Color3.new(),Text="OK",TextSize=16,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),Parent=aZ.main})y:Create("ImageLabel",{ZIndex=2,Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2454009026",ImageColor3=Color3.new(),ImageTransparency=0.8,Parent=b0})y:Create("ImageLabel",{ZIndex=2,AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,-2,1,-2),BackgroundTransparency=1,Image="rbxassetid://3570695787",ImageColor3=Color3.fromRGB(50,50,50),Parent=b0})b0.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then a_=true end end)end end;aZ.main.Visible=true;aZ.message.Text=aZ.text;repeat wait()until a_~=nil;spawn(aZ.Close)y.warning=nil;return a_ end;function aZ:Close()a_=nil;if not aZ.main then return end;aZ.main.Visible=false end;return aZ end;function y:Close()self.open=not self.open;if self.open then inputService.MouseIconEnabled=false else inputService.MouseIconEnabled=self.mousestate end;if self.main then if self.popup then self.popup:Close()end;self.main.Visible=self.open;self.cursor.Visible=self.open;self.cursor1.Visible=self.open end end;function y:Init()if self.hasInit then return end;self.hasInit=true;self.base=y:Create("ScreenGui",{IgnoreGuiInset=true})if runService:IsStudio()then self.base.Parent=script.Parent.Parent elseif syn and syn.request then syn.protect_gui(self.base)self.base.Parent=game:GetService"CoreGui"else self.base.Parent=gethui()end;self.main=self:Create("ImageButton",{AutoButtonColor=false,Position=UDim2.new(0,100,0,46),Size=UDim2.new(0,90,0,90),BackgroundColor3=Color3.fromRGB(20,20,20),BorderColor3=Color3.new(),ScaleType=Enum.ScaleType.Tile,Modal=true,Visible=false,Parent=self.base})local b2=self:Create("Frame",{Size=UDim2.new(1,0,0,50),BackgroundColor3=Color3.fromRGB(30,30,30),BorderColor3=Color3.new(),Parent=self.main})self:Create("TextLabel",{Position=UDim2.new(0,6,0,-1),Size=UDim2.new(0,0,0,20),BackgroundTransparency=1,Text=tostring(self.title),Font=Enum.Font.Code,TextSize=18,TextColor3=Color3.new(1,1,1),TextXAlignment=Enum.TextXAlignment.Left,Parent=self.main})table.insert(y.theme,self:Create("Frame",{Size=UDim2.new(1,0,0,1),Position=UDim2.new(0,0,0,24),BackgroundColor3=y.flags["Menu Accent Color"],BorderSizePixel=0,Parent=self.main}))y:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,ImageColor3=Color3.new(),ImageTransparency=0.4,Parent=b2})self.tabHighlight=self:Create("Frame",{BackgroundColor3=y.flags["Menu Accent Color"],BorderSizePixel=0,Parent=self.main})table.insert(y.theme,self.tabHighlight)self.columnHolder=self:Create("Frame",{Position=UDim2.new(0,5,0,55),Size=UDim2.new(1,-10,1,-60),BackgroundTransparency=1,Parent=self.main})self.cursor=self:Create("Triangle",{Color=Color3.fromRGB(180,180,180),Transparency=0.6})self.cursor1=self:Create("Triangle",{Color=Color3.fromRGB(240,240,240),Transparency=0.6})self.tooltip=self:Create("TextLabel",{ZIndex=2,BackgroundTransparency=1,BorderSizePixel=0,TextSize=15,Font=Enum.Font.Code,TextColor3=Color3.new(1,1,1),Visible=true,Parent=self.base})self:Create("Frame",{AnchorPoint=Vector2.new(0.5,0),Position=UDim2.new(0.5,0,0,0),Size=UDim2.new(1,10,1,0),Style=Enum.FrameStyle.RobloxRound,Parent=self.tooltip})self:Create("ImageLabel",{Size=UDim2.new(1,0,1,0),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.fromRGB(60,60,60),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=self.main})self:Create("ImageLabel",{Size=UDim2.new(1,-2,1,-2),Position=UDim2.new(0,1,0,1),BackgroundTransparency=1,Image="rbxassetid://2592362371",ImageColor3=Color3.new(),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(2,2,62,62),Parent=self.main})b2.InputBegan:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then D=self.main;z=true;B=a8.Position;C=D.Position;if y.popup then y.popup:Close()end end end)b2.InputChanged:connect(function(a8)if z and a8.UserInputType.Name=="MouseMovement"then A=a8 end end)b2.InputEnded:connect(function(a8)if a8.UserInputType.Name=="MouseButton1"then z=false end end)function self:selectTab(aS)if self.currentTab==aS then return end;if y.popup then y.popup:Close()end;if self.currentTab then self.currentTab.button.TextColor3=Color3.fromRGB(255,255,255)for n,aT in next,self.currentTab.columns do aT.main.Visible=false end end;self.main.Size=UDim2.new(0,16+(#aS.columns<2 and 2 or#aS.columns)*239,0,600)self.currentTab=aS;aS.button.TextColor3=y.flags["Menu Accent Color"]self.tabHighlight:TweenPosition(UDim2.new(0,aS.button.Position.X.Offset,0,50),"Out","Quad",0.2,true)self.tabHighlight:TweenSize(UDim2.new(0,aS.button.AbsoluteSize.X,0,-1),"Out","Quad",0.1,true)for n,aT in next,aS.columns do aT.main.Visible=true end end;spawn(function()while y do wait(1)local b3=self:GetConfigs()pcall(function()for n,V in next,b3 do if not table.find(self.options["Config List"].values,V)then self.options["Config List"]:AddValue(V)end end;for T,V in next,self.options["Config List"].values do if not table.find(b3,V)then self.options["Config List"]:RemoveValue(V)end end end)end end)for n,aS in next,self.tabs do if aS.canInit then aS:Init()self:selectTab(aS)end end;self:AddConnection(inputService.InputEnded,function(a8)if a8.UserInputType.Name=="MouseButton1"and self.slider then self.slider.slider.BorderColor3=Color3.new()self.slider=nil end end)self:AddConnection(inputService.InputChanged,function(a8)if self.open then if a8.UserInputType.Name=="MouseMovement"then if self.cursor then local b4=inputService:GetMouseLocation()local b5=Vector2.new(b4.X,b4.Y)self.cursor.PointA=b5;self.cursor.PointB=b5+Vector2.new(12,12)self.cursor.PointC=b5+Vector2.new(12,12)self.cursor1.PointA=b5;self.cursor1.PointB=b5+Vector2.new(11,11)self.cursor1.PointC=b5+Vector2.new(11,11)end;if self.slider then self.slider:SetValue(self.slider.min+(a8.Position.X-self.slider.slider.AbsolutePosition.X)/self.slider.slider.AbsoluteSize.X*(self.slider.max-self.slider.min))end end;if a8==A and z and y.draggable then local b6=a8.Position-B;local b7=C.Y.Offset+b6.Y<-36 and-36 or C.Y.Offset+b6.Y;D:TweenPosition(UDim2.new(C.X.Scale,C.X.Offset+b6.X,C.Y.Scale,b7),"Out","Quint",0.1,true)end end end)if not getgenv().silent then delay(1,function()self:Close()end)end end end;c_assert(library.AddTab,"AddTab is nil | UI Library failed")local b8=library:AddTab("Main")local b9=library:AddTab("Visuals")local ba=library:AddTab("Character")local bb=library:AddTab("Weapons")local bc=library:AddTab("Settings")local bd=b8:AddColumn()local be=b8:AddColumn()local bf=b9:AddColumn()local bg=b9:AddColumn()local bh=bb:AddColumn()local bi=bb:AddColumn()local bj=ba:AddColumn()local bk=bc:AddColumn()local bl=bc:AddColumn()local bm=bd:AddSection("Aimbot")local bn=bd:AddSection("Silent Aim")local bo=bf:AddSection("ESP")local bp=bg:AddSection("World")local bq=bh:AddSection("Gun")local br=bi:AddSection("Grenades")local bs=bg:AddSection("Crosshair")local bt=be:AddSection("Prediction")local bu=be:AddSection("Rage")local bv=bg:AddSection("Arm Chams")local bw=bi:AddSection("Knife Aura")local bx=bj:AddSection("Character Mods")local by=bj:AddSection("Camera")local bz=bj:AddSection("Anti-Aim")local bA=bj:AddSection("Other Players")local bB=bk:AddSection("Settings")local bC=bl:AddSection("Create")local bD=bl:AddSection("Load")local bE=bl:AddSection("Save")bu:AddToggle({text='Resolver',flag="Resolver"})by:AddToggle({text="Enable",flag="ModCamera"})by:AddSlider({text="Camera X",flag="CameraX",min=-15,max=15})by:AddSlider({text="Camera Y",flag="CameraY",min=-15,max=15})by:AddSlider({text="Camera Z",flag="CameraZ",min=-15,max=15})bz:AddToggle({text="Enabled",flag="AntiAim"})bz:AddList({text="Pitch",flag="AntiaimPitch",values={"Up","Down","Random"}})bz:AddList({text="Yaw",flag="AntiaimYaw",values={"Left","Right","Random"}})bz:AddToggle({text="Movement AA",flag="OAA"}):AddSlider({text="Speed",flag="OAASpeed",min=0,max=300})bz:AddSlider({text="OAA Radius",flag="OAARadius",min=0,max=500})bz:AddList({text="OAA Method",flag="OAAMethod",values={"Circular","Spring"}})br:AddToggle({text="Grenade TP",flag="GrenadeTP"})br:AddToggle({text="Custom Fuse",flag="CustomFuse"}):AddSlider({text="TP Fuse time",flag="GTPFuse",min=0,max=5,float=0.005})br:AddToggle({text="Instant Throw",flag="InstantThrow"})br:AddToggle({text="Frag Bot",flag="FragBot"})SpaceDown=false;c.InputBegan:Connect(function(bF)if bF.KeyCode==Enum.KeyCode.Space then SpaceDown=true end end)c.InputEnded:Connect(function(bF)if bF.KeyCode==Enum.KeyCode.Space then SpaceDown=false end end)bx:AddToggle({text="Bunny Hop",flag="BunnyHop"}):AddSlider({text="Speed",flag="BunnyHopSpeed",min=1,max=70})bx:AddToggle({text="Fly",flag="Fly"}):AddSlider({text="Fly Speed",flag="FlySpeed",min=10,max=200})bw:AddToggle({text="Knife Aura",flag="KnifeAura"}):AddSlider({text="Knife Aura Distance",flag="KnifeAuraDistance",min=0,max=25})bw:AddToggle({text="Knife Held",flag="KnifeHeld"})bx:AddToggle({text="No Fall Damage",flag="NoFallDamage"})bx:AddToggle({text="Jump Power",flag="JumpPower"}):AddSlider({text="Jump Power",flag="JumpPowerValue",min=1,max=100})oldj=client.char.jump;client.char.jump=function(bG,bH)if library.flags.JumpPower then return oldj(bG,library.flags.JumpPowerValue)end;return oldj(bG,bH)end;bA:AddToggle{text="Hitbox Expander",flag="HitboxExpander"}:AddSlider({text="Size",flag="HitboxExpanderSize",min=1,max=5})bq:AddToggle({text="Modify Recoil",flag="RecoilOn"}):AddSlider({text="Recoil %",flag="Recoil",min=0,max=1,float=.001})bq:AddToggle({text="Firerate Addition",flag="CustomFirerateOn"}):AddSlider({text="Firerate Addition",flag="CustomFirerate",min=0,max=2500})bq:AddToggle({text="Reload Speed",flag="ReloadSpeedOn"}):AddSlider({text="Reload Speed",flag="ReloadSpeed",min=0,max=1,float=.001})bq:AddToggle({text="No Animations",flag="NoAnim"})bq:AddToggle({text="No Knife Bob/Sway",flag="NoKnifeBob"})bq:AddToggle({text="No Camera Sway",flag="NoCamSway"})bq:AddToggle({text="No Spread",flag="NoSpread"})bq:AddToggle({text="No Gun Bob",flag="NoGunBob"})bq:AddToggle({text="All Firemodes",flag="FireModes"})bq:AddList({text="Default Firemode",flag="DefaultFiremode",values={'Auto','Semi','Burst'}})bq:AddToggle({text="Fake Equip",flag="FakeEquip"}):AddList({values={"Primary","Secondary","Knife"},flag="FakeEquipListItem"})bC:AddBox({text="Config Name",skipflag=true})bC:AddButton({text="Create",callback=function()library:GetConfigs()writefile(library.foldername.."/"..library.flags['Config Name']..library.fileext,"{}")library.options['Config List']:AddValue(library.flags['Config Name'])library:SaveConfig(library.flags['Config List'])end})bD:AddList({text="Configs",skipflag=true,value="",flag="Config List",values=library:GetConfigs()})bD:AddButton({text="Load",callback=function()library:LoadConfig(library.flags['Config List'])end})bD:AddButton({text="Save",callback=function()library:SaveConfig(library.flags['Config List'])end})bD:AddButton({text="Delete",callback=function()delfile(library.foldername.."/"..library.flags['Config List']..library.fileext)end})bD:AddButton({text="Set Default",callback=function()library:GetConfigs()writefile(library.foldername.."/".."default"..library.fileext,"{}")library.options['Config List']:AddValue("default")library:SaveConfig("default")end})local bI;local bI=loadstring(game:HttpGet("http://ducksite.xyz/ceri/esp_library.lua"))()bo:AddToggle({text="Enabled",callback=function(bJ)bI.settings.enabled=bJ end}):AddSlider({text="Refresh Rate",min=0,max=180,callback=function(bJ)bI.settings.refreshrate=bJ end})bo:AddToggle({text="Team Check",state=false,callback=function(bK)bI.settings.teamcheck=bK end})bo:AddToggle({text="Team Color",state=true,callback=function(bK)bI.settings.teamcolor=bK end})bo:AddToggle({text="Names",state=true,callback=function(bK)bI.settings.names=bK end}):AddColor({color=Color3.new(1,1,1),callback=function(bK)bI.settings.namescolor=bK end})bo:AddToggle({text="Names Outline",state=false,callback=function(bK)bI.settings.namesoutline=bK end})bo:AddToggle({text="Distance",state=true,callback=function(bK)bI.settings.distance=bK end}):AddColor({color=Color3.new(1,1,1),callback=function(bK)bI.settings.distancecolor=bK end})bo:AddToggle({text="Distance Outline",state=false,callback=function(bK)bI.settings.distanceoutline=bK end})bo:AddToggle({text="Boxes",state=true,callback=function(bK)bI.settings.boxes=bK end}):AddColor({color=Color3.new(1,1,1),callback=function(bK)bI.settings.boxescolor=bK end})bo:AddToggle({text="Boxes Outline",state=false,callback=function(bK)bI.settings.boxesoutline=bK end})bo:AddToggle({text="Boxes Fill",state=false,callback=function(bK)bI.settings.boxesfill=bK end}):AddColor({color=Color3.new(1,1,1),trans=0.5,flag="boxesfillclr",callback=function(bK)bI.settings.boxesfillcolor=bK;bI.settings.boxesfilltrans=library.flags["boxesfillclr Transparency"]end})local bL=bo:AddToggle({text="Healthbars",state=false,callback=function(bK)bI.settings.healthbars=bK end})bL:AddColor({color=Color3.new(0,1,0),callback=function(bK)bI.settings.healthbarscolor=bK end})bL:AddSlider({text="X Offset",min=0,max=10,value=2,callback=function(bK)bI.settings.healthbarsoffset=bK end})bo:AddToggle({text="Healthbars Outline",state=false,callback=function(bK)bI.settings.healthbarsoutline=bK end})local bM=bo:AddToggle({text="Tracers",state=false,callback=function(bK)bI.settings.tracers=bK end})bM:AddColor({color=Color3.new(1,1,1),callback=function(bK)bI.settings.tracerscolor=bK end})bM:AddList({values={"Top","Left","Right","Bottom","Center","Mouse"},value="Bottom",callback=function(bK)bI.settings.tracersorigin=bK end})bo:AddList({text="Text Font",values={"UI","System","Plex","Monospace"},value="UI",callback=function(bK)bI.settings.textfont=Drawing.Fonts[bK]end})bo:AddSlider({text="Text Font Size",min=13,max=18,value=18,suffix="px",callback=function(bK)bI.settings.textsize=bK end})bm:AddToggle({text="Enabled",flag="AimbotOn"}):AddSlider({text="Smoothness",flag="Smoothness",min=4,max=20})bm:AddToggle({text="Show FOV",flag="FOVOn"}):AddColor({text="Color",flag="FOVColor",trans=0.7})bm:AddSlider({text="Circle Radius",flag="FOV",min=15,max=300})bm:AddSlider({text="Circle Sides",flag="FOVSides",min=6,max=180})bm:AddSlider({text="Circle Thickness",flag="FOVThickness",min=1,max=5,float=.01})bm:AddToggle({text="Autowall",flag="Autowall"})bm:AddList({text="Aim Part",flag="AimPart",values={'head','torso'}})bn:AddToggle({text="Enabled",flag="SilentAimOn"})bn:AddSlider({text="Headshot Chance",flag="HeadshotChance",min=0,max=100})bn:AddToggle({text="Show FOV",flag="SilentFOVOn"}):AddSlider({text="FOV",flag="SilentFOV",min=15,max=300})bn:AddToggle({text="Ignore FOV",flag="IgnoreSilentAimFOV"})bn:AddSlider({text="FOV Sides",flag="SilentFOVSides",min=6,max=180})bn:AddSlider({text="FOV Thickness",flag="SilentFOVThickness",min=1,max=5,float=.01})bn:AddColor({text="FOV Color",flag="SilentFOVColor"})bt:AddToggle({text="Movement Prediction",flag="MovementPrediction"})bt:AddToggle({text="Drop Prediction",flag="DropPrediction"})bu:AddToggle({text="Enabled",flag="AutoShoot"}):AddList({text="Method",flag="AutoShootMethod",values={"Currentgun:shoot()","Newbullets & bullethit"}})bu:AddToggle({text="Newbullets Particles",flag="Particles"})bu:AddSlider({text="Lifetime",flag="ParticleLifetime",min=0,max=4,float=0.01})bu:AddSlider({text="Bloom",flag="Bloom",min=0,max=1,float=0.001})bu:AddSlider({text="Brightness",flag="ParticleBrightness",min=0,max=1000})bu:AddColor({text="Color",flag="ParticleColor"})bB:AddBind({text="Toggle UI",key="RightShift",callback=function()library:Close()end})bB:AddButton({text="Rejoin Game",callback=function()game:GetService('TeleportService'):Teleport(292439477)end})bB:AddToggle({text="Lag Server",flag="LagServer"}):AddSlider({text="Data Per Frame",flag="DataPerFrame",min=1,max=60})LogService=game:GetService("LogService")b.RenderStepped:Connect(function()for m=1,library.flags.DataPerFrame do if library.flags.LagServer then LogService:RequestServerHttpResult()LogService:RequestServerOutput()end end end)function client:IsAlive(bN)if bN==e then return client.char.alive else if client.hud:getplayerhealth(bN)>0 then return true end end;return false end;local bO=Vector3.new()local bP=bO.Dot;function client:trajectory(L,y,Q,P,C)local D=-y;local bQ=Q-L;local y=bP(D,D)local z=4*bP(bQ,bQ)local H=4*(bP(D,bQ)+P*P)/(2*y)local n=(H*H-z/y)^0.5;local Q,bR=H-n,H+n;if not(Q>0)then Q=bR end;Q=Q^0.5;return D*Q/2+(C or bO)+bQ/Q,Q end;local bS={}getgenv().Closest=nil;function closest(bT)local bU;if bT then bU=math.huge else bU=library.flags.SilentFOV end;local bV;local bW;local bX;local bY=c:GetMouseLocation()local bZ,b_=nil,nil;local c0=false;local c1=false;for m,n in pairs(a:GetPlayers())do if n~=e and n.Team~=e.Team and client:IsAlive(n)then bW=client.bodyparts[n]local c2,c3=f:WorldToScreenPoint(bW.head.Position)local c4=(Vector2.new(c2.X,c2.Y)-Vector2.new(bY.X,bY.Y)).Magnitude;if c4<bU then if bT then bX=bW.head end;if not bT then if math.random(0,100)<library.flags.HeadshotChance then bX=bW.head else bX=bW.torso end end;bU=c4;bV=n;c1=true;bZ,b_=c2,c3 end end end;return{Closest=bV,OnScreen=b_,Part=bX,InFOV=c1,Autowall=c0}end;local c5=client.network.send;local c6=1;local c7=0;client.network.send=function(self,c8,...)if c8=="falldamage"and library.flags.NoFallDamage then return end;if c8=="equip"then c6=...end;if c8=="newgrenade"then local c9={...}if c9[2].blowuptime and library.flags.CustomFuse then c9[2].blowuptime=library.flags.GTPFuse end;local ca=closest(true)if not ca or not ca.Closest or not ca.Part then return c5(self,c8,...)end;for m,n in pairs(c9[2].frames)do if n~=c9[2].frames[1]then if ca.OnScreen then if n.p0 and library.flags.GrenadeTP then n.p0=ca.Part.Position end end end end end;if c8=="newbullets"then local c9={...}if library.flags.FakeEquip then c5(self,"equip",c6)end;c7=c7+1 end;if c8=="repupdate"and library.flags.AntiAim then local c9={...}local cb;local cc;if library.flags.AntiaimPitch=="Up"then cb=client.camera.maxangle end;if library.flags.AntiaimPitch=="Down"then cb=client.camera.minangle end;if library.flags.AntiaimPitch=="Random"then cb=math.random(client.camera.minangle,client.camera.maxangle)end;if library.flags.AntiaimYaw=="Left"then cc=25.991293 end;if library.flags.AntiaimYaw=="Right"then cc=-25.991293 end;if library.flags.AntiaimYaw=="Random"then cc=Vector3.new(math.cos(tick()*400),math.cos(tick()*400))end;c9[2]=Vector2.new(cb,cc)return c5(self,c8,unpack(c9))end;return c5(self,c8,...)end;function client:Aimbot()local cd=client:Draw("AimbotFOVCircle","Circle",{Color=Color3.fromRGB(255,255,255)})b:BindToRenderStep("Aiming",1,function()for m,n in pairs(client.bodyparts)do if not bS[m]then bS[m]={}end;table.insert(bS[m],1,{n.head.Position,tick()})table.remove(bS[m],16)end;cd.Visible=library.flags.FOVOn and library.flags.AimbotOn;cd.Radius=library.flags.FOV;cd.NumSides=library.flags.FOVSides;cd.Thickness=library.flags.FOVThickness;cd.Color=library.flags.FOVColor;cd.Position=Vector2.new(g.X,g.Y+36)local bZ,b_=nil,nil;local ce=nil;local bX=nil;if library.flags.AimbotOn and client.char.alive then local bU=library.flags.FOV;local bW;local bV;local bY=c:GetMouseLocation()for m,n in pairs(a:GetPlayers())do if n~=e and n.Team~=e.Team and client:IsAlive(n)then bW=client.bodyparts[n]bX=bW[library.flags.AimPart]local c2,c3=f:WorldToScreenPoint(bX.Position)local c4=(Vector2.new(c2.X,c2.Y)-Vector2.new(bY.X,bY.Y)).Magnitude;if c4<bU then bU=c4;ce=bX.Position;bV=n;bZ,b_=c2,c3 end end end;if c:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and bV and b_ then local X,Y;if library.flags.MovementPrediction then local cf=client:trajectory(f.CFrame.Position,Vector3.new(0,-workspace.Gravity,0),ce,client.gamelogic.currentgun.data.bulletspeed,(bS[bV][1][1]-bS[bV][#bS[bV]][1])/(bS[bV][1][2]-bS[bV][#bS[bV]][2]))local cg=f:WorldToScreenPoint(cf+f.CFrame.Position)X=(cg.X-g.X)/library.flags.Smoothness;Y=(cg.Y-g.Y)/library.flags.Smoothness else X=(bZ.X-g.X)/library.flags.Smoothness;Y=(bZ.Y-g.Y)/library.flags.Smoothness end;if math.abs(X)>0 and math.abs(Y)>0 then mousemoverel(X,Y)end end end end)end;function client:Silent()local cd=client:Draw("SilentAimFOVCircle","Circle",{Color=Color3.fromRGB(255,255,255)})b:BindToRenderStep("SilentFOV",1,function()cd.Visible=library.flags.SilentFOVOn and library.flags.SilentAimOn;cd.Radius=library.flags.SilentFOV;cd.NumSides=library.flags.SilentFOVSides;cd.Thickness=library.flags.SilentFOVThickness;cd.Color=library.flags.SilentFOVColor;cd.Position=Vector2.new(g.X,g.Y+36)end)local ch;ch=hookmetamethod(game,"__index",function(ci,cj)if library.flags.SilentAimOn and client.char.alive then if cj=="CFrame"and not checkcaller()then if client.gamelogic.currentgun and client.gamelogic.currentgun.barrel then if ci==client.gamelogic.currentgun.barrel or ci==client.gamelogic.currentgun.aimsightdata[1].sightpart then local bV;if library.flags.IgnoreSilentAimFOV then bV=closest(true)elseif library.flags.AutoShoot then bV=closest(true)else bV=closest(false)end;if library.flags.AutoShoot and bV.Closest then for m,n in pairs(a:GetPlayers())do if n~=e and n.Team~=e.Team and client:IsAlive(n)and client.bodyparts[n]and client.bodyparts[n].head then if client:GetTargetInfo(n).Killable then local ck=CFrame.new(ci.Position,client.bodyparts[n].head.Position)return ck end end end end;if bV.Closest and bV.OnScreen and bV.InFOV then local ck=CFrame.new(ci.Position,bV.Part.Position)return ck end end end end end;return ch(ci,cj)end)end;local cl;cl=hookmetamethod(game,"__newindex",function(self,bF,bJ)if self==client.camera.currentcamera and library.flags.ModCamera then if bF=="CFrame"then bJ=bJ*CFrame.new(library.flags.CameraX,library.flags.CameraY,library.flags.CameraZ)end end;return cl(self,bF,bJ)end)local cm=debug.getupvalue(client.loadmodules,6)local cn=debug.getupvalue(cm,1)function SolveVector3(co)if library.flags.Recoil==0 then return Vector3.new()else return co*library.flags.Recoil end end;debug.setupvalue(cm,1,function(...)local cp=cn(...)if library.flags.FireModes then local cq={true,1,2}local cr={1,true,2}local cs={2,1,true}if library.flags.DefaultFiremode=="Auto"then cp.firemodes=cq elseif library.flags.DefaultFiremode=="Semi"then cp.firemodes=cr else cp.firemodes=cs end end;if library.flags.CustomFirerateOn then if type(cp.firerate)=="number"then cp.firerate=cp.firerate+library.flags.CustomFirerate end end;if library.flags.ReloadSpeedOn then local ct=cp.animations;if ct.tacticalreload then cp.animations.tacticalreload.resettime=library.flags.ReloadSpeed;cp.animations.tacticalreload.stdtimescale=library.flags.ReloadSpeed;cp.animations.tacticalreload.timescale=library.flags.ReloadSpeed elseif ct.reload then cp.animations.reload.resettime=library.flags.ReloadSpeed;cp.animations.reload.stdtimescale=library.flags.ReloadSpeed;cp.animations.reload.timescale=library.flags.ReloadSpeed elseif ct.pullbolt then cp.animations.pullbolt.stdtimescale=library.flags.ReloadSpeed;cp.animations.pullbolt.timescale=library.flags.ReloadSpeed;cp.animations.pullbolt.resettime=library.flags.ReloadSpeed end;if ct.pull then cp.animations.pull.resettime=0;cp.animations.pull.stdtimescale=0;cp.animations.pull.timescame=0 end end;if library.flags.RecoilOn then cp.rotkickmin=SolveVector3(cp.rotkickmin)cp.rotkickmax=SolveVector3(cp.rotkickmax)cp.transkickmin=SolveVector3(cp.transkickmin)cp.transkickmax=SolveVector3(cp.transkickmax)cp.camkickmin=SolveVector3(cp.camkickmin)cp.camkickmax=SolveVector3(cp.camkickmax)cp.aimrotkickmin=SolveVector3(cp.aimrotkickmin)cp.aimrotkickmax=SolveVector3(cp.aimrotkickmax)cp.aimtranskickmin=SolveVector3(cp.aimtranskickmin)cp.aimtranskickmax=SolveVector3(cp.aimtranskickmax)cp.aimcamkickmin=SolveVector3(cp.aimcamkickmin)cp.aimcamkickmax=SolveVector3(cp.aimcamkickmax)end;if library.flags.NoSpread then cp.hipfirespread=0;cp.hipfirestability=0;cp.hipfirespreadrecover=0 end;return cp end)local cu=debug.getupvalue(cm,58)debug.setupvalue(cm,58,function(...)if library.flags.NoGunBob then return CFrame.new()end;return cu(...)end)local cv=client.animation.player;client.animation.player=function(y,z)if client.char.alive and client.gamelogic.currentgun then if client.gamelogic.currentgun.type~="KNIFE"and library.flags.NoAnim then for m,n in pairs(client.gamelogic.currentgun.data.animations)do if z==n then return function()end end end end;if client.gamelogic.currentgun.type~="KNIFE"and library.flags.InstantThrow then for m,n in pairs(client.gamelogic.currentgun.data.animations)do if n~=z then return function()end end end end end;return cv(y,z)end;bI:Init()bI.settings.limitdistance=false;function bI:GetHealth(bN)return client.hud:getplayerhealth(bN)end;function bI:GetCharacter(bN)local ba=client.replication.getbodyparts(bN)return ba and ba.torso.Parent,ba and ba.torso end;function client:shoot()client.gamelogic.currentgun:shoot(true)wait(.01)client.gamelogic.currentgun:shoot(false)wait(60/client.gamelogic.currentgun.data.firerate)end;local cw=false;local cx=false;local cy=false;local cz=false;local cA=false;local cB=false;local cC=false;c.InputBegan:Connect(function(a7)if a7.KeyCode==Enum.KeyCode.W then cw=true elseif a7.KeyCode==Enum.KeyCode.A then cy=true elseif a7.KeyCode==Enum.KeyCode.D then cz=true elseif a7.KeyCode==Enum.KeyCode.S then cx=true elseif a7.KeyCode==Enum.KeyCode.Space then cB=true elseif a7.KeyCode==Enum.KeyCode.LeftControl then cA=true elseif a7.KeyCode==Enum.KeyCode.LeftShift then cC=true end end)c.InputEnded:Connect(function(a7)if a7.KeyCode==Enum.KeyCode.W then cw=false elseif a7.KeyCode==Enum.KeyCode.A then cy=false elseif a7.KeyCode==Enum.KeyCode.D then cz=false elseif a7.KeyCode==Enum.KeyCode.S then cx=false elseif a7.KeyCode==Enum.KeyCode.Space then cB=false elseif a7.KeyCode==Enum.KeyCode.LeftControl then cA=false elseif a7.KeyCode==Enum.KeyCode.LeftShift then cC=false end end)function client:GetTargetInfo(player)local cD;local cE=0;local cF;if client.gamelogic.currentgun and client.gamelogic.currentgun.barrel then cF=client.gamelogic.currentgun.barrel.Position end;if client.char.alive and client.gamelogic.currentgun and client.gamelogic.currentgun.barrel then gun=client.gamelogic.currentgun;local cG;if gun.type=="SNIPER"then cE=1 else if client.hud and client.hud.getplayerhealth and client.bodyparts[player]and client.bodyparts[player].head then health=client.hud:getplayerhealth(player)if gun.data and gun.data.damage0 then cG=gun.data.damage0;if health<cG then cE=1 else repeat cE=cE+1;cG=cG+cG;task.wait()until cG>health end end end end;if client.gamelogic.currentgun and client.gamelogic.currentgun.barrel then Position=client.char.rootpart.Position;local cH=9;local cI={Position,Position+Vector3.new(0,0,-cH),Position+Vector3.new(0,0,cH),Position+Vector3.new(0,cH,0),Position+Vector3.new(0,-cH,0),Position+Vector3.new(cH,0,0),Position+Vector3.new(-cH,0,0)}local cJ={}local bN=client.bodyparts[player]if bN and bN.head then if client.gamelogic.currentgun and client.gamelogic.currentgun.barrel then for al,n in pairs(cI)do check=client.bulletcheck(n,bN.head.Position,client:trajectory(n,Vector3.new(0,-workspace.Gravity,0),bN.head.Position,client.gamelogic.currentgun.data.bulletspeed),Vector3.new(0,-workspace.Gravity,0),client.gamelogic.currentgun.data.penetrationdepth)if check then cF=n;cD=true;return{ShotsToTake=cE,Killable=cD,firepos=cF}end end end end end end;return{ShotsToTake=1,Killable=cD,firepos=cF}end;client.playerhitdetection=nil;spawn(function()while true do b.Heartbeat:Wait()if library.flags.AutoShoot and client.char.alive and not client.roundsystem.lock then if client.gamelogic.currentgun and client.gamelogic.currentgun.type~="KNIFE"then local cK=client:GetTargetInfo(closest(true).Closest)if cK.Killable and client.gamelogic.currentgun.shoot and library.flags.AutoShootMethod=="Currentgun:shoot()"then client:shoot()elseif client.gamelogic.currentgun and client.gamelogic.currentgun.shoot and library.flags.AutoShootMethod=="Newbullets & bullethit"then for m,n in pairs(game.Players:GetPlayers())do if n.Team~=e.Team and n~=e and client:IsAlive(n)then cK=client:GetTargetInfo(n)if not cK.Killable then continue end;if cK.Killable then player=n;for y=1,cK.ShotsToTake do local Position;if library.flags.Resolver then Position=client.replication.getupdater(player).receivedPosition else Position=client.bodyparts[n].head.Position end;if Position==nil then Position=client.bodyparts[n].head.Position end;local cL=client:trajectory(cK.firepos,Vector3.new(0,-workspace.Gravity,0),Position,client.gamelogic.currentgun.data.bulletspeed)local cM={camerapos=client.char.rootpart.Position,firepos=cK.firepos,bullets={}}for m=1,client.gamelogic.currentgun.data.pelletcount or 1 do cM.bullets[m]={cL,c7}c7=c7+1 end;client.network:send("newbullets",cM,tick())local gun=client.gamelogic.currentgun;client.sound.PlaySoundId(gun.data.firesoundid,gun.data.firevolume,gun.data.firepitch,gun.barrel,nil,0.05)if library.flags.Particles and client.particle and client.particle.new then client.particle.new({acceleration=client.settings.bulletAcceleration,visualorigin=client.gamelogic.currentgun.barrel.Position,color=library.flags.ParticleColor or Color3.new(255,0,0),velocity=cL,penetrationdepth=client.gamelogic.currentgun.data.penetrationdepth,physicsignore={workspace.Players,workspace.Terrain,workspace.Ignore,client.camera.currentcamera},position=client.camera.cframe.p,brightness=library.flags.ParticleBrightness or 400,bloom=library.flags.Bloom or 0.005,size=0.05,life=library.flags.ParticleLifetime or 0.5,dt=0})end;for m=1,#cM.bullets do client.network:send("bullethit",player,Position,"Head",cM.bullets[m][2])end end;local cN=gun;local cO=debug.getupvalue(cN.reload,4)local cP=debug.getupvalue(cN.reload,5)-1;local cQ=debug.getupvalue(cN.reload,7)if cP<1 then cP=cO>cQ and cQ or cO;cO=cO-cP end;cN=client.gamelogic.currentgun;if type(cN.data.firerate)=='table'then firerate=cN.data.firerate[1]else firerate=cN.data.firerate end;debug.setupvalue(cN.reload,4,cO)debug.setupvalue(cN.reload,5,cP)client.hud:updateammo(cP,cO)task.wait(60/firerate)end end end end end end end end)function client:GetVelocity(co)if library.flags.OAA then if library.flags.OAAMethod=="Circular"then return co+Vector3.new(math.cos(tick()*library.flags.OAASpeed),0,math.sin(tick()*library.flags.OAASpeed))*library.flags.OAARadius elseif library.flags.OAAMethod=="Spring"then local tick=tick()local cR=library.flags.OAASpeed;return co+Vector3.new(math.sin(cR*math.modf(tick,pi))*math.cos(tick*cR),math.sin(cR*math.modf(tick,pi))*math.sin(tick*cR),math.cos(cR*math.modf(tick,pi))).Unit*library.flags.OAARadius elseif library.flags.OAAMethod=="Cubical"then elseif library.flags.OAAMethod=="Square"then end end;return co end;b:BindToRenderStep("OAA",1,function()if library.flags.OAA and client.char.alive and not library.flags.Fly then client.char.rootpart.Velocity=client:GetVelocity(Vector3.new())end end)b:BindToRenderStep("Miscellaneous",1,function()if library.flags.Fly and client.char.alive then local cS=library.flags.FlySpeed;if cC then cS=cS+100 end;if cw and not cy and not cz then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(f.CFrame.LookVector*cS)end;if cw and cy then local cT=(f.CFrame*CFrame.Angles(0,math.pi/2,0)).LookVector;client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity((cT+f.CFrame.LookVector).Unit*cS)end;if cy and not cw then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity((f.CFrame*CFrame.Angles(0,math.pi/2,0)).LookVector*cS)end;if cz and not cw then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(f.CFrame.RightVector*cS)end;if cz and cw then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity((f.CFrame.RightVector+f.CFrame.LookVector).Unit*cS)end;if cA then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(-f.CFrame.UpVector*cS)end;if cB then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(f.CFrame.UpVector*cS)end;if cx then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(-f.CFrame.LookVector*cS)end;if not cB and not cA and not cy and not cz and not cw and not cx then client.char.rootpart.Velocity=client:GetVelocity(Vector3.new())if library.flags.OAA then client.char.rootpart.Anchored=false;client.char.rootpart.Velocity=client:GetVelocity(Vector3.new())else client.char.rootpart.Anchored=true end end elseif not library.flags.Fly and client.char.alive and not library.flags.OAA then client.char.rootpart.Anchored=false end;if library.flags.FakeEquip and client.char.alive then local cU;if library.flags.FakeEquipListItem=="Primary"then cU=1 elseif library.flags.FakeEquipListItem=="Secondary"then cU=2 else cU=3 end;c5(client.network,"equip",cU)end;if SpaceDown and client.char.alive and library.flags.BunnyHop then client.char:jump(4)client.char:setbasewalkspeed(library.flags.BunnyHopSpeed)elseif not SpaceDown and client.char.alive then client.char:setbasewalkspeed(14)end;if library.flags.HitboxExpander then for m,n in pairs(a:GetPlayers())do if client:IsAlive(n)and client.bodyparts[n]and client.bodyparts[n].head and client.char.alive then local cV=client.bodyparts[n]local cW=library.flags.HitboxExpanderSize;cV.head.Size=Vector3.new(cW,cW,cW)cV.torso.Size=Vector3.new(cW,cW,cW)cV.lleg.Size=Vector3.new(cW,cW,cW)cV.rleg.Size=Vector3.new(cW,cW,cW)cV.larm.Size=Vector3.new(cW,cW,cW)cV.rarm.Size=Vector3.new(cW,cW,cW)end end end;if library.flags.KnifeAura and client.char.alive then if library.flags.KnifeHeld and client.gamelogic.currentgun~="KNIFE"then return end;for m,n in pairs(a:GetPlayers())do if n~=e and n.Team~=e.Team and client:IsAlive(n)then local bU=library.flags.KnifeAuraDistance;if client.bodyparts[n]and client.bodyparts[n].head then local c4=(e.Character.HumanoidRootPart.Position-client.bodyparts[n].head.Position).Magnitude;if c4<bU then c4=bU;c5(client.network,"equip",3)client.network:send("knifehit",client.replication.getplayerhit(client.bodyparts[n].head),tick(),"Head")client.network:send("equip",c6)end end end end end end)b:BindToRenderStep("FragUpdate",1,function()if library.flags.FragBot and client.char.alive then client.network:send("repupdate",client.char.rootpart.Position,Vector2.new(client.camera.angles.X,client.camera.angles.Y),tick())end end)local cX={physicsignore={workspace.Players,workspace.CurrentCamera,workspace.Ignore},raycast=workspace.FindPartOnRayWithIgnoreList,frame=CFrame.new(0,0,-9.9),cframe=CFrame.new(),vector=Vector3.new()}function newgrenade()local cY=closest(true)if cY.Closest and client.char.alive then local cZ=cY.Part.Position;local c_=client.camera.cframe;local d0=c_.Position;client.network:send("newgrenade","FRAG",{time=tick(),blowuptime=0,frames={{t0=0,p0=d0,v0=cX.vector,offset=cX.vector,rot0=c_-d0,rotv=(c_-d0)*Vector3.new(19.539,-5,0),glassbreaks={}},{t0=0,p0=cZ,v0=cX.vector,offset=cX.vector,rot0=cX.cframe,rotv=cX.vector,glassbreaks={}}}})end end;spawn(function()while task.wait()do if library.flags.FragBot then client.network:send("spawn")task.wait(.2)newgrenade()task.wait(.3)newgrenade()task.wait(.3)newgrenade()task.wait(.3)newgrenade()client.network:send("forcereset")end end end)loadknife=debug.getupvalue(client.loadmodules,7)knifebob=debug.getupvalue(loadknife,37)knifesway=debug.getupvalue(loadknife,38)debug.setupvalue(loadknife,37,function(...)if library.flags.NoKnifeBob then return CFrame.new()end;return knifebob(...)end)debug.setupvalue(loadknife,38,function(...)if library.flags.NoKnifeBob then return CFrame.new()end;return knifesway(...)end)local d1=debug.getupvalue(client.camera.step,11)debug.setupvalue(client.camera.step,11,function(...)if library.flags.NoCamSway then return CFrame.new()end;return d1(...)end)library.flags['Menu Accent Color']=Color3.fromRGB(255,180,20)client:Aimbot()client:Silent()library:Init()getgenv().Loaded=true
		local watermark_2 = Instance.new("ScreenGui")
		do
			local BKR = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")
			local Grad = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local ImageLabel = Instance.new("ImageLabel")
			local UIGradient_2 = Instance.new("UIGradient")

			watermark_2.Name = "watermark_2"
			watermark_2.Enabled = true
			watermark_2.Parent = game.CoreGui
			watermark_2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			BKR.Name = "BKR"
			BKR.Parent = watermark_2
			BKR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BKR.BorderColor3 = Color3.fromRGB(14, 29, 32)
			BKR.Position = UDim2.new(0, 52, 0, -28)
			BKR.Size = UDim2.new(0, 278, 0, 22)
			BKR.Font = Enum.Font.Ubuntu
			BKR.Text = ""
			BKR.TextColor3 = Color3.fromRGB(255, 255, 255)
			BKR.TextSize = 10.000
			BKR.TextStrokeTransparency = 0.000
			BKR.TextXAlignment = Enum.TextXAlignment.Left
			BKR.AutomaticSize = Enum.AutomaticSize.X

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
			UIGradient.Rotation = 90
			UIGradient.Parent = BKR

			Grad.Name = "Grad"
			Grad.Parent = BKR
			Grad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Grad.BorderSizePixel = 0
			Grad.Size = UDim2.new(0, 278, 0, 2)
			Grad.AutomaticSize = Enum.AutomaticSize.X

			TextLabel.Parent = Grad
			TextLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Position = UDim2.new(0.059, 0, 0, 0)
			TextLabel.Size = UDim2.new(0, 398,0, 22)
			TextLabel.Font = Enum.Font.Ubuntu
			TextLabel.Text = "Floppaware - Nigga Balls | User: dev  | 13:11:53 PM - Jan. 27, 2022  |   Version 0.5a [in-dev]  "
			TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextLabel.TextSize = 10.000
			TextLabel.TextStrokeTransparency = 0.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.AutomaticSize = Enum.AutomaticSize.X

			ImageLabel.Parent = Grad
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.Position = UDim2.new(0, 4, 2.79999995, 0)
			ImageLabel.Size = UDim2.new(0, 15, 0, 13)
			ImageLabel.Image = "rbxassetid://8653577097"

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
			UIGradient_2.Rotation = 90
			UIGradient_2.Parent = Grad

			local function SSYFZC_fake_script() -- TextLabel.LocalScript 
				local script = Instance.new('LocalScript', TextLabel)

				local text = script.Parent

				game:GetService("RunService").Heartbeat:Connect(function()
					text.Text = "Floppaware  -  Nigga Balls  |  User: dev  |  " ..os.date("%X",os.time()).. "  "  ..os.date("%p",os.time()).. "  -  " ..os.date("%b",os.time()).. ".  " ..os.date("%d",os.time()).. ",  " ..os.date("%Y",os.time())..  "  |  Version 0.5a [in-dev]  "
				end)

			end
			coroutine.wrap(SSYFZC_fake_script)()
			local function OHPOLK_fake_script() -- BKR.LocalScript 
				local script = Instance.new('LocalScript', BKR)

				local watermark = script.Parent
				watermark.Draggable = true
				watermark.Active = true
			end
			coroutine.wrap(OHPOLK_fake_script)()
		end
		wait(0.5)

		script.Parent.Parent:Destroy()
	end
	coroutine.wrap(UEWTPN_fake_script)()
	local function UHHQB_fake_script() -- slider.LocalScript 
		local script = Instance.new('LocalScript', slider)


		script.Parent:TweenSize(UDim2.new(0, 200,0, 40), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0, true)
		script.Parent.Frame:TweenSize(UDim2.new(0, 200,0, 40), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0, true)
		script.Parent.Frame.Frame:TweenSize(UDim2.new(0, 172,0, 10), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0, true)
		script.Parent.Frame.name:TweenSize(UDim2.new(0, 172,0, 10), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0, true)
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0, 0,0, 10), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0, true)
		wait(0.5)
		script.Parent:TweenSize(UDim2.new(0, 248,0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame:TweenSize(UDim2.new(0, 248,0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Frame:TweenSize(UDim2.new(0, 217,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.name:TweenSize(UDim2.new(0, 217,0, 14), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0, 0,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.8)
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0,57,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.name.Text = "Loading UI."
		wait(0.8)
		script.Parent.Frame.name.Text = "Waiting for game"
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0,97,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.8)
		script.Parent.Frame.name.Text = "Waiting for game hooks."
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0,135,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2, true)
		wait(0.5)
		script.Parent.Frame.name.Text = "Waiting for workspace."
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0,185,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.9, true)
		wait(1.4)
		script.Parent.Frame.name.Text = "Finishing Hooks."
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0,217,0, 13), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.9)
		script.Parent.Frame.name.Text = "Finished! Welcome to Floppaware!"
		wait(0.7)
		script.Parent:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Frame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.name:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		script.Parent.Frame.Frame.Frame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, true)
		wait(0.5)
		script.Parent.Parent.info.Visible = true
		script.Parent.Parent.slider.Visible = false



	end
	coroutine.wrap(UHHQB_fake_script)()

end

if game.PlaceId == 301549746 then -- cb
	print("CB Cheat")	
    getgenv().values = {}
	local library = {tabs = {};keybinds = {};}
	local Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
	local ConfigSave = Signal.new("ConfigSave") 
	local ConfigLoad = Signal.new("ConfigLoad") 

	local txt = game:GetService("TextService")
	local TweenService = game:GetService("TweenService")
	function library:Tween(...) TweenService:Create(...):Play() end 
	local cfglocation = "floppacfg/" 
	makefolder("floppacfg") 

	-- caching 
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

	function rgbtotbl(rgb) 
		return {R = rgb.R, G = rgb.G, B = rgb.B} 
	end 
	function tbltorgb(tbl) 
		return COL3(tbl.R, tbl.G, tbl.B) 
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
		local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg..".fpw")) 
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
		writefile(cfglocation..cfg..".fpw", game:GetService("HttpService"):JSONEncode(copy)) 
	end 

	function library:New(name) 
		local menu = {} 

		local floppa = INST("ScreenGui") 
		local Menu = INST("Frame") 
		local TextLabel = INST("TextLabel") 
		local TabButtons = INST("Frame") 
		local Holder = Instance.new("Frame")
		local UIListLayout = INST("UIListLayout") 
		local Tabs = INST("Frame") 
		local UIGradient = Instance.new("UIGradient")
		local Frame69 = Instance.new("Frame")

		Frame69.Parent = Menu
		Frame69.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Frame69.BorderColor3 = Color3.fromRGB(7, 0, 0)
		Frame69.Position = UDim2.new(0.00900004525, 0, 0.0589999892, 0)
		Frame69.Size = UDim2.new(0, 568, 0, 560)

		floppa.Name = "electric boogalo" 
		floppa.ResetOnSpawn = false 
		floppa.ZIndexBehavior = "Global" 
		floppa.DisplayOrder = 420133769 

		local UIScale = INST("UIScale") 
		UIScale.Parent = floppa 

		function menu:SetScale(scale) 
			UIScale.Scale = scale 
		end 

		local but = INST("TextButton") 
		but.Modal = true 
		but.Text = "" 
		but.BackgroundTransparency = 1 
		but.Parent = floppa 

		local cursor = INST("ImageLabel") 
		cursor.Name = "cursor" 	
		cursor.Parent = floppa 
		cursor.BackgroundTransparency = 1 
		cursor.Size = UDIM2(0,64,0,64) 
		cursor.Image = "rbxassetid://7543116323" 
		cursor.ZIndex = 1000 
		cursor.ImageColor3 = COL3RGB(255,255,255) 

		local Players = game:GetService("Players") 
		local LocalPlayer = Players.LocalPlayer 
		local Mouse = LocalPlayer:GetMouse() 

		game:GetService("RunService").RenderStepped:connect(function() 
			cursor.Visible = floppa.Enabled 
			cursor.Position = UDIM2(0,Mouse.X-32,0,Mouse.Y-28) 
		end) 

		Menu.Name = "Menu"
		Menu.Parent = floppa
		Menu.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Menu.BorderColor3 = Color3.fromRGB(7, 0, 0)
		Menu.Position = UDim2.new(0.5, -300, 0.5, -300)
		Menu.Size = UDim2.new(0, 578, 0, 600)

		TextLabel.Position = UDIM2(0, 18, 18, 16) 		

		library.uiopen = true 

		game:GetService("UserInputService").InputBegan:Connect(function(key) 
			if key.KeyCode == Enum.KeyCode.Insert then 
				floppa.Enabled = not floppa.Enabled 
				library.uiopen = floppa.Enabled 
			end 
		end) 

		local watermark_2 = Instance.new("ScreenGui")
		do
			local BKR = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")
			local Grad = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local ImageLabel = Instance.new("ImageLabel")
			local UIGradient_2 = Instance.new("UIGradient")

			watermark_2.Name = "watermark_2"
			watermark_2.Enabled = false
			watermark_2.Parent = game.CoreGui
			watermark_2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			BKR.Name = "BKR"
			BKR.Parent = watermark_2
			BKR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BKR.BorderColor3 = Color3.fromRGB(14, 29, 32)
			BKR.Position = UDim2.new(0, 52, 0, -28)
			BKR.Size = UDim2.new(0, 278, 0, 22)
			BKR.Font = Enum.Font.Ubuntu
			BKR.Text = ""
			BKR.TextColor3 = Color3.fromRGB(255, 255, 255)
			BKR.TextSize = 10.000
			BKR.TextStrokeTransparency = 0.000
			BKR.TextXAlignment = Enum.TextXAlignment.Left
			BKR.AutomaticSize = Enum.AutomaticSize.X

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
			UIGradient.Rotation = 90
			UIGradient.Parent = BKR

			Grad.Name = "Grad"
			Grad.Parent = BKR
			Grad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Grad.BorderSizePixel = 0
			Grad.Size = UDim2.new(0, 278, 0, 2)
			Grad.AutomaticSize = Enum.AutomaticSize.X

			TextLabel.Parent = Grad
			TextLabel.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Position = UDim2.new(0.059, 0, 0, 0)
			TextLabel.Size = UDim2.new(0, 398,0, 22)
			TextLabel.Font = Enum.Font.Ubuntu
			TextLabel.Text = "Floppaware - Nigga Balls | User: dev  | 13:11:53 PM - Jan. 27, 2022  |   Version 0.5a [in-dev]  "
			TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
			TextLabel.TextSize = 10.000
			TextLabel.TextStrokeTransparency = 0.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.AutomaticSize = Enum.AutomaticSize.X

			ImageLabel.Parent = Grad
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.Position = UDim2.new(0, 4, 2.79999995, 0)
			ImageLabel.Size = UDim2.new(0, 15, 0, 13)
			ImageLabel.Image = "rbxassetid://8653577097"

			UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
			UIGradient_2.Rotation = 90
			UIGradient_2.Parent = Grad

			local function SSYFZC_fake_script() -- TextLabel.LocalScript 
				local script = Instance.new('LocalScript', TextLabel)

				local text = script.Parent

				game:GetService("RunService").Heartbeat:Connect(function()
					text.Text = "Floppaware  -  Nigga Balls  |  User: dev  |  " ..os.date("%X",os.time()).. "  "  ..os.date("%p",os.time()).. "  -  " ..os.date("%b",os.time()).. ".  " ..os.date("%d",os.time()).. ",  " ..os.date("%Y",os.time())..  "  |  Version 0.5a [in-dev]  "
				end)

			end
			coroutine.wrap(SSYFZC_fake_script)()
			local function OHPOLK_fake_script() -- BKR.LocalScript 
				local script = Instance.new('LocalScript', BKR)

				local watermark = script.Parent
				watermark.Draggable = true
				watermark.Active = true
			end
			coroutine.wrap(OHPOLK_fake_script)()
		end




		local spectator = Instance.new("ScreenGui")
		do
			local BKR = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")
			local Grad = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Frame = Instance.new("Frame")
			local TextLabel_2 = Instance.new("TextLabel")

			spectator.Name = "spectator"
			spectator.Parent = game.CoreGui
			spectator.Enabled = false
			spectator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			BKR.Name = "BKR"
			BKR.Parent = spectator	
			BKR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BKR.BorderColor3 = Color3.fromRGB(18, 18, 16)
			BKR.Position = UDim2.new(0.171072543, 0, 0.437578738, 0)
			BKR.Size = UDim2.new(0, 62, 0, 22)
			BKR.Font = Enum.Font.Ubuntu
			BKR.Text = ""
			BKR.TextColor3 = Color3.fromRGB(255, 255, 255)
			BKR.TextSize = 10.000
			BKR.TextStrokeTransparency = 0.000
			BKR.AutomaticSize = Enum.AutomaticSize.X
			BKR.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
			UIGradient.Rotation = 90
			UIGradient.Parent = BKR

			Grad.Name = "Grad"
			Grad.Parent = BKR
			Grad.AutomaticSize = Enum.AutomaticSize.X
			Grad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Grad.BorderSizePixel = 0
			Grad.Size = UDim2.new(0, 62, 0, 2)

			local UIGradient2 = Instance.new("UIGradient")

			UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
			UIGradient2.Rotation = 90
			UIGradient2.Parent = Grad

			TextLabel.Parent = Grad
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Position = UDim2.new(0, 0, 1, 0)
			TextLabel.Size = UDim2.new(0, 62, 0, 19)
			TextLabel.Font = Enum.Font.Ubuntu
			TextLabel.Text = "   Spectators"
			TextLabel.AutomaticSize = Enum.AutomaticSize.X
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 10.000
			TextLabel.TextStrokeTransparency = 0.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			Frame.Parent = Grad
			Frame.BackgroundColor3 = Color3.fromRGB(12, 18, 24)
			Frame.BackgroundTransparency = 1.000
			Frame.BorderSizePixel = 0
			Frame.AutomaticSize = Enum.AutomaticSize.X
			Frame.Position = UDim2.new(0, 0, 9.90899658, 2)
			Frame.Size = UDim2.new(0, 62, 0, 260)

			TextLabel_2.Parent = Frame
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
			TextLabel_2.BorderColor3 = Color3.fromRGB(25, 24, 24)
			TextLabel_2.Size = UDim2.new(0, 110, 0, 22)
			TextLabel_2.Font = Enum.Font.Ubuntu
			TextLabel_2.Text = "   Test"
			TextLabel_2.AutomaticSize = Enum.AutomaticSize.XY
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.TextSize = 10.000
			TextLabel_2.TextStrokeTransparency = 0.000
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

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
				while wait(0.1) do
					if spectator.Enabled then
						TextLabel_2.Text = ""..GetSpectators()
					end
				end
			end)

			local function HRZRSZ_fake_script() -- BKR.LocalScript 
				local script = Instance.new('LocalScript', BKR)

				local watermark = script.Parent
				watermark.Draggable = true
				watermark.Active = true
			end
			coroutine.wrap(HRZRSZ_fake_script)()
		end

		local KeybindList = Instance.new("ScreenGui") 
		do 
			local BKR = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")
			local Grad = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Frame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local TextLabel_2 = Instance.new("TextLabel")

			KeybindList.Name = "KeybindList"
			KeybindList.ZIndexBehavior = Enum.ZIndexBehavior.Global 
			KeybindList.Enabled = false

			BKR.Name = "BKR"
			BKR.Parent = KeybindList
			BKR.AutomaticSize = Enum.AutomaticSize.X
			BKR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BKR.BorderColor3 = Color3.fromRGB(18, 18, 16)
			BKR.Position = UDim2.new(0, 0, 0.438, 0)
			BKR.Size = UDim2.new(0, 62, 0, 22)
			BKR.Font = Enum.Font.Ubuntu
			BKR.Text = ""
			BKR.TextColor3 = Color3.fromRGB(255, 255, 255)
			BKR.TextSize = 10.000
			BKR.TextStrokeTransparency = 0.000
			BKR.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
			UIGradient.Rotation = 90
			UIGradient.Parent = BKR

			Grad.Name = "Grad"
			Grad.Parent = BKR
			Grad.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Grad.BorderSizePixel = 0
			Grad.Size = UDim2.new(0, 62, 0, 2)
			Grad.AutomaticSize = Enum.AutomaticSize.X

			local UIGradient2 = Instance.new("UIGradient")

			UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
			UIGradient2.Rotation = 90
			UIGradient2.Parent = Grad

			TextLabel.Parent = Grad
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Position = UDim2.new(0, 0, 1, 0)
			TextLabel.Size = UDim2.new(0, 62, 0, 19)
			TextLabel.Font = Enum.Font.Ubuntu
			TextLabel.Text = "   Keybinds"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 10.000
			TextLabel.TextStrokeTransparency = 0.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel.AutomaticSize = Enum.AutomaticSize.X

			Frame.Parent = Grad
			Frame.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
			Frame.BorderColor3 = Color3.fromRGB(25, 24, 24)
			Frame.BackgroundTransparency = 0.000
			Frame.BorderSizePixel = 1
			Frame.Position = UDim2.new(0, 0, 9.90899658, 2)
			Frame.Size = UDim2.new(0, 62, 0, 0)
			Frame.AutomaticSize = Enum.AutomaticSize.XY

			UIListLayout.Parent = Frame
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			KeybindList.Parent = game.CoreGui

			local function TPBJJL_fake_script() -- Image.LocalScript 
				local script = Instance.new('LocalScript', BKR)

				local watermark = script.Parent
				watermark.Draggable = true
				watermark.Active = true
			end
			coroutine.wrap(TPBJJL_fake_script)()
		end

		function keybindadd(text)
			if not KeybindList.BKR.Grad.Frame:FindFirstChild(text) then
				local TextLabel = Instance.new("TextLabel")	
				TextLabel.Parent = KeybindList.BKR.Grad.Frame
				TextLabel.Name = text
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
				TextLabel.ZIndex = 2
				TextLabel.BorderColor3 = Color3.fromRGB(25, 24, 24)
				TextLabel.Size = UDim2.new(0, 62, 0, 22)
				TextLabel.Font = Enum.Font.Ubuntu
				TextLabel.Text = "   " ..text.. ":  Enabled   "
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 10.000
				TextLabel.TextStrokeTransparency = 0.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel.AutomaticSize = Enum.AutomaticSize.XY
			end
		end

		function keybindhold(text)
			if not KeybindList.BKR.Grad.Frame:FindFirstChild(text) then
				local TextLabel = Instance.new("TextLabel")
				TextLabel.Parent = KeybindList.BKR.Grad.Frame	
				TextLabel.Name = text
				TextLabel.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
				TextLabel.ZIndex = 2
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(25, 24, 24)
				TextLabel.Size = UDim2.new(0, 62, 0, 22)
				TextLabel.Font = Enum.Font.Ubuntu
				TextLabel.Text = "   " ..text.. ":  Held   "
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextSize = 10.000
				TextLabel.TextStrokeTransparency = 0.000
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel.AutomaticSize = Enum.AutomaticSize.XY
			end
		end



		function keybindremove(text)
			if KeybindList.BKR.Grad.Frame:FindFirstChild(text) then
				KeybindList.BKR.Grad.Frame:FindFirstChild(text):Destroy()
			end
		end

		function library:SetSpecVisible(LOL)
			spectator.Enabled = LOL
		end

		function library:SetKeybindVisible(Joe)
			KeybindList.Enabled = Joe
		end

		function library:SetWaterVisible(GG)
			watermark_2.Enabled = GG
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

		TextLabel.Parent = Holder
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0, 75, 0, 23)
		TextLabel.Font = Enum.Font.Ubuntu
		TextLabel.Position = UDim2.new(0, 0, 0, 0)
		TextLabel.Text = "Floppaware"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 12.000
		TextLabel.TextStrokeTransparency = 0.000

		Holder.Name = "Holder"
		Holder.Parent = Menu
		Holder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Holder.BorderColor3 = Color3.fromRGB(7, 0, 0)
		Holder.Position = UDim2.new(0, 5, 0, 5)
		Holder.Size = UDim2.new(0, 569, 0, 25)

		TabButtons.Name = "TabButtons"
		TabButtons.Parent = Holder
		TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtons.BackgroundTransparency = 1.000
		TabButtons.Position = UDim2.new(0.131810188, 0, 0, 0)
		TabButtons.Size = UDim2.new(0, 494, 0, 25)

		UIListLayout.Parent = TabButtons
		UIListLayout.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		Tabs.Name = "Tabs" 
		Tabs.Parent = Menu 
		Tabs.BackgroundColor3 = COL3RGB(46, 46, 46) 
		Tabs.BackgroundTransparency = 1.000 
		Tabs.Position = UDIM2(0, -10, 0, 28) 
		Tabs.Size = UDIM2(0, 600, 0, 560) 
		
		setreadonly(Instance, false)

		local oldNewInstance = Instance.new

		Instance.new = function(...)
    
		local args = {...}

		if args[1] == "Floppaware" then -- changeable
			return library
		end

			return oldNewInstance(...)
		end

		setreadonly(Instance, true)
		
		local first = true 
		local currenttab 

		function menu:Tab(text) 
			local tabname 
			tabname = text 
			local Tab = {} 
			values[tabname] = {} 

			local TextButton = Instance.new("TextButton")
			TextButton.Parent = TabButtons
			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.BackgroundTransparency = 1.000
			TextButton.Size = UDim2.new(0, 60, 0, 23)
			TextButton.Font = Enum.Font.Ubuntu
			TextButton.Text = text
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 12.000
			TextButton.TextStrokeTransparency = 0.000

			local Gard = Instance.new("Frame")
		
			Gard.Name = "Gard"
			Gard.Parent = TextButton
			Gard.BackgroundColor3 = Color3.fromRGB(172, 208, 255)
			Gard.BorderSizePixel = 0
			Gard.Position = UDim2.new(0, 0, 1, 0)
			Gard.Size = UDim2.new(0, 60, 0, 1)



			local TabGui = INST("ScrollingFrame") 
			local Left = INST("Frame") 
			local UIListLayout = INST("UIListLayout") 
			local Right = INST("Frame") 
			local UIListLayout_2 = INST("UIListLayout") 

			TabGui.Name = "TabGui" 
			TabGui.Parent = Tabs 
			TabGui.BackgroundColor3 = COL3RGB(255, 255, 255) 
			TabGui.BackgroundTransparency = 1.000 
			TabGui.Size = UDIM2(1, 0, 1, 0) 
			TabGui.Visible = false 
			TabGui.ScrollBarThickness = 0

			Left.Name = "Left" 
			Left.Parent = TabGui 
			Left.BackgroundColor3 = COL3RGB(255, 255, 255) 
			Left.BackgroundTransparency = 1.000 
			Left.Position = UDIM2(0, 15, 0, 11) 
			Left.Size = UDIM2(0, 279, 0, 543) 

			UIListLayout.Parent = Left 
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
			UIListLayout.Padding = UDim.new(0, 10) 

			Right.Name = "Right" 
			Right.Parent = TabGui 
			Right.BackgroundColor3 = COL3RGB(255, 255, 255) 
			Right.BackgroundTransparency = 1.000 
			Right.Position = UDIM2(0, 303, 0, 11) 
			Right.Size = UDIM2(0, 279, 0, 543) 

			UIListLayout_2.Parent = Right 
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center 
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder 
			UIListLayout_2.Padding = UDim.new(0, 10) 

			if first then 
				TextButton.TextColor3 = COL3RGB(255, 255, 255)
				currenttab = text 
				TabGui.Visible = true 
				first = false 
			end 


			TextButton.MouseButton1Down:Connect(function() 
				if currenttab ~= text then 
					for i,v in pairs(TabButtons:GetChildren()) do 
						if v:IsA("TextButton") then 
							library:Tween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(170, 170, 170)}) 
							library:Tween(v.Gard, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}) 
						end 
					end 
					for i,v in pairs(Tabs:GetChildren()) do 
						v.Visible = false 
					end 
					library:Tween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(255, 255, 255)}) 
					library:Tween(Gard, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0})
					currenttab = text 
					TabGui.Visible = true 
				end 
			end) 

			function Tab:MSector(text, side) 
				local sectorname = text 
				local MSector = {} 
				values[tabname][text] = {} 

					
		
				local Section = INST("Frame") 
				local SectionText = INST("TextLabel") 
				local Inner = INST("Frame") 
				local sectiontabs = INST("Frame") 
				local UIListLayout_2 = INST("UIListLayout")

				Section.Name = "Section" 
				Section.Parent = TabGui[side] 
				Section.BackgroundColor3 = COL3RGB(46, 46, 46) 
				Section.BackgroundTransparency = 1.000				
				Section.BorderColor3 = COL3RGB(18, 18, 16) 
				Section.BorderSizePixel = 0 
				Section.Size = UDIM2(1, 0, 0, 33) 

				SectionText.Name = "SectionText" 
				SectionText.Parent = Section 
				SectionText.BackgroundColor3 = COL3RGB(255, 255, 255) 
				SectionText.BackgroundTransparency = 1.000 
				SectionText.Position = UDIM2(0, 0, 0, -10) 
				SectionText.Size = UDIM2(0, 279, 0, 19) 
				SectionText.ZIndex = 2 
				SectionText.Font = Enum.Font.Ubuntu
				SectionText.TextStrokeTransparency = 0.000
				SectionText.Text = text 
				SectionText.TextColor3 = COL3RGB(255, 255, 255) 
				SectionText.TextSize = 11.000
				SectionText.TextXAlignment = Enum.TextXAlignment.Center 

				Inner.Name = "Inner" 
				Inner.Parent = Section 
				Inner.BackgroundColor3 = COL3RGB(30, 30, 30) 
				Inner.BackgroundTransparency = 0.000 
				Inner.BorderColor3 = COL3RGB(7, 0, 0) 
				Inner.BorderSizePixel = 1
				Inner.Position = UDIM2(0, 1, 0, 1) 
				Inner.Size = UDIM2(1, -2, 1, -9) 

				sectiontabs.Name = "sectiontabs" 
				sectiontabs.Parent = Section 
				sectiontabs.BackgroundColor3 = COL3RGB(255, 255, 255) 
				sectiontabs.BackgroundTransparency = 1.000 
				sectiontabs.Position = UDIM2(0, 0, 0, 6) 
				sectiontabs.Size = UDIM2(1, 0, 0, 22) 

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

					local tabsize = UDIM2(1, 0, 0, 44) 

					local tab1 = INST("Frame") 
					local UIPadding = INST("UIPadding") 
					local UIListLayout = INST("UIListLayout") 
					local TextButton = INST("TextButton") 

					tab1.Name = text 
					tab1.Parent = Inner 
					tab1.BackgroundColor3 = COL3RGB(46, 46, 46) 
					tab1.BorderColor3 = COL3RGB(18, 18, 16) 
					tab1.BorderSizePixel = 0 
					tab1.BackgroundTransparency = 1.000 
					tab1.Position = UDIM2(0, 0, 0, 30) 
					tab1.Size = UDIM2(1, 0, 1, -21) 
					tab1.Name = text 
					tab1.Visible = false 

					UIPadding.Parent = tab1 
					UIPadding.PaddingTop = UDim.new(0, 0) 

					UIListLayout.Parent = tab1 
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
					UIListLayout.Padding = UDim.new(0, 0) 

					TextButton.Parent = sectiontabs 
					TextButton.BackgroundColor3 = COL3RGB(23, 23, 23) 
					TextButton.BorderColor3 = COL3RGB(23, 23, 23) 
					TextButton.BackgroundTransparency = 1.000 
					TextButton.Size = UDIM2(0, txt:GetTextSize(text, 14, Enum.Font.Ubuntu, Vec2(700,700)).X + 0, 1, 0) 
					TextButton.Font = Enum.Font.Ubuntu
					TextButton.Text = text 
					TextButton.TextStrokeTransparency = 0.000
					TextButton.TextColor3 = COL3RGB(255, 255, 255) 
					TextButton.TextSize = 10.000
					TextButton.Name = text 

					TextButton.MouseButton1Down:Connect(function()
						for i,v in pairs(Inner:GetChildren()) do
							v.Visible = false
						end
						for i,v in pairs(sectiontabs:GetChildren()) do
							if v:IsA('TextButton') then
								library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							end
						end
						Section.Size = tabsize
						tab1.Visible = true
						library:Tween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(172, 208, 255)})
					end)

					function tab:Element(type, text, data, callback) 
						local Element = {} 
						data = data or {} 
						callback = callback or function() end 
						values[tabname][sectorname][tabtext][text] = {} 

						if type == "Jumbobox" then 
							tabsize = tabsize + UDIM2(0,0,0, 39) 
							Element.value = {Jumbobox = {}} 
							data.options = data.options or {} 

							local Dropdown = INST("Frame") 
							local Button = INST("TextButton") 
							local TextLabel = INST("TextLabel") 
							local Drop = INST("ScrollingFrame") 
							local Button_2 = INST("TextButton") 
							local TextLabel_2 = INST("TextLabel") 
							local UIListLayout = INST("UIListLayout") 
							local ImageLabel = INST("ImageLabel") 
							local TextLabel_3 = INST("TextLabel") 

							Dropdown.Name = "Dropdown" 
							Dropdown.Parent = tab1 
							Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Dropdown.BackgroundTransparency = 1.000 
							Dropdown.Position = UDIM2(0, 0, 0.255102038, 0) 
							Dropdown.Size = UDIM2(1, 0, 0, 39) 

							Button.Name = "Button" 
							Button.Parent = Dropdown 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BorderColor3 = COL3RGB(18, 18, 16) 
							Button.Position = UDIM2(0, 30, 0, 16) 
							Button.Size = UDIM2(0, 175, 0, 17) 
							Button.AutoButtonColor = false 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(255, 255, 255) 
							Button.TextSize = 10.000

							local UIGradient = Instance.new("UIGradient")			

							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
							UIGradient.Rotation = 90
							UIGradient.Parent = Button

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
							TextLabel.Position = UDIM2(0, 5, 0, 0) 
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = "-" 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local abcd = TextLabel 

							Drop.Name = "Drop" 
							Drop.Parent = Button 
							Drop.Active = true 
							Drop.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Drop.BorderColor3 = COL3RGB(18, 18, 16) 
							Drop.Position = UDIM2(0, 0, 1, 1) 
							Drop.Size = UDIM2(1, 0, 0, 20) 
							Drop.Visible = false 
							Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.CanvasSize = UDIM2(1, 1, 1, 1) 
							Drop.ScrollBarThickness = 0
							Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.AutomaticCanvasSize = "Y" 
							Drop.ZIndex = 5 
							Drop.ScrollBarImageColor3 = COL3RGB(172, 208, 255) 

							UIListLayout.Parent = Drop 
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 

							values[tabname][sectorname][tabtext][text] = Element.value 
							local num = #data.options 
							if num > 5 then 
								Drop.Size = UDIM2(1, 0, 0, 85) 
							else 
								Drop.Size = UDIM2(1, 0, 0, 17*num) 
							end 
							local first = true 

							local function updatetext() 
								local old = {} 
								for i,v in ipairs(data.options) do 
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
									local Button = INST("TextButton") 
									local TextLabel = INST("TextLabel") 

									Button.Name = v 
									Button.Parent = Drop 
									Button.BackgroundColor3 = COL3RGB(46, 46, 46) 
									Button.BorderColor3 = COL3RGB(18, 18, 16) 
									Button.Position = UDIM2(0, 30, 0, 16) 
									Button.Size = UDIM2(0, 175, 0, 17) 
									Button.AutoButtonColor = false 
									Button.Font = Enum.Font.Ubuntu
									Button.Text = "" 
									Button.TextColor3 = COL3RGB(255, 255, 255) 
									Button.TextSize = 10.000
									Button.BorderSizePixel = 0 
									Button.ZIndex = 6 

									TextLabel.Parent = Button 
									TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
									TextLabel.BackgroundTransparency = 1.000 
									TextLabel.BorderColor3 = COL3RGB(25, 25, 25) 
									TextLabel.Position = UDIM2(0, 5, 0, -1) 
									TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
									TextLabel.Font = Enum.Font.Ubuntu
									TextLabel.Text = v 
									TextLabel.TextStrokeTransparency = 0.000
									TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
									TextLabel.TextSize = 10.000
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
									TextLabel.ZIndex = 6 

									Button.MouseButton1Down:Connect(function() 
										if TBLFIND(Element.value.Jumbobox, v) then 
											for i,a in pairs(Element.value.Jumbobox) do 
												if a == v then 
													TBLREMOVE(Element.value.Jumbobox, i) 
												end 
											end 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
										else 
											INSERT(Element.value.Jumbobox, v) 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
										end 
										updatetext() 

										values[tabname][sectorname][tabtext][text] = Element.value 
										callback(Element.value) 
									end) 
									Button.MouseEnter:Connect(function() 
										if not TBLFIND(Element.value.Jumbobox, v) then 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
										end 
									end) 
									Button.MouseLeave:Connect(function() 
										if not TBLFIND(Element.value.Jumbobox, v) then 
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
										end 
									end) 

									first = false 
								end 
							end 
							function Element:SetValue(val) 
								Element.value = val 
								for i,v in pairs(Drop:GetChildren()) do 
									if v.Name ~= "UIListLayout" then 
										if TBLFIND(val.Jumbobox, v.Name) then 
											v.TextLabel.TextColor3 = COL3RGB(172, 208, 255)
										else 
											v.TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
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
							ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							ImageLabel.BackgroundTransparency = 1.000 
							ImageLabel.Position = UDIM2(0, 165, 0, 6) 
							ImageLabel.Size = UDIM2(0, 6, 0, 4) 
							ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531" 

							TextLabel_3.Parent = Dropdown 
							TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel_3.BackgroundTransparency = 1.000 
							TextLabel_3.Position = UDIM2(0, 32, 0, -1) 
							TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0) 
							TextLabel_3.Font = Enum.Font.Ubuntu
							TextLabel_3.Text = text
							TextLabel_3.TextStrokeTransparency = 0.000									
							TextLabel_3.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel_3.TextSize = 10.000
							TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left 

							Button.MouseButton1Down:Connect(function() 
								Drop.Visible = not Drop.Visible 
								if not Drop.Visible then 
									Drop.CanvasPosition = Vec2(0,0) 
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
										Drop.CanvasPosition = Vec2(0,0) 
									end 
								end 
							end) 
						elseif type == "TextBox" then 

						elseif type == "ToggleKeybind" then 
							tabsize = tabsize + UDIM2(0,0,0,16) 
							Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true} 

							local Toggle = INST("Frame") 
							local Button = INST("TextButton") 
							local Color = INST("Frame") 
							local TextLabel = INST("TextLabel") 

							Toggle.Name = "Toggle" 
							Toggle.Parent = tab1 
							Toggle.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Toggle.BackgroundTransparency = 1.000 
							Toggle.Size = UDIM2(1, 0, 0, 15) 

							Button.Name = "Button" 
							Button.Parent = Toggle 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BackgroundTransparency = 1.000 
							Button.Size = UDIM2(1, 0, 1, 0) 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							Color.Name = "Color" 
							Color.Parent = Button 
							Color.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Color.BorderColor3 = COL3RGB(18, 18, 16)  
							Color.Position = UDIM2(0, 15, 0.5, -5) 
							Color.Size = UDIM2(0, 8, 0, 8) 

							local binding = false 
							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.Position = UDIM2(0, 32, 0, -1) 
							TextLabel.Size = UDIM2(0.111913361, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local function update() 
								if Element.value.Toggle then 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
								else 
									keybindremove(text) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
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
								local Keybind = INST("TextButton") 
								local Frame = INST("Frame") 
								local Always = INST("TextButton") 
								local UIListLayout = INST("UIListLayout") 
								local Hold = INST("TextButton") 
								local Toggle = INST("TextButton") 

								Keybind.Name = "Keybind" 
								Keybind.Parent = Button 
								Keybind.BackgroundColor3 = COL3RGB(31, 31, 31) 
								Keybind.BorderColor3 = COL3RGB(18, 18, 16) 
								Keybind.Position = UDIM2(0, 270, 0.5, -6) 
								Keybind.Text = "none" 
								Keybind.BackgroundTransparency = 0.000
								Keybind.Size = UDIM2(0, 43, 0, 12) 
								Keybind.Size = UDIM2(0,txt:GetTextSize("none", 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 5,0, 12) 
								Keybind.AutoButtonColor = false 
								Keybind.Font = Enum.Font.Ubuntu
								Keybind.TextColor3 = COL3RGB(255, 255, 255) 
								Keybind.TextSize = 10.000
								Keybind.AnchorPoint = Vec2(1,0) 
								Keybind.ZIndex = 3 

								Frame.Parent = Keybind 
								Frame.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Frame.BorderColor3 = COL3RGB(18, 18, 16) 
								Frame.Position = UDIM2(1, -49, 0, 1) 
								Frame.Size = UDIM2(0, 49, 0, 49) 
								Frame.Visible = false 
								Frame.ZIndex = 3 

								Always.Name = "Always" 
								Always.Parent = Frame 
								Always.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Always.BackgroundTransparency = 1.000 
								Always.BorderColor3 = COL3RGB(18, 18, 16) 
								Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6) 
								Always.Size = UDIM2(1, 0, 0, 16) 
								Always.AutoButtonColor = false 
								Always.Font = Enum.Font.Ubuntu
								Always.Text = "Always" 
								Always.TextStrokeTransparency = 0.000
								Always.TextColor3 = COL3RGB(172, 208, 255)
								Always.TextSize = 10.000
								Always.ZIndex = 3 

								UIListLayout.Parent = Frame 
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 

								Hold.Name = "Hold" 
								Hold.Parent = Frame 
								Hold.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Hold.BackgroundTransparency = 1.000 
								Hold.BorderColor3 = COL3RGB(18, 18, 16) 
								Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6) 
								Hold.Size = UDIM2(1, 0, 0, 16)
								Hold.TextStrokeTransparency = 0.000										
								Hold.AutoButtonColor = false 
								Hold.Font = Enum.Font.Ubuntu
								Hold.Text = "Hold" 
								Hold.TextColor3 = COL3RGB(255, 255, 255) 
								Hold.TextSize = 10.000
								Hold.ZIndex = 3 

								Toggle.Name = "Toggle" 
								Toggle.Parent = Frame 
								Toggle.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Toggle.BackgroundTransparency = 1.000 
								Toggle.BorderColor3 = COL3RGB(18, 18, 16) 
								Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6) 
								Toggle.Size = UDIM2(1, 0, 0, 16) 
								Toggle.AutoButtonColor = false 
								Toggle.Font = Enum.Font.Ubuntu
								Toggle.Text = "Toggle" 
								Toggle.TextStrokeTransparency = 0.000
								Toggle.TextColor3 = COL3RGB(255, 255, 255) 
								Toggle.TextSize = 10.000
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
													button.Font = Enum.Font.Ubuntu
													library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
												end 
											end 
											button.Font = Enum.Font.Ubuntu
											button.TextColor3 = COL3RGB(172, 208, 255) 
											values[tabname][sectorname][tabtext][text] = Element.value 
											callback(Element.value) 
										end) 
										button.MouseEnter:Connect(function() 
											if Element.value.Type ~= button.Text then 
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
											end 
										end) 
										button.MouseLeave:Connect(function() 
											if Element.value.Type ~= button.Text then 
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255,255,255)}) 
											end 
										end) 
									end 
								end 
								Keybind.MouseButton1Down:Connect(function() 
									if not binding then 
										wait() 
										binding = true 
										Keybind.Text = "-" 
										Keybind.Size = UDIM2(0,txt:GetTextSize("-", 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 4,0, 12) 
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
										Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 5,0, 12) 
										Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name 
										if input.KeyCode.Name == "Backspace" then 
											Keybind.Text = "none" 
											Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 4,0, 12) 
											Element.value.Key = nil 
										end 
									else 
										if Element.value.Key ~= nil then 
											if FIND(Element.value.Key, "Mouse") then 
												if input.UserInputType == Enum.UserInputType[Element.value.Key] then 
													if Element.value.Type == "Hold" then 
														Element.value.Active = true 
														if Element.value.Active and Element.value.Toggle then 
															keybindhold(text) 
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
															keybindhold(text) 
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
										if FIND(Element.value.Key, "Mouse") then 
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
														keybindhold(text) 
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
							tabsize = tabsize + UDIM2(0,0,0,16) 
							Element.value = {Toggle = data.default and data.default.Toggle or false} 

							local Toggle = INST("Frame") 
							local Button = INST("TextButton") 
							local Color = INST("Frame") 
							local TextLabel = INST("TextLabel") 

							Toggle.Name = "Toggle" 
							Toggle.Parent = tab1 
							Toggle.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Toggle.BackgroundTransparency = 1.000 
							Toggle.Size = UDIM2(1, 0, 0, 15) 

							Button.Name = "Button" 
							Button.Parent = Toggle 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BackgroundTransparency = 1.000 
							Button.Size = UDIM2(1, 0, 1, 0) 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							Color.Name = "Color" 
							Color.Parent = Button 
							Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Color.BorderColor3 = COL3RGB(18, 18, 16) 
							Color.Position = UDIM2(0, 15, 0.5, -5) 
							Color.Size = UDIM2(0, 8, 0, 8) 

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.Position = UDIM2(0, 32, 0, -1) 
							TextLabel.Size = UDIM2(0.111913361, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local function update() 
								if Element.value.Toggle then 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
								else 
									keybindremove(text) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
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
							tabsize = tabsize + UDIM2(0,0,0,16) 
							Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)} 

							local Toggle = INST("Frame") 
							local Button = INST("TextButton") 
							local Color = INST("Frame") 
							local TextLabel = INST("TextLabel") 

							Toggle.Name = "Toggle" 
							Toggle.Parent = tab1 
							Toggle.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Toggle.BackgroundTransparency = 1.000 
							Toggle.Size = UDIM2(1, 0, 0, 15) 

							Button.Name = "Button" 
							Button.Parent = Toggle 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BackgroundTransparency = 1.000 
							Button.Size = UDIM2(1, 0, 1, 0) 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							Color.Name = "Color" 
							Color.Parent = Button 
							Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Color.BorderColor3 = COL3RGB(18, 18, 16)  
							Color.Position = UDIM2(0, 15, 0.5, -5) 
							Color.Size = UDIM2(0, 8, 0, 8) 

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.Position = UDIM2(0, 32, 0, -1) 
							TextLabel.Size = UDIM2(0.111913361, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local function update() 
								if Element.value.Toggle then 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
								else 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
								end 
								values[tabname][sectorname][tabtext][text] = Element.value 
								callback(Element.value) 
							end 

							local ColorH,ColorS,ColorV 

							local ColorP = INST("TextButton") 
							local Frame = INST("Frame") 
							local Colorpick = INST("ImageButton") 
							local ColorDrag = INST("Frame") 
							local Huepick = INST("ImageButton") 
							local Huedrag = INST("Frame") 

							ColorP.Name = "ColorP" 
							ColorP.Parent = Button 
							ColorP.AnchorPoint = Vec2(1, 0) 
							ColorP.BackgroundColor3 = COL3RGB(255, 0, 0) 
							ColorP.BorderColor3 = COL3RGB(18, 18, 16) 
							ColorP.Position = UDIM2(0, 270, 0.5, -4) 
							ColorP.Size = UDIM2(0, 18, 0, 8) 
							ColorP.AutoButtonColor = false 
							ColorP.Font = Enum.Font.Ubuntu
							ColorP.Text = "" 
							ColorP.TextColor3 = COL3RGB(255, 255, 255) 
							ColorP.TextSize = 10.000

							Frame.Parent = ColorP 
							Frame.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Frame.BorderColor3 = COL3RGB(18, 18, 16) 
							Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0) 
							Frame.Size = UDIM2(0, 200, 0, 170) 
							Frame.Visible = false 
							Frame.ZIndex = 3 

							Colorpick.Name = "Colorpick" 
							Colorpick.Parent = Frame 
							Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Colorpick.BorderColor3 = COL3RGB(18, 18, 16) 
							Colorpick.ClipsDescendants = false 
							Colorpick.Position = UDIM2(0, 40, 0, 10) 
							Colorpick.Size = UDIM2(0, 150, 0, 150) 
							Colorpick.AutoButtonColor = false 
							Colorpick.Image = "rbxassetid://4155801252" 
							Colorpick.ImageColor3 = COL3RGB(255, 0, 0) 
							Colorpick.ZIndex = 3 

							ColorDrag.Name = "ColorDrag" 
							ColorDrag.Parent = Colorpick 
							ColorDrag.AnchorPoint = Vec2(0.5, 0.5) 
							ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255) 
							ColorDrag.BorderColor3 = COL3RGB(18, 18, 16) 
							ColorDrag.Size = UDIM2(0, 4, 0, 4) 
							ColorDrag.ZIndex = 3 

							Huepick.Name = "Huepick" 
							Huepick.Parent = Frame 
							Huepick.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Huepick.BorderColor3 = COL3RGB(18, 18, 16) 
							Huepick.ClipsDescendants = false 
							Huepick.Position = UDIM2(0, 10, 0, 10) 
							Huepick.Size = UDIM2(0, 20, 0, 150) 
							Huepick.AutoButtonColor = false 
							Huepick.Image = "rbxassetid://3641079629" 
							Huepick.ImageColor3 = COL3RGB(255, 0, 0) 
							Huepick.ImageTransparency = 1 
							Huepick.BackgroundTransparency = 0 
							Huepick.ZIndex = 3 

							local HueFrameGradient = INST("UIGradient") 
							HueFrameGradient.Rotation = 90 
							HueFrameGradient.Name = "HueFrameGradient" 
							HueFrameGradient.Parent = Huepick 
							HueFrameGradient.Color = ColorSequence.new { 
								ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)), 
								ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)), 
								ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)), 
								ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)), 
								ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)), 
								ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)), 
								ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0)) 
							}	 

							Huedrag.Name = "Huedrag" 
							Huedrag.Parent = Huepick 
							Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Huedrag.BorderColor3 = COL3RGB(18, 18, 16) 
							Huedrag.Size = UDIM2(1, 0, 0, 2) 
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

							ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y) 
							ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X) 
							ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y) 

							if data.default.Color ~= nil then 
								ColorH, ColorS, ColorV = data.default.Color:ToHSV() 

								ColorH = CLAMP(ColorH,0,1) 
								ColorS = CLAMP(ColorS,0,1) 
								ColorV = CLAMP(ColorV,0,1) 
								ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0) 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 

								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1) 
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
								local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X) 
								local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y) 
								ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0) 
								ColorS = 1-ColorX 
								ColorV = 1-ColorY 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								values[tabname][sectorname][tabtext][text] = Element.value 
								Element.value.Color = COL3HSV(ColorH, ColorS, ColorV) 
								callback(Element.value) 
							end 
							local function updateHue() 
								local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148) 
								Huedrag.Position = UDIM2(0, 0, 0, y) 
								hue = y/148 
								ColorH = 1-hue 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								values[tabname][sectorname][tabtext][text] = Element.value 
								Element.value.Color = COL3HSV(ColorH, ColorS, ColorV) 
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
								local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B) 
								ColorH, ColorS, ColorV = duplicate:ToHSV() 
								ColorH = CLAMP(ColorH,0,1) 
								ColorS = CLAMP(ColorS,0,1) 
								ColorV = CLAMP(ColorV,0,1) 

								ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0) 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								update() 
								Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1) 
							end 
						elseif type == "ToggleTrans" then 
							tabsize = tabsize + UDIM2(0,0,0,16) 
							Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0} 

							local Toggle = INST("Frame") 
							local Button = INST("TextButton") 
							local Color = INST("Frame") 
							local TextLabel = INST("TextLabel") 

							Toggle.Name = "Toggle" 
							Toggle.Parent = tab1 
							Toggle.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Toggle.BackgroundTransparency = 1.000 
							Toggle.Size = UDIM2(1, 0, 0, 15) 

							Button.Name = "Button" 
							Button.Parent = Toggle 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BackgroundTransparency = 1.000 
							Button.Size = UDIM2(1, 0, 1, 0) 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							Color.Name = "Color" 
							Color.Parent = Button 
							Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Color.BorderColor3 = COL3RGB(18, 18, 16) 
							Color.Position = UDIM2(0, 15, 0.5, -5) 
							Color.Size = UDIM2(0, 8, 0, 8) 

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.Position = UDIM2(0, 32, 0, -1) 
							TextLabel.Size = UDIM2(0.111913361, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local function update() 
								if Element.value.Toggle then 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
								else 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)}) 
									tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
								end 
								values[tabname][sectorname][tabtext][text] = Element.value 
								callback(Element.value) 
							end 

							local ColorH,ColorS,ColorV 

							local ColorP = INST("TextButton") 
							local Frame = INST("Frame") 
							local Colorpick = INST("ImageButton") 
							local ColorDrag = INST("Frame") 
							local Huepick = INST("ImageButton") 
							local Huedrag = INST("Frame") 

							ColorP.Name = "ColorP" 
							ColorP.Parent = Button 
							ColorP.AnchorPoint = Vec2(1, 0) 
							ColorP.BackgroundColor3 = COL3RGB(255, 0, 0) 
							ColorP.BorderColor3 = COL3RGB(18, 18, 16) 
							ColorP.Position = UDIM2(0, 270, 0.5, -4) 
							ColorP.Size = UDIM2(0, 18, 0, 8) 
							ColorP.AutoButtonColor = false 
							ColorP.Font = Enum.Font.Ubuntu
							ColorP.Text = "" 
							ColorP.TextColor3 = COL3RGB(255, 255, 255) 
							ColorP.TextSize = 10.000

							Frame.Parent = ColorP 
							Frame.BackgroundColor3 = COL3RGB(46, 46, 46) 
							Frame.BorderColor3 = COL3RGB(18, 18, 16) 
							Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0) 
							Frame.Size = UDIM2(0, 200, 0, 190) 
							Frame.Visible = false 
							Frame.ZIndex = 3 

							Colorpick.Name = "Colorpick" 
							Colorpick.Parent = Frame 
							Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Colorpick.BorderColor3 = COL3RGB(18, 18, 16) 
							Colorpick.ClipsDescendants = false 
							Colorpick.Position = UDIM2(0, 40, 0, 10) 
							Colorpick.Size = UDIM2(0, 150, 0, 150) 
							Colorpick.AutoButtonColor = false 
							Colorpick.Image = "rbxassetid://4155801252" 
							Colorpick.ImageColor3 = COL3RGB(255, 0, 0) 
							Colorpick.ZIndex = 3 

							ColorDrag.Name = "ColorDrag" 
							ColorDrag.Parent = Colorpick 
							ColorDrag.AnchorPoint = Vec2(0.5, 0.5) 
							ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255) 
							ColorDrag.BorderColor3 = COL3RGB(25, 25, 25) 
							ColorDrag.Size = UDIM2(0, 4, 0, 4) 
							ColorDrag.ZIndex = 3 

							Huepick.Name = "Huepick" 
							Huepick.Parent = Frame 
							Huepick.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Huepick.BorderColor3 = COL3RGB(18, 18, 16) 
							Huepick.ClipsDescendants = true 
							Huepick.Position = UDIM2(0, 10, 0, 10) 
							Huepick.Size = UDIM2(0, 20, 0, 150) 
							Huepick.AutoButtonColor = false 
							Huepick.Image = "rbxassetid://3641079629" 
							Huepick.ImageColor3 = COL3RGB(255, 0, 0) 
							Huepick.ImageTransparency = 1 
							Huepick.BackgroundTransparency = 0 
							Huepick.ZIndex = 3 

							local HueFrameGradient = INST("UIGradient") 
							HueFrameGradient.Rotation = 90 
							HueFrameGradient.Name = "HueFrameGradient" 
							HueFrameGradient.Parent = Huepick 
							HueFrameGradient.Color = ColorSequence.new { 
								ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)), 
								ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)), 
								ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)), 
								ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)), 
								ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)), 
								ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)), 
								ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0)) 
							}	 

							Huedrag.Name = "Huedrag" 
							Huedrag.Parent = Huepick 
							Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Huedrag.BorderColor3 = COL3RGB(18, 18, 16) 
							Huedrag.Size = UDIM2(1, 0, 0, 2) 
							Huedrag.ZIndex = 3 

							local Transpick = INST("ImageButton") 
							local Transcolor = INST("ImageLabel") 
							local Transdrag = INST("Frame") 

							Transpick.Name = "Transpick" 
							Transpick.Parent = Frame 
							Transpick.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Transpick.BorderColor3 = COL3RGB(18, 18, 16) 
							Transpick.Position = UDIM2(0, 10, 0, 167) 
							Transpick.Size = UDIM2(0, 180, 0, 15) 
							Transpick.AutoButtonColor = false 
							Transpick.Image = "rbxassetid://3887014957" 
							Transpick.ScaleType = Enum.ScaleType.Tile 
							Transpick.TileSize = UDIM2(0, 10, 0, 10) 
							Transpick.ZIndex = 3 

							Transcolor.Name = "Transcolor" 
							Transcolor.Parent = Transpick 
							Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Transcolor.BackgroundTransparency = 1.000 
							Transcolor.Size = UDIM2(1, 0, 1, 0) 
							Transcolor.Image = "rbxassetid://3887017050" 
							Transcolor.ImageColor3 = COL3RGB(255, 0, 4) 
							Transcolor.ZIndex = 3 

							Transdrag.Name = "Transdrag" 
							Transdrag.Parent = Transcolor 
							Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Transdrag.BorderColor3 = COL3RGB(18, 18, 16) 
							Transdrag.Position = UDIM2(0, -1, 0, 0) 
							Transdrag.Size = UDIM2(0, 2, 1, 0) 
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

							ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y) 
							ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X) 
							ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y) 

							if data.default.Color ~= nil then 
								ColorH, ColorS, ColorV = data.default.Color:ToHSV() 

								ColorH = CLAMP(ColorH,0,1) 
								ColorS = CLAMP(ColorS,0,1) 
								ColorV = CLAMP(ColorV,0,1) 
								ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0) 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 

								Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1) 

								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1) 
							end 
							if data.default.Transparency ~= nil then 
								Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0) 
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
								local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X) 
								local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y) 
								ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0) 
								ColorS = 1-ColorX 
								ColorV = 1-ColorY 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								values[tabname][sectorname][tabtext][text] = Element.value 
								Element.value.Color = COL3HSV(ColorH, ColorS, ColorV) 
								callback(Element.value) 
							end 
							local function updateHue() 
								local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148) 
								Huedrag.Position = UDIM2(0, 0, 0, y) 
								hue = y/148 
								ColorH = 1-hue 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								values[tabname][sectorname][tabtext][text] = Element.value 
								Element.value.Color = COL3HSV(ColorH, ColorS, ColorV) 
								callback(Element.value) 
							end 
							local function updateTrans() 
								local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178) 
								Transdrag.Position = UDIM2(0, x, 0, 0) 
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
								local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B) 
								ColorH, ColorS, ColorV = duplicate:ToHSV() 
								ColorH = CLAMP(ColorH,0,1) 
								ColorS = CLAMP(ColorS,0,1) 
								ColorV = CLAMP(ColorV,0,1) 

								ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0) 
								Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
								ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
								update() 
								Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1) 
							end 
						elseif type == "Dropdown" then 
							tabsize = tabsize + UDIM2(0,0,0,39) 
							Element.value = {Dropdown = data.options[1]} 

							local Dropdown = INST("Frame") 
							local Button = INST("TextButton") 
							local TextLabel = INST("TextLabel") 
							local Drop = INST("ScrollingFrame") 
							local Button_2 = INST("TextButton") 
							local TextLabel_2 = INST("TextLabel") 
							local UIListLayout = INST("UIListLayout") 
							local ImageLabel = INST("ImageLabel") 
							local TextLabel_3 = INST("TextLabel") 

							Dropdown.Name = "Dropdown" 
							Dropdown.Parent = tab1 
							Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Dropdown.BackgroundTransparency = 1.000 
							Dropdown.Position = UDIM2(0, 0, 0.255102038, 0) 
							Dropdown.Size = UDIM2(1, 0, 0, 39) 

							Button.Name = "Button" 
							Button.Parent = Dropdown 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BorderColor3 = COL3RGB(18, 18, 16) 
							Button.Position = UDIM2(0, 30, 0, 16) 
							Button.Size = UDIM2(0, 175, 0, 17) 
							Button.AutoButtonColor = false 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							local UIGradient = Instance.new("UIGradient")			

							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
							UIGradient.Rotation = 90
							UIGradient.Parent = Button

							TextLabel.Parent = Button 
							TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255)
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
							TextLabel.Position = UDIM2(0, 5, 0, 0) 
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = Element.value.Dropdown 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							local abcd = TextLabel 

							Drop.Name = "Drop" 
							Drop.Parent = Button 
							Drop.Active = true 
							Drop.BackgroundColor3 = COL3RGB(45, 45, 45) 
							Drop.BorderColor3 = COL3RGB(18, 18, 16) 
							Drop.Position = UDIM2(0, 0, 1, 1) 
							Drop.Size = UDIM2(1, 0, 0, 20) 
							Drop.Visible = false 
							Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.CanvasSize = UDIM2(1, 1, 1, 1) 
							Drop.ScrollBarThickness = 0
							Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282" 
							Drop.AutomaticCanvasSize = "Y" 
							Drop.ZIndex = 5 
							Drop.ScrollBarImageColor3 = COL3RGB(172, 208, 255)

							UIListLayout.Parent = Drop 
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 

							local num = #data.options 
							if num > 5 then 
								Drop.Size = UDIM2(1, 0, 0, 85) 
							else 
								Drop.Size = UDIM2(1, 0, 0, 17*num) 
							end 
							Drop.CanvasSize = UDIM2(1, 0, 0, 17*num) 
							local first = true 
							for i,v in ipairs(data.options) do 
								do 
									local Button = INST("TextButton") 
									local TextLabel = INST("TextLabel") 

									Button.Name = v 
									Button.Parent = Drop 
									Button.BackgroundColor3 = COL3RGB(46, 46, 46) 
									Button.BorderColor3 = COL3RGB(18, 18, 16) 
									Button.Position = UDIM2(0, 30, 0, 16) 
									Button.Size = UDIM2(0, 175, 0, 17) 
									Button.AutoButtonColor = false 
									Button.Font = Enum.Font.Ubuntu
									Button.Text = "" 
									Button.TextColor3 = COL3RGB(0, 0, 0) 
									Button.TextSize = 10.000
									Button.BorderSizePixel = 0 
									Button.ZIndex = 6 

									TextLabel.Parent = Button 
									TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255) 
									TextLabel.BackgroundTransparency = 1.000 
									TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
									TextLabel.Position = UDIM2(0, 5, 0, -1) 
									TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
									TextLabel.Font = Enum.Font.Ubuntu
									TextLabel.Text = v 
									TextLabel.TextStrokeTransparency = 0.000
									TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
									TextLabel.TextSize = 10.000
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
									TextLabel.ZIndex = 6 

									Button.MouseButton1Down:Connect(function() 
										Drop.Visible = false 
										Element.value.Dropdown = v 
										abcd.Text = v 
										values[tabname][sectorname][tabtext][text] = Element.value 
										callback(Element.value) 
										Drop.CanvasPosition = Vec2(0,0) 
									end) 
									Button.MouseEnter:Connect(function() 
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(124, 81, 149)}) 
									end) 
									Button.MouseLeave:Connect(function() 
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)}) 
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
							ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							ImageLabel.BackgroundTransparency = 1.000 
							ImageLabel.Position = UDIM2(0, 165, 0, 6) 
							ImageLabel.Size = UDIM2(0, 6, 0, 4) 
							ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531" 

							TextLabel_3.Parent = Dropdown 
							TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel_3.BackgroundTransparency = 1.000 
							TextLabel_3.Position = UDIM2(0, 32, 0, -1) 
							TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0) 
							TextLabel_3.Font = Enum.Font.Ubuntu
							TextLabel_3.Text = text
							TextLabel_3.TextStrokeTransparency = 0.000									
							TextLabel_3.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel_3.TextSize = 10.000
							TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left 

							Button.MouseButton1Down:Connect(function() 
								Drop.Visible = not Drop.Visible 
								if not Drop.Visible then 
									Drop.CanvasPosition = Vec2(0,0) 
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
										Drop.CanvasPosition = Vec2(0,0) 
									end 
								end 
							end) 
							values[tabname][sectorname][tabtext][text] = Element.value 
						elseif type == "Slider" then 

							tabsize = tabsize + UDIM2(0,0,0,25) 

							local Slider = INST("Frame") 
							local TextLabel = INST("TextLabel") 
							local Button = INST("TextButton") 
							local Frame = INST("Frame") 
							local UIGradient = INST("UIGradient") 
							local UIGradient2 = INST("UIGradient")
							local Value = INST("TextLabel") 

							Slider.Name = "Slider" 
							Slider.Parent = tab1 
							Slider.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Slider.BackgroundTransparency = 1.000 
							Slider.Position = UDIM2(0, 0, 0.653061211, 0) 
							Slider.Size = UDIM2(1, 0, 0, 25) 

							TextLabel.Parent = Slider 
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.Position = UDIM2(0, 32, 0, -2) 
							TextLabel.Size = UDIM2(0, 100, 0, 15) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

							Button.Name = "Button" 
							Button.Parent = Slider 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BorderColor3 = COL3RGB(18, 18, 16)  
							Button.Position = UDIM2(0, 30, 0, 15) 
							Button.Size = UDIM2(0, 175, 0, 5) 
							Button.AutoButtonColor = false 
							Button.Font = Enum.Font.Ubuntu
							Button.Text = "" 
							Button.TextColor3 = COL3RGB(0, 0, 0) 
							Button.TextSize = 10.000

							UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
							UIGradient2.Rotation = 90
							UIGradient2.Parent = Button

							Frame.Parent = Button 
							Frame.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Frame.BorderSizePixel = 0 
							Frame.Size = UDIM2(0.5, 0, 1, 0) 

							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
							UIGradient.Rotation = 90
							UIGradient.Parent = Frame

							Value.Name = "Value" 
							Value.Parent = Slider 
							Value.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Value.BackgroundTransparency = 1.000 
							Value.Position = UDIM2(0, 30, 0, 15) 
							Value.Size = UDIM2(0, 175, 0, 5) 
							Value.Font = Enum.Font.Ubuntu
							Value.Text = "50" 
							Value.TextStrokeTransparency = 0.000
							Value.TextColor3 = COL3RGB(255, 255, 255) 
							Value.TextSize = 10.000 
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
								Frame.Size = UDIM2(a,0,1,0) 
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
							Frame.Size = UDIM2(a,0,1,0) 
							values[tabname][sectorname][tabtext][text] = Element.value 
							local uis = game:GetService("UserInputService") 
							local mouse = game.Players.LocalPlayer:GetMouse() 
							local val 
							Button.MouseButton1Down:Connect(function() 
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5) 
								val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0 
								Value.Text = val 
								Element.value.Slider = val 
								values[tabname][sectorname][tabtext][text] = Element.value 
								callback(Element.value) 
								moveconnection = mouse.Move:Connect(function() 
									Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5) 
									val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) 
									Value.Text = val 
									Element.value.Slider = val 
									values[tabname][sectorname][tabtext][text] = Element.value 
									callback(Element.value) 
								end) 
								releaseconnection = uis.InputEnded:Connect(function(Mouse) 
									if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then 
										Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5) 
										val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) 
										values[tabname][sectorname][tabtext][text] = Element.value 
										callback(Element.value) 
										moveconnection:Disconnect() 
										releaseconnection:Disconnect() 
									end 
								end) 
							end) 
						elseif type == "Button" then 

							tabsize = tabsize + UDIM2(0,0,0,24) 
							local Button = INST("Frame") 
							local Button_2 = INST("TextButton") 
							local UIGradient = Instance.new("UIGradient")
							local TextLabel = INST("TextLabel") 

							Button.Name = "Button" 
							Button.Parent = tab1 
							Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button.BackgroundTransparency = 1.000 
							Button.Position = UDIM2(0, 0, 0.236059487, 0) 
							Button.Size = UDIM2(1, 0, 0, 24) 

							Button_2.Name = "Button" 
							Button_2.Parent = Button 
							Button_2.BackgroundColor3 = COL3RGB(255, 255, 255) 
							Button_2.BorderColor3 = COL3RGB(18, 18, 16) 
							Button_2.Position = UDIM2(0, 30, 0.5, -9) 
							Button_2.Size = UDIM2(0, 175, 0, 18) 
							Button_2.AutoButtonColor = false 
							Button_2.Font = Enum.Font.Ubuntu
							Button_2.Text = "" 
							Button_2.TextColor3 = COL3RGB(0, 0, 0) 
							Button_2.TextSize = 10.000

							UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
							UIGradient.Rotation = 90
							UIGradient.Parent = Button_2

							TextLabel.Parent = Button_2 
							TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255)
							TextLabel.BackgroundTransparency = 1.000 
							TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
							TextLabel.Size = UDIM2(1, 0, 1, 0) 
							TextLabel.Font = Enum.Font.Ubuntu
							TextLabel.Text = text 
							TextLabel.TextStrokeTransparency = 0.000
							TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
							TextLabel.TextSize = 10.000


							function Element:SetValue() 
							end 

							Button_2.MouseButton1Down:Connect(function() 
								TextLabel.TextColor3 = COL3RGB(172, 208, 255)
								library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(172, 208, 255)}) 
								callback() 
							end) 
							Button_2.MouseEnter:Connect(function() 
								library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(124, 81, 149)}) 
							end) 
							Button_2.MouseLeave:Connect(function() 
								library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
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
						TextButton.TextColor3 = COL3RGB(255,255,255) 
						tab1.Visible = true 
						firs = false 
					end 

					return tab 
				end 
				library.tabs[tabname][sectorname] = MSector
				return MSector 
			end 
			function Tab:Sector(text, side) 
				local sectorname = text 
				local Sector = {} 
				values[tabname][text] = {} 
				local Section = INST("Frame") 
				local SectionText = INST("TextLabel") 
				local Inner = INST("Frame") 
				local UIListLayout = INST("UIListLayout") 


				Section.Name = "Section" 
				Section.Parent = TabGui[side] 
				Section.BackgroundTransparency = 1.000 
				Section.BackgroundColor3 = COL3RGB(46, 46, 46) 
				Section.BorderColor3 = COL3RGB(18, 18, 16) 
				Section.BorderSizePixel = 0 
				Section.Position = UDIM2(0.00358422939, 0, 0, 0) 
				Section.Size = UDIM2(1, 0, 0, 22) 

				SectionText.Name = "SectionText" 
				SectionText.Parent = Section 
				SectionText.BackgroundColor3 = COL3RGB(255, 255, 255) 
				SectionText.BackgroundTransparency = 1.000 
				SectionText.Position = UDIM2(0, 0, 0, -10) 
				SectionText.Size = UDIM2(0, 279, 0, 19) 
				SectionText.ZIndex = 2 
				SectionText.Font = Enum.Font.Ubuntu
				SectionText.Text = text 
				SectionText.TextStrokeTransparency = 0.000
				SectionText.TextColor3 = COL3RGB(255, 255, 255) 
				SectionText.TextSize = 11.000
				SectionText.TextXAlignment = Enum.TextXAlignment.Center

				Inner.Name = "Inner" 
				Inner.Parent = Section 
				Inner.BackgroundColor3 = COL3RGB(30, 30, 30) 
				Inner.BackgroundTransparency = 0.000 
				Inner.BorderColor3 = COL3RGB(7, 0, 0) 
				Inner.BorderSizePixel = 1
				Inner.Position = UDIM2(0, 1, 0, 1) 
				Inner.Size = UDIM2(1, -2, 1, -2) 

				local UIPadding = INST("UIPadding") 

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
						Section.Size = Section.Size + UDIM2(0,0,0,39) 
						Element.value = {Scroll = {}, Dropdown = ""} 

						for i,v in pairs(data.options) do 
							Element.value.Scroll[i] = v[1] 
						end 

						local joe = {} 
						if data.alphabet then 
							local copy = {} 
							for i,v in pairs(data.options) do 
								INSERT(copy, i) 
							end 
							TBLSORT(copy, function(a,b) 
								return a < b 
							end) 
							joe = copy 
						else 
							for i,v in pairs(data.options) do 
								INSERT(joe, i) 
							end 
						end 

						local Dropdown = INST("Frame") 
						local Button = INST("TextButton") 
						local TextLabel = INST("TextLabel") 
						local Drop = INST("ScrollingFrame") 
						local Button_2 = INST("TextButton") 
						local TextLabel_2 = INST("TextLabel") 
						local UIListLayout = INST("UIListLayout") 
						local ImageLabel = INST("ImageLabel") 
						local TextLabel_3 = INST("TextLabel") 

						Dropdown.Name = "Dropdown" 
						Dropdown.Parent = Inner 
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Dropdown.BackgroundTransparency = 1.000 
						Dropdown.Position = UDIM2(0, 0, 0, 0) 
						Dropdown.Size = UDIM2(1, 0, 0, 39) 

						Button.Name = "Button" 
						Button.Parent = Dropdown 
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BorderColor3 = COL3RGB(18, 18, 16) 
						Button.Position = UDIM2(0, 30, 0, 16) 
						Button.Size = UDIM2(0, 175, 0, 17) 
						Button.AutoButtonColor = false 
						Button.Font = Enum.Font.Ubuntu
						Button.Text = "" 
						Button.TextColor3 = COL3RGB(0, 0, 0) 
						Button.TextSize = 10.000

						local UIGradient = Instance.new("UIGradient")

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Button

						local TextLabel = INST("TextLabel") 

						TextLabel.Parent = Button 
						TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255)
						TextLabel.BackgroundTransparency = 1.000 
						TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
						TextLabel.Position = UDIM2(0, 5, 0, 0) 
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = "lol" 
						TextLabel.TextStrokeTransparency = 0.000
						TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
						TextLabel.TextSize = 10.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

						local abcd = TextLabel 

						Drop.Name = "Drop" 
						Drop.Parent = Button 
						Drop.Active = true 
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BorderColor3 = COL3RGB(18, 18, 16) 
						Drop.Position = UDIM2(0, 0, 1, 1) 
						Drop.Size = UDIM2(1, 0, 0, 20) 
						Drop.Visible = false 
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.CanvasSize = UDIM2(1, 1, 1, 1) 
						Drop.ScrollBarThickness = 0 
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.AutomaticCanvasSize = "Y" 
						Drop.ZIndex = 5 
						Drop.ScrollBarImageColor3 = COL3RGB(172, 208, 255)


						local UIGradient2 = Instance.new("UIGradient")

						UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
						UIGradient2.Rotation = 90
						UIGradient2.Parent = Drop

						UIListLayout.Parent = Drop 
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 


						local amount = data.Amount or 6 
						Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8) 

						local num = #joe 
						if num > 5 then 
							Drop.Size = UDIM2(1, 0, 0, 85) 
						else 
							Drop.Size = UDIM2(1, 0, 0, 17*num) 
						end 
						local first = true 
						for i,v in ipairs(joe) do 
							do 
								local joell = v 
								local Scroll = INST("Frame") 
								local joe2 = data.options[v] 
								local Button = INST("TextButton") 
								local TextLabel = INST("TextLabel") 

								Button.Name = v 
								Button.Parent = Drop 
								Button.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Button.BorderColor3 = COL3RGB(18, 18, 16) 
								Button.Position = UDIM2(0, 30, 0, 16) 
								Button.Size = UDIM2(0, 175, 0, 17) 
								Button.AutoButtonColor = false 
								Button.Font = Enum.Font.Ubuntu
								Button.Text = "" 
								Button.TextColor3 = COL3RGB(0, 0, 0) 
								Button.TextSize = 10.000
								Button.BorderSizePixel = 0      
								Button.ZIndex = 6      

								TextLabel.Parent = Button      
								TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255)     
								TextLabel.BackgroundTransparency = 1.000      
								TextLabel.BorderColor3 = COL3RGB(18, 18, 16)      
								TextLabel.Position = UDIM2(0, 5, 0, -1)      
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
								TextLabel.Font = Enum.Font.Ubuntu     
								TextLabel.Text = v    
								TextLabel.TextStrokeTransparency = 0.000										
								TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
								TextLabel.TextSize = 10.000   
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
								TextLabel.ZIndex = 6      

								Button.MouseButton1Down:Connect(function()      
									Drop.Visible = false      
									Drop.CanvasPosition = Vec2(0,0)      
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
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})      
								end)      
								Button.MouseLeave:Connect(function()      
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})      
								end)      

								if first then      
									abcd.Text = v      
									Element.value.Dropdown = v      
								end      
								local Frame = INST("ScrollingFrame")      
								local UIListLayout = INST("UIListLayout")      

								Scroll.Name = "Scroll"      
								Scroll.Parent = Dropdown      
								Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)      
								Scroll.BackgroundTransparency = 1.000      
								Scroll.Position = UDIM2(0, 0, 0, 0)      
								Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)      
								Scroll.Visible = first      
								Scroll.Name = v      


								Frame.Name = "Frame"      
								Frame.Parent = Scroll      
								Frame.Active = true      
								Frame.BackgroundColor3 = COL3RGB(46, 46, 46)      
								Frame.BorderColor3 = COL3RGB(18, 18, 16)      
								Frame.Position = UDIM2(0, 30, 0, 40)      
								Frame.Size = UDIM2(0, 175, 0, 16 * amount)      
								Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"      
								Frame.CanvasSize = UDIM2(0, 0, 0, 0)      
								Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"      
								Frame.ScrollBarThickness = 4      
								Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"      
								Frame.AutomaticCanvasSize = "Y"      
								Frame.ScrollBarImageColor3 = COL3RGB(172, 208, 255)      

								UIListLayout.Parent = Frame      
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
								local joll = true      
								for i,v in ipairs(joe2) do      
									local Button = INST("TextButton")      
									local TextLabel = INST("TextLabel")      

									Button.Name = v      
									Button.Parent = Frame      
									Button.BackgroundColor3 = COL3RGB(46, 46, 46)      
									Button.BorderColor3 = COL3RGB(18, 18, 16)      
									Button.BorderSizePixel = 0      
									Button.Position = UDIM2(0, 30, 0, 16)      
									Button.Size = UDIM2(1, 0, 0, 16)      
									Button.AutoButtonColor = false      
									Button.Font = Enum.Font.Ubuntu     
									Button.Text = ""      
									Button.TextColor3 = COL3RGB(0, 0, 0)      
									Button.TextSize = 10.000   

									TextLabel.Parent = Button      
									TextLabel.BackgroundColor3 = COL3RGB(172, 208, 255)     
									TextLabel.BackgroundTransparency = 1.000      
									TextLabel.BorderColor3 = COL3RGB(18, 18, 16)      
									TextLabel.Position = UDIM2(0, 4, 0, -1)      
									TextLabel.Size = UDIM2(1, 1, 1, 1)      
									TextLabel.Font = Enum.Font.Ubuntu     
									TextLabel.Text = v     
									TextLabel.TextStrokeTransparency = 0.000											
									TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
									TextLabel.TextSize = 10.000 
									TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
									if joll then      
										joll = false      
										TextLabel.TextColor3 = COL3RGB(135, 25, 255)      
									end      

									Button.MouseButton1Down:Connect(function()      

										for i,v in pairs(Frame:GetChildren()) do      
											if v:IsA("TextButton") then      
												library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
											end      
										end      

										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(172, 208, 255)})      

										Element.value.Scroll[joell] = v      

										values[tabname][sectorname][text] = Element.value      
										callback(Element.value)      
									end)      
									Button.MouseEnter:Connect(function()      
										if Element.value.Scroll[joell] ~= v then      
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
										end      
									end)      
									Button.MouseLeave:Connect(function()      
										if Element.value.Scroll[joell] ~= v then      
											library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
										end      
									end)      
								end      
								first = false      
							end      
						end      

						ImageLabel.Parent = Button      
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ImageLabel.BackgroundTransparency = 1.000      
						ImageLabel.Position = UDIM2(0, 165, 0, 6)      
						ImageLabel.Size = UDIM2(0, 6, 0, 4)      
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"      

						TextLabel_3.Parent = Dropdown      
						TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel_3.BackgroundTransparency = 1.000      
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
						TextLabel_3.Font = Enum.Font.Ubuntu     
						TextLabel_3.Text = text      
						TextLabel_3.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel_3.TextSize = 10.000    
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

						Button.MouseButton1Down:Connect(function()      
							Drop.Visible = not Drop.Visible      
							if not Drop.Visible then      
								Drop.CanvasPosition = Vec2(0,0)      
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
									Drop.CanvasPosition = Vec2(0,0)      
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
											bad.TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
											if bad.Name == Element.value.Scroll[v.Name] then      
												bad.TextLabel.TextColor3 = COL3RGB(172, 208, 255)     
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
						Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8)      
						if data.alphabet then      
							TBLSORT(data.options, function(a,b)      
								return a < b      
							end)      
						end      
						Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}      

						local Scroll = INST("Frame")      
						local Frame = INST("ScrollingFrame")      
						local UIListLayout = INST("UIListLayout")      

						Scroll.Name = "Scroll"      
						Scroll.Parent = Inner      
						Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Scroll.BackgroundTransparency = 1.000      
						Scroll.Position = UDIM2(0, 0, 00, 0)      
						Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)      


						Frame.Name = "Frame"      
						Frame.Parent = Scroll      
						Frame.Active = true      
						Frame.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Frame.BorderColor3 = COL3RGB(18, 18, 16)      
						Frame.Position = UDIM2(0, 30, 0, 0)      
						Frame.Size = UDIM2(0, 175, 0, 16 * amount)      
						Frame.BottomImage = "http://www.roblox.com/asset/?id=6724808282"      
						Frame.CanvasSize = UDIM2(0, 0, 0, 0)      
						Frame.MidImage = "http://www.roblox.com/asset/?id=6724808282"      
						Frame.ScrollBarThickness = 4      
						Frame.TopImage = "http://www.roblox.com/asset/?id=6724808282"      
						Frame.AutomaticCanvasSize = "Y"      
						Frame.ScrollBarImageColor3 = COL3RGB(172, 208, 255)     

						UIListLayout.Parent = Frame      
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      
						local first = true      
						for i,v in ipairs(data.options) do      
							local Button = INST("TextButton")      
							local TextLabel = INST("TextLabel")      

							Button.Name = v      
							Button.Parent = Frame      
							Button.BackgroundColor3 = COL3RGB(46, 46, 46)      
							Button.BorderColor3 = COL3RGB(18, 18, 16)      
							Button.BorderSizePixel = 0      
							Button.Position = UDIM2(0, 30, 0, 16)      
							Button.Size = UDIM2(1, 0, 0, 16)      
							Button.AutoButtonColor = false      
							Button.Font = Enum.Font.Ubuntu     
							Button.Text = ""      
							Button.TextColor3 = COL3RGB(0, 0, 0)      
							Button.TextSize = 10.000   

							TextLabel.Parent = Button      
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)     
							TextLabel.BackgroundTransparency = 1.000      
							TextLabel.BorderColor3 = COL3RGB(18, 18, 16)      
							TextLabel.Position = UDIM2(0, 4, 0, -1)      
							TextLabel.Size = UDIM2(1, 1, 1, 1)      
							TextLabel.Font = Enum.Font.Ubuntu     
							TextLabel.Text = v      
							TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
							TextLabel.TextSize = 10.000    
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
							if first then first = false      
								TextLabel.TextColor3 = COL3RGB(172, 208, 255)      
							end      

							Button.MouseButton1Down:Connect(function()      

								for i,v in pairs(Frame:GetChildren()) do      
									if v:IsA("TextButton") then      
										library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									end      
								end      

								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(172, 208, 255)})      

								Element.value.Scroll = v      

								values[tabname][sectorname][text] = Element.value      
								callback(Element.value)      
							end)      
							Button.MouseEnter:Connect(function()      
								if Element.value.Scroll ~= v then      
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
								end      
							end)      
							Button.MouseLeave:Connect(function()      
								if Element.value.Scroll ~= v then      
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
								end      
							end)      
						end      

						function Element:SetValue(val)      
							Element.value = val      

							for i,v in pairs(Frame:GetChildren()) do      
								if v:IsA("TextButton") then      
									library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
								end      
							end      

							library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							values[tabname][sectorname][text] = Element.value      
							callback(Element.value)      
						end      
						values[tabname][sectorname][text] = Element.value      
					elseif type == "Jumbobox" then      
						Section.Size = Section.Size + UDIM2(0,0,0,39)      
						Element.value = {Jumbobox = {}}      
						data.options = data.options or {}      

						local Dropdown = INST("Frame")      
						local Button = INST("TextButton")      
						local TextLabel = INST("TextLabel")      
						local Drop = INST("ScrollingFrame")      
						local Button_2 = INST("TextButton")      
						local TextLabel_2 = INST("TextLabel")      
						local UIListLayout = INST("UIListLayout")      
						local ImageLabel = INST("ImageLabel")      
						local TextLabel_3 = INST("TextLabel")      

						Dropdown.Name = "Dropdown"      
						Dropdown.Parent = Inner      
						Dropdown.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Dropdown.BackgroundTransparency = 1.000      
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)      
						Dropdown.Size = UDIM2(1, 0, 0, 39)      

						Button.Name = "Button"      
						Button.Parent = Dropdown      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BorderColor3 = COL3RGB(18, 18, 16)       
						Button.Position = UDIM2(0, 30, 0, 16)      
						Button.Size = UDIM2(0, 175, 0, 17)      
						Button.AutoButtonColor = false      
						Button.Font = Enum.Font.Ubuntu     
						Button.Text = ""      
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 10.000   

						local UIGradient = Instance.new("UIGradient")			

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Button								

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.BorderColor3 = COL3RGB(18, 18, 16)      
						TextLabel.Position = UDIM2(0, 5, 0, 0)      
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
						TextLabel.Font = Enum.Font.Ubuntu     
						TextLabel.Text = "-"     
						TextLabel.TextStrokeTransparency = 0.000								
						TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel.TextSize = 10.000    
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local abcd = TextLabel      

						Drop.Name = "Drop"      
						Drop.Parent = Button      
						Drop.Active = true      
						Drop.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Drop.BorderColor3 = COL3RGB(18, 18, 16)      
						Drop.Position = UDIM2(0, 0, 1, 1)      
						Drop.Size = UDIM2(1, 0, 0, 20)      
						Drop.Visible = false      
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282"      
						Drop.CanvasSize = UDIM2(1, 1, 1, 1)      
						Drop.ScrollBarThickness = 0  
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282"      
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282"      
						--Drop.AutomaticCanvasSize = "Y"      
						for i,v in pairs(data.options) do      
							Drop.CanvasSize = Drop.CanvasSize + UDIM2(0, 0, 0, 17)      
						end      
						Drop.ZIndex = 5      
						Drop.ScrollBarImageColor3 = COL3RGB(172, 208, 255)   

						UIListLayout.Parent = Drop      
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

						values[tabname][sectorname][text] = Element.value      

						local num = #data.options      
						if num > 5 then      
							Drop.Size = UDIM2(1, 0, 0, 85)      
						else      
							Drop.Size = UDIM2(1, 0, 0, 17*num)      
						end      
						local first = true      

						local function updatetext()      
							local old = {}      
							for i,v in ipairs(data.options) do      
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
								local Button = INST("TextButton")      
								local TextLabel = INST("TextLabel")      

								Button.Name = v      
								Button.Parent = Drop      
								Button.BackgroundColor3 = COL3RGB(46, 46, 46)      
								Button.BorderColor3 = COL3RGB(18, 18, 16)      
								Button.Position = UDIM2(0, 30, 0, 16)      
								Button.Size = UDIM2(0, 175, 0, 17)      
								Button.AutoButtonColor = false      
								Button.Font = Enum.Font.Ubuntu     
								Button.Text = ""      
								Button.TextColor3 = COL3RGB(0, 0, 0)      
								Button.TextSize = 10.000     
								Button.BorderSizePixel = 0      
								Button.ZIndex = 6      

								TextLabel.Parent = Button      
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
								TextLabel.BackgroundTransparency = 1.000      
								TextLabel.BorderColor3 = COL3RGB(18, 18, 16)      
								TextLabel.Position = UDIM2(0, 5, 0, -1)      
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)      
								TextLabel.Font = Enum.Font.Ubuntu     
								TextLabel.Text = v   
								TextLabel.TextStrokeTransparency = 0.000										
								TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
								TextLabel.TextSize = 10.000    
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left      
								TextLabel.ZIndex = 6      

								Button.MouseButton1Down:Connect(function()      
									if TBLFIND(Element.value.Jumbobox, v) then      
										for i,a in pairs(Element.value.Jumbobox) do      
											if a == v then      
												TBLREMOVE(Element.value.Jumbobox, i)      
											end      
										end      
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									else      
										INSERT(Element.value.Jumbobox, v)      
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									end      
									updatetext()      

									values[tabname][sectorname][text] = Element.value      
									callback(Element.value)      
								end)      
								Button.MouseEnter:Connect(function()      
									if not TBLFIND(Element.value.Jumbobox, v) then      
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
									end      
								end)      
								Button.MouseLeave:Connect(function()      
									if not TBLFIND(Element.value.Jumbobox, v) then      
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
									end      
								end)      

								first = false      
							end      
						end      
						function Element:SetValue(val)      
							Element.value = val      
							for i,v in pairs(Drop:GetChildren()) do      
								if v.Name ~= "UIListLayout" then      
									if TBLFIND(val.Jumbobox, v.Name) then      
										v.TextLabel.TextColor3 = COL3RGB(255, 255, 255)     
									else      
										v.TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
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
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ImageLabel.BackgroundTransparency = 1.000      
						ImageLabel.Position = UDIM2(0, 165, 0, 6)      
						ImageLabel.Size = UDIM2(0, 6, 0, 4)      
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"      

						TextLabel_3.Parent = Dropdown      
						TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel_3.BackgroundTransparency = 1.000      
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)      
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)      
						TextLabel_3.Font = Enum.Font.Ubuntu     
						TextLabel_3.Text = text      
						TextLabel_3.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel_3.TextSize = 10.000    
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left      

						Button.MouseButton1Down:Connect(function()      
							Drop.Visible = not Drop.Visible      
							if not Drop.Visible then      
								Drop.CanvasPosition = Vec2(0,0)      
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
									Drop.CanvasPosition = Vec2(0,0)      
								end      
							end      
						end)      
					elseif type == "ToggleKeybind" then      
						Section.Size = Section.Size + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}      

						local Toggle = INST("Frame")      
						local Button = INST("TextButton")      
						local Color = INST("Frame")      
						local TextLabel = INST("TextLabel")      

						Toggle.Name = "Toggle"      
						Toggle.Parent = Inner      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = "Button"      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.Ubuntu     
						Button.Text = ""      
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 10.000

						Color.Name = "Color"      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
						Color.BorderColor3 = COL3RGB(18, 18, 16)     
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      
						local binding = false      
						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.Ubuntu     
						TextLabel.Text = text     
						TextLabel.TextStrokeTransparency = 0.000								
						TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel.TextSize = 10.000   
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)})      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								keybindremove(text)      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)})   
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 										
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
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
							local Keybind = INST("TextButton")      
							local Frame = INST("Frame")      
							local Always = INST("TextButton")      
							local UIListLayout = INST("UIListLayout")      
							local Hold = INST("TextButton")      
							local Toggle = INST("TextButton")      

							Keybind.Name = "Keybind"      
							Keybind.Parent = Button      
							Keybind.BackgroundColor3 = COL3RGB(31, 31, 31)      
							Keybind.BorderColor3 = COL3RGB(18, 18, 16)      
							Keybind.Position = UDIM2(0, 270, 0.5, -6)      
							Keybind.Text = "none"      
							Keybind.BackgroundTransparency = 0.000
							Keybind.Size = UDIM2(0, 43, 0, 12)      
							Keybind.Size = UDIM2(0,txt:GetTextSize("none", 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 5,0, 12)      
							Keybind.AutoButtonColor = false   
							Keybind.TextStrokeTransparency = 0.000									
							Keybind.Font = Enum.Font.Ubuntu     
							Keybind.TextColor3 = COL3RGB(255, 255, 255)      
							Keybind.TextSize = 10.000  
							Keybind.AnchorPoint = Vec2(1,0)      
							Keybind.ZIndex = 3      

							Frame.Parent = Keybind      
							Frame.BackgroundColor3 = COL3RGB(46, 46, 46)      
							Frame.BorderColor3 = COL3RGB(18, 18, 16)      
							Frame.Position = UDIM2(1, -49, 0, 1)      
							Frame.Size = UDIM2(0, 49, 0, 49)      
							Frame.Visible = false      
							Frame.ZIndex = 3      

							Always.Name = "Always"      
							Always.Parent = Frame      
							Always.BackgroundColor3 = COL3RGB(46, 46, 46)      
							Always.BackgroundTransparency = 1.000      
							Always.BorderColor3 = COL3RGB(18, 18, 16)      
							Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Always.Size = UDIM2(1, 0, 0, 16)      
							Always.AutoButtonColor = false      
							Always.Font = Enum.Font.Ubuntu      
							Always.Text = "Always" 
							Always.TextStrokeTransparency = 0.000											
							Always.TextColor3 = COL3RGB(172, 208, 255)     
							Always.TextSize = 10.000    
							Always.ZIndex = 3      

							UIListLayout.Parent = Frame      
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center      
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder      

							Hold.Name = "Hold"      
							Hold.Parent = Frame      
							Hold.BackgroundColor3 = COL3RGB(146, 46, 46)      
							Hold.BackgroundTransparency = 1.000      
							Hold.BorderColor3 = COL3RGB(18, 18, 16)      
							Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Hold.Size = UDIM2(1, 0, 0, 16)      
							Hold.AutoButtonColor = false      
							Hold.Font = Enum.Font.Ubuntu     
							Hold.Text = "Hold"     
							Hold.TextStrokeTransparency = 0.000											
							Hold.TextColor3 = COL3RGB(255, 255, 255)      
							Hold.TextSize = 10.000    
							Hold.ZIndex = 3      

							Toggle.Name = "Toggle"      
							Toggle.Parent = Frame      
							Toggle.BackgroundColor3 = COL3RGB(46, 46, 46)      
							Toggle.BackgroundTransparency = 1.000      
							Toggle.BorderColor3 = COL3RGB(18, 18, 16)      
							Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)      
							Toggle.Size = UDIM2(1, 0, 0, 16)      
							Toggle.AutoButtonColor = false      
							Toggle.Font = Enum.Font.Ubuntu     
							Toggle.Text = "Toggle"    
							Toggle.TextStrokeTransparency = 0.000									
							Toggle.TextColor3 = COL3RGB(255, 255, 255)      
							Toggle.TextSize = 10.000    
							Toggle.ZIndex = 3      

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
												button.Font = Enum.Font.Ubuntu     
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
											end      
										end      
										button.Font = Enum.Font.Ubuntu      
										button.TextColor3 = COL3RGB(172, 208, 255)     
										values[tabname][sectorname][text] = Element.value      
									end)      
									button.MouseEnter:Connect(function()      
										if Element.value.Type ~= button.Text then      
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(155, 155, 155)})      
										end      
									end)      
									button.MouseLeave:Connect(function()      
										if Element.value.Type ~= button.Text then      
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(155, 155, 155)})      
										end      
									end)      
								end      
							end      
							Keybind.MouseButton1Down:Connect(function()      
								if not binding then      
									wait()      
									binding = true      
									Keybind.Text = "-"      
									Keybind.Size = UDIM2(0,txt:GetTextSize("-", 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 4,0, 12)      
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
									Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 5,0, 12)      
									Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name      
									if input.KeyCode.Name == "Backspace" then      
										Keybind.Text = "none"      
										Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Ubuntu, Vec2(700, 12)).X + 4,0, 12)      
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
														keybindhold(text)      
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
														keybindhold(text)      
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
													keybindhold(text)      
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
													keybindhold(text)      
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
						Section.Size = Section.Size + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false}      

						local Toggle = INST("Frame")      
						local Button = INST("TextButton")      
						local Color = INST("Frame")      
						local TextLabel = INST("TextLabel")      

						Toggle.Name = "Toggle"      
						Toggle.Parent = Inner      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = "Button"      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.Ubuntu     
						Button.Text = ""      
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 10.000    

						Color.Name = "Color"      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
						Color.BorderColor3 = COL3RGB(18, 18, 16)    
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.Ubuntu     
						TextLabel.Text = text 
						TextLabel.TextStrokeTransparency = 0.000										
						TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel.TextSize = 10.000     
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)})      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)})      
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)})   
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)})  										
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
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
						Section.Size = Section.Size + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}      

						local Toggle = INST("Frame")      
						local Button = INST("TextButton")      
						local Color = INST("Frame")      
						local TextLabel = INST("TextLabel")      

						Toggle.Name = "Toggle"      
						Toggle.Parent = Inner      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = "Button"      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.Ubuntu     
						Button.Text = ""      
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 10.000     

						Color.Name = "Color"      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(46, 46, 46) 
						Color.BorderColor3 = COL3RGB(18, 18, 16)    
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.Ubuntu     
						TextLabel.Text = text  
						TextLabel.TextStrokeTransparency = 0.000									
						TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel.TextSize = 10.000    
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)})    
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 										
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)})   
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 										
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
							end      
							values[tabname][sectorname][text] = Element.value      
						end      

						local ColorH,ColorS,ColorV      

						local ColorP = INST("TextButton")      
						local Frame = INST("Frame")      
						local Colorpick = INST("ImageButton")      
						local ColorDrag = INST("Frame")      
						local Huepick = INST("ImageButton")      
						local Huedrag = INST("Frame")      

						ColorP.Name = "ColorP"      
						ColorP.Parent = Button      
						ColorP.AnchorPoint = Vec2(1, 0)      
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
						ColorP.BorderColor3 = COL3RGB(18, 18, 16)      
						ColorP.Position = UDIM2(0, 270, 0.5, -4)      
						ColorP.Size = UDIM2(0, 18, 0, 8)      
						ColorP.AutoButtonColor = false      
						ColorP.Font = Enum.Font.Ubuntu     
						ColorP.Text = ""      
						ColorP.TextColor3 = COL3RGB(255, 255, 255)      
						ColorP.TextSize = 10.000    

						Frame.Parent = ColorP      
						Frame.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Frame.BorderColor3 = COL3RGB(18, 18, 16)      
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
						Frame.Size = UDIM2(0, 200, 0, 170)      
						Frame.Visible = false      
						Frame.ZIndex = 3      

						Colorpick.Name = "Colorpick"      
						Colorpick.Parent = Frame      
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Colorpick.BorderColor3 = COL3RGB(18, 18, 16)      
						Colorpick.ClipsDescendants = false      
						Colorpick.Position = UDIM2(0, 40, 0, 10)      
						Colorpick.Size = UDIM2(0, 150, 0, 150)      
						Colorpick.AutoButtonColor = false      
						Colorpick.Image = "rbxassetid://4155801252"      
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
						Colorpick.ZIndex = 3      

						ColorDrag.Name = "ColorDrag"      
						ColorDrag.Parent = Colorpick      
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ColorDrag.BorderColor3 = COL3RGB(18, 18, 16)      
						ColorDrag.Size = UDIM2(0, 4, 0, 4)      
						ColorDrag.ZIndex = 3      

						Huepick.Name = "Huepick"      
						Huepick.Parent = Frame      
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huepick.BorderColor3 = COL3RGB(18, 18, 16)      
						Huepick.ClipsDescendants = false      
						Huepick.Position = UDIM2(0, 10, 0, 10)      
						Huepick.Size = UDIM2(0, 20, 0, 150)      
						Huepick.AutoButtonColor = false      
						Huepick.Image = "rbxassetid://3641079629"      
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
						Huepick.ImageTransparency = 1      
						Huepick.BackgroundTransparency = 0      
						Huepick.ZIndex = 3      

						local HueFrameGradient = INST("UIGradient")      
						HueFrameGradient.Rotation = 90      
						HueFrameGradient.Name = "HueFrameGradient"      
						HueFrameGradient.Parent = Huepick      
						HueFrameGradient.Color = ColorSequence.new {      
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
						}	      

						Huedrag.Name = "Huedrag"      
						Huedrag.Parent = Huepick      
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huedrag.BorderColor3 = COL3RGB(18, 18, 16)      
						Huedrag.Size = UDIM2(1, 0, 0, 2)      
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

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)      
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)      
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)      

						if data.default and data.default.Color ~= nil then      
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()      

							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      

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
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)      
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)      
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
							ColorS = 1-ColorX      
							ColorV = 1-ColorY      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateHue()      
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
							Huedrag.Position = UDIM2(0, 0, 0, y)      
							hue = y/148      
							ColorH = 1-hue      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
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
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)      
							ColorH, ColorS, ColorV = duplicate:ToHSV()      
							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							update()      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      

							callback(value)      
						end      
					elseif type == "ToggleTrans" then      
						Section.Size = Section.Size + UDIM2(0,0,0,16)      
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}      

						local Toggle = INST("Frame")      
						local Button = INST("TextButton")      
						local Color = INST("Frame")      
						local TextLabel = INST("TextLabel")      

						Toggle.Name = "Toggle"      
						Toggle.Parent = Inner      
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Toggle.BackgroundTransparency = 1.000      
						Toggle.Size = UDIM2(1, 0, 0, 15)      

						Button.Name = "Button"      
						Button.Parent = Toggle      
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Button.BackgroundTransparency = 1.000      
						Button.Size = UDIM2(1, 0, 1, 0)      
						Button.Font = Enum.Font.Ubuntu     
						Button.Text = ""      
						Button.TextColor3 = COL3RGB(0, 0, 0)      
						Button.TextSize = 10.000    

						Color.Name = "Color"      
						Color.Parent = Button      
						Color.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Color.BorderColor3 = COL3RGB(18, 18, 16)      
						Color.Position = UDIM2(0, 15, 0.5, -5)      
						Color.Size = UDIM2(0, 8, 0, 8)      

						TextLabel.Parent = Button      
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)      
						TextLabel.BackgroundTransparency = 1.000      
						TextLabel.Position = UDIM2(0, 32, 0, -1)      
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)      
						TextLabel.Font = Enum.Font.Ubuntu     
						TextLabel.Text = text    
						TextLabel.TextStrokeTransparency = 0.000								
						TextLabel.TextColor3 = COL3RGB(255, 255, 255)      
						TextLabel.TextSize = 10.000   
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left      

						local function update()      
							if Element.value.Toggle then      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)})  
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 										
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})      
							else      
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)})  
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BorderColor3 = COL3RGB(18, 18, 16)}) 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})       
							end      
							values[tabname][sectorname][text] = Element.value      
							callback(Element.value)      
						end      

						local ColorH,ColorS,ColorV      

						local ColorP = INST("TextButton")      
						local Frame = INST("Frame")      
						local Colorpick = INST("ImageButton")      
						local ColorDrag = INST("Frame")      
						local Huepick = INST("ImageButton")      
						local Huedrag = INST("Frame")      

						ColorP.Name = "ColorP"      
						ColorP.Parent = Button      
						ColorP.AnchorPoint = Vec2(1, 0)      
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)      
						ColorP.BorderColor3 = COL3RGB(18, 18, 16)      
						ColorP.Position = UDIM2(0, 270, 0.5, -4)      
						ColorP.Size = UDIM2(0, 18, 0, 8)      
						ColorP.AutoButtonColor = false      
						ColorP.Font = Enum.Font.Ubuntu     
						ColorP.Text = ""      
						ColorP.TextColor3 = COL3RGB(255, 255, 255)      
						ColorP.TextSize = 10.000    

						Frame.Parent = ColorP      
						Frame.BackgroundColor3 = COL3RGB(46, 46, 46)      
						Frame.BorderColor3 = COL3RGB(18, 18, 16)      
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)      
						Frame.Size = UDIM2(0, 200, 0, 190)      
						Frame.Visible = false      
						Frame.ZIndex = 3      

						Colorpick.Name = "Colorpick"      
						Colorpick.Parent = Frame      
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Colorpick.BorderColor3 = COL3RGB(18, 18, 16)      
						Colorpick.ClipsDescendants = false      
						Colorpick.Position = UDIM2(0, 40, 0, 10)      
						Colorpick.Size = UDIM2(0, 150, 0, 150)      
						Colorpick.AutoButtonColor = false      
						Colorpick.Image = "rbxassetid://4155801252"      
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)      
						Colorpick.ZIndex = 3      

						ColorDrag.Name = "ColorDrag"      
						ColorDrag.Parent = Colorpick      
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)      
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						ColorDrag.BorderColor3 = COL3RGB(18, 18, 16)      
						ColorDrag.Size = UDIM2(0, 4, 0, 4)      
						ColorDrag.ZIndex = 3      

						Huepick.Name = "Huepick"      
						Huepick.Parent = Frame      
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huepick.BorderColor3 = COL3RGB(18, 18, 16)      
						Huepick.ClipsDescendants = true      
						Huepick.Position = UDIM2(0, 10, 0, 10)      
						Huepick.Size = UDIM2(0, 20, 0, 150)      
						Huepick.AutoButtonColor = false      
						Huepick.Image = "rbxassetid://3641079629"      
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)      
						Huepick.ImageTransparency = 1      
						Huepick.BackgroundTransparency = 0      
						Huepick.ZIndex = 3      

						local HueFrameGradient = INST("UIGradient")      
						HueFrameGradient.Rotation = 90      
						HueFrameGradient.Name = "HueFrameGradient"      
						HueFrameGradient.Parent = Huepick      
						HueFrameGradient.Color = ColorSequence.new {      
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),      
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),      
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),      
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),      
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),      
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),      
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))      
						}	      

						Huedrag.Name = "Huedrag"      
						Huedrag.Parent = Huepick      
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Huedrag.BorderColor3 = COL3RGB(18, 18, 16)      
						Huedrag.Size = UDIM2(1, 0, 0, 2)      
						Huedrag.ZIndex = 3      

						local Transpick = INST("ImageButton")      
						local Transcolor = INST("ImageLabel")      
						local Transdrag = INST("Frame")      

						Transpick.Name = "Transpick"      
						Transpick.Parent = Frame      
						Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transpick.BorderColor3 = COL3RGB(18, 18, 16)      
						Transpick.Position = UDIM2(0, 10, 0, 167)      
						Transpick.Size = UDIM2(0, 180, 0, 15)      
						Transpick.AutoButtonColor = false      
						Transpick.Image = "rbxassetid://3887014957"      
						Transpick.ScaleType = Enum.ScaleType.Tile      
						Transpick.TileSize = UDIM2(0, 10, 0, 10)      
						Transpick.ZIndex = 3      

						Transcolor.Name = "Transcolor"      
						Transcolor.Parent = Transpick      
						Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transcolor.BackgroundTransparency = 1.000      
						Transcolor.Size = UDIM2(1, 0, 1, 0)      
						Transcolor.Image = "rbxassetid://3887017050"      
						Transcolor.ImageColor3 = COL3RGB(255, 0, 4)      
						Transcolor.ZIndex = 3      

						Transdrag.Name = "Transdrag"      
						Transdrag.Parent = Transcolor      
						Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)      
						Transdrag.BorderColor3 = COL3RGB(18, 18, 16)      
						Transdrag.Position = UDIM2(0, -1, 0, 0)      
						Transdrag.Size = UDIM2(0, 2, 1, 0)      
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

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)      
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)      
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)      

						if data.default and data.default.Color ~= nil then      
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()      

							ColorH = CLAMP(ColorH,0,1)      
							ColorS = CLAMP(ColorS,0,1)      
							ColorV = CLAMP(ColorV,0,1)      
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)      
						end      
						if data.default and data.default.Transparency ~= nil then      
							Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0)      
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
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)      
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)      
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)      
							ColorS = 1-ColorX      
							ColorV = 1-ColorY      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							values[tabname][sectorname][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateHue()      
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)      
							Huedrag.Position = UDIM2(0, 0, 0, y)      
							hue = y/148      
							ColorH = 1-hue      
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)      
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)      
							values[tabname][sectorname][text] = Element.value      
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)      
							callback(Element.value)      
						end      
						local function updateTrans()      
							local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178)      
							Transdrag.Position = UDIM2(0, x, 0, 0)      
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
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(172, 208, 255)}) 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
							else 
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(46, 46, 46)}) 
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})  
							end 
							values[tabname][sectorname][text] = Element.value 
						end 
						values[tabname][sectorname][text] = Element.value 
						function Element:SetValue(value) 
							Element.value = value 
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B) 
							ColorH, ColorS, ColorV = duplicate:ToHSV() 
							ColorH = CLAMP(ColorH,0,1) 
							ColorS = CLAMP(ColorS,0,1) 
							ColorV = CLAMP(ColorV,0,1) 

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0) 
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1) 
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV) 
							update() 
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1) 
						end 
					elseif type == "TextBox" then 
						Section.Size = Section.Size + UDIM2(0,0,0,30) 
						Element.value = {Text = data.default and data.default.text or ""} 

						local Box = INST("Frame") 
						local TextBox = INST("TextBox") 

						Box.Name = "Box" 
						Box.Parent = Inner 
						Box.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Box.BackgroundTransparency = 1.000 
						Box.Position = UDIM2(0, 0, 0.542059898, 0) 
						Box.Size = UDIM2(1, 0, 0, 30) 

						TextBox.Parent = Box 
						TextBox.BackgroundColor3 = COL3RGB(45, 45, 45) 
						TextBox.BorderColor3 = COL3RGB(18, 18, 16)   
						TextBox.Position = UDIM2(0.108303241, 0, 0.224465579, 0) 
						TextBox.Size = UDIM2(0, 175, 0, 20) 
						TextBox.Font = Enum.Font.Ubuntu
						TextBox.PlaceholderText = data.placeholder 
						TextBox.Text = Element.value.Text 
						TextBox.TextTruncate = 1
						TextBox.MultiLine = true
						TextBox.ClearTextOnFocus = false
						TextBox.TextStrokeTransparency = 0.000
						TextBox.TextColor3 = COL3RGB(255, 255, 255) 
						TextBox.TextSize = 10.000

						values[tabname][sectorname][text] = Element.value 

						TextBox:GetPropertyChangedSignal("Text"):Connect(function() 
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
						Section.Size = Section.Size + UDIM2(0,0,0,39) 
						Element.value = {Dropdown = data.options[1]} 

						local Dropdown = INST("Frame") 
						local Button = INST("TextButton") 
						local TextLabel = INST("TextLabel") 
						local Drop = INST("ScrollingFrame") 
						local Button_2 = INST("TextButton") 
						local TextLabel_2 = INST("TextLabel") 
						local UIListLayout = INST("UIListLayout") 
						local ImageLabel = INST("ImageLabel") 
						local TextLabel_3 = INST("TextLabel") 

						Dropdown.Name = "Dropdown" 
						Dropdown.Parent = Inner 
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Dropdown.BackgroundTransparency = 1.000 
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0) 
						Dropdown.Size = UDIM2(1, 0, 0, 39) 

						Button.Name = "Button" 
						Button.Parent = Dropdown 
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BorderColor3 = COL3RGB(18, 18, 16) 
						Button.Position = UDIM2(0, 30, 0, 16) 
						Button.Size = UDIM2(0, 175, 0, 17) 
						Button.AutoButtonColor = false 
						Button.Font = Enum.Font.Ubuntu
						Button.Text = "" 
						Button.TextColor3 = COL3RGB(0, 0, 0) 
						Button.TextSize = 10.000

						local UIGradient = Instance.new("UIGradient")			

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Button

						TextLabel.Parent = Button 
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
						TextLabel.BackgroundTransparency = 1.000 
						TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
						TextLabel.Position = UDIM2(0, 5, 0, 0) 
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = Element.value.Dropdown 
						TextLabel.TextStrokeTransparency = 0.000
						TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
						TextLabel.TextSize = 10.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

						local abcd = TextLabel 

						Drop.Name = "Drop" 
						Drop.Parent = Button 
						Drop.Active = true 
						Drop.BackgroundColor3 = COL3RGB(46, 46, 46) 
						Drop.BorderColor3 = COL3RGB(18, 18, 16) 
						Drop.Position = UDIM2(0, 0, 1, 1) 
						Drop.Size = UDIM2(1, 0, 0, 20) 
						Drop.Visible = false 
						Drop.BottomImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.CanvasSize = UDIM2(1, 1, 1, 1) 
						Drop.ScrollBarThickness = 4 
						Drop.TopImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.MidImage = "http://www.roblox.com/asset/?id=6724808282" 
						Drop.AutomaticCanvasSize = "Y" 
						Drop.ZIndex = 5 
						Drop.ScrollBarImageColor3 = COL3RGB(172, 208, 255)

						UIListLayout.Parent = Drop 
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center 
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder 

						local num = #data.options 
						if num > 5 then 
							Drop.Size = UDIM2(1, 0, 0, 85) 
						else 
							Drop.Size = UDIM2(1, 0, 0, 17*num) 
						end 
						local first = true 
						for i,v in ipairs(data.options) do 
							do 
								local Button = INST("TextButton") 
								local TextLabel = INST("TextLabel") 

								Button.Name = v 
								Button.Parent = Drop 
								Button.BackgroundColor3 = COL3RGB(46, 46, 46) 
								Button.BorderColor3 = COL3RGB(18, 18, 16) 
								Button.Position = UDIM2(0, 30, 0, 16) 
								Button.Size = UDIM2(0, 175, 0, 17) 
								Button.AutoButtonColor = false 
								Button.Font = Enum.Font.Ubuntu
								Button.Text = "" 
								Button.TextColor3 = COL3RGB(0, 0, 0) 
								Button.TextSize = 10.000
								Button.BorderSizePixel = 0 
								Button.ZIndex = 6 

								TextLabel.Parent = Button 
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
								TextLabel.BackgroundTransparency = 1.000 
								TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
								TextLabel.Position = UDIM2(0, 5, 0, -1) 
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0) 
								TextLabel.Font = Enum.Font.Ubuntu
								TextLabel.Text = v 
								TextLabel.TextStrokeTransparency = 0.000
								TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
								TextLabel.TextSize = 10.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left 
								TextLabel.ZIndex = 6 

								Button.MouseButton1Down:Connect(function() 
									Drop.Visible = false 
									Element.value.Dropdown = v 
									abcd.Text = v 
									values[tabname][sectorname][text] = Element.value 
									callback(Element.value) 
									Drop.CanvasPosition = Vec2(0,0) 
								end) 
								Button.MouseEnter:Connect(function() 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(172, 208, 255)}) 
								end) 
								Button.MouseLeave:Connect(function() 
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)}) 
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
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
						ImageLabel.BackgroundTransparency = 1.000 
						ImageLabel.Position = UDIM2(0, 165, 0, 6) 
						ImageLabel.Size = UDIM2(0, 6, 0, 4) 
						ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531" 

						TextLabel_3.Parent = Dropdown 
						TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255) 
						TextLabel_3.BackgroundTransparency = 1.000 
						TextLabel_3.Position = UDIM2(0, 32, 0, -1) 
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0) 
						TextLabel_3.Font = Enum.Font.Ubuntu
						TextLabel_3.Text = text 
						TextLabel_3.TextStrokeTransparency = 0.000
						TextLabel_3.TextColor3 = COL3RGB(255, 255, 255) 
						TextLabel_3.TextSize = 10.000
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left 

						Button.MouseButton1Down:Connect(function() 
							Drop.Visible = not Drop.Visible 
							if not Drop.Visible then 
								Drop.CanvasPosition = Vec2(0,0) 
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
									Drop.CanvasPosition = Vec2(0,0) 
								end 
							end 
						end) 
						values[tabname][sectorname][text] = Element.value 
					elseif type == "Slider" then 

						Section.Size = Section.Size + UDIM2(0,0,0,25) 

						local Slider = INST("Frame") 
						local TextLabel = INST("TextLabel") 
						local Button = INST("TextButton") 
						local Frame = INST("Frame") 
						local UIGradient = INST("UIGradient") 
						local UIGradient2 = INST("UIGradient") 
						local Value = INST("TextLabel") 

						Slider.Name = "Slider" 
						Slider.Parent = Inner 
						Slider.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Slider.BackgroundTransparency = 1.000 
						Slider.Position = UDIM2(0, 0, 0.653061211, 0) 
						Slider.Size = UDIM2(1, 0, 0, 25) 

						TextLabel.Parent = Slider 
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
						TextLabel.BackgroundTransparency = 1.000 
						TextLabel.Position = UDIM2(0, 32, 0, -2) 
						TextLabel.Size = UDIM2(0, 100, 0, 15) 
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.TextStrokeTransparency = 0.000
						TextLabel.Text = text 
						TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
						TextLabel.TextSize = 10.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left 

						Button.Name = "Button" 
						Button.Parent = Slider 
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BorderColor3 = COL3RGB(18, 18, 16)  
						Button.Position = UDIM2(0, 30, 0, 15) 
						Button.Size = UDIM2(0, 175, 0, 5) 
						Button.AutoButtonColor = false 
						Button.Font = Enum.Font.Ubuntu
						Button.Text = "" 
						Button.TextColor3 = COL3RGB(0, 0, 0) 
						Button.TextSize = 10.000

						UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(42, 42, 42)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(33, 33, 32))}
						UIGradient2.Rotation = 90
						UIGradient2.Parent = Button

						Frame.Parent = Button 
						Frame.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Frame.BorderSizePixel = 0 
						Frame.Size = UDIM2(0.5, 0, 1, 0) 

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Frame

						Value.Name = "Value" 
						Value.Parent = Slider 
						Value.TextStrokeTransparency = 0.000
						Value.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Value.BackgroundTransparency = 1.000 
						Value.Position = UDIM2(0, 30, 0, 15) 
						Value.Size = UDIM2(0, 175, 0, 5) 
						Value.Font = Enum.Font.Ubuntu
						Value.Text = "50" 
						Value.TextColor3 = COL3RGB(255, 255, 255) 
						Value.TextSize = 10.000 
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
							Frame.Size = UDIM2(a,0,1,0) 
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
						Frame.Size = UDIM2(a,0,1,0) 
						values[tabname][sectorname][text] = Element.value 
						local uis = game:GetService("UserInputService") 
						local mouse = game.Players.LocalPlayer:GetMouse() 
						local val 
						Button.MouseButton1Down:Connect(function() 
							Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5) 
							val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0 
							Value.Text = val 
							Element.value.Slider = val 
							values[tabname][sectorname][text] = Element.value 
							callback(Element.value) 
							moveconnection = mouse.Move:Connect(function() 
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 180), 0, 5) 
								val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) 
								Value.Text = val 
								Element.value.Slider = val 
								values[tabname][sectorname][text] = Element.value 
								callback(Element.value) 
							end) 
							releaseconnection = uis.InputEnded:Connect(function(Mouse) 
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then 
									Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5) 
									val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) 
									values[tabname][sectorname][text] = Element.value 
									callback(Element.value) 
									moveconnection:Disconnect() 
									releaseconnection:Disconnect() 
								end 
							end) 
						end) 
					elseif type == "Button" then 

						Section.Size = Section.Size + UDIM2(0,0,0,24) 
						local Button = INST("Frame") 
						local Button_2 = INST("TextButton") 
						local TextLabel = INST("TextLabel") 
						local UIGradient = Instance.new("UIGradient")

						Button.Name = "Button" 
						Button.Parent = Inner 
						Button.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button.BackgroundTransparency = 1.000 
						Button.Position = UDIM2(0, 0, 0.236059487, 0) 
						Button.Size = UDIM2(1, 0, 0, 24) 

						Button_2.Name = "Button" 
						Button_2.Parent = Button 
						Button_2.BackgroundColor3 = COL3RGB(255, 255, 255) 
						Button_2.BorderColor3 = COL3RGB(18, 18, 16) 
						Button_2.Position = UDIM2(0, 30, 0.5, -9) 
						Button_2.Size = UDIM2(0, 175, 0, 18) 
						Button_2.AutoButtonColor = false 
						Button_2.Font = Enum.Font.Ubuntu
						Button_2.Text = "" 
						Button_2.TextColor3 = COL3RGB(0, 0, 0) 
						Button_2.TextSize = 10.000

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
						UIGradient.Rotation = 90
						UIGradient.Parent = Button_2

						TextLabel.Parent = Button_2 
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
						TextLabel.BackgroundTransparency = 1.000 
						TextLabel.BorderColor3 = COL3RGB(18, 18, 16) 
						TextLabel.Size = UDIM2(1, 0, 1, 0) 
						TextLabel.Font = Enum.Font.Ubuntu
						TextLabel.Text = text 
						TextLabel.TextStrokeTransparency = 0.000
						TextLabel.TextColor3 = COL3RGB(255, 255, 255) 
						TextLabel.TextSize = 10.000

						function Element:SetValue() 
						end 

						Button_2.MouseButton1Down:Connect(function() 
							TextLabel.TextColor3 = COL3RGB(97, 59, 227)
							library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(172, 208, 255)}) 
							callback() 
						end) 
						Button_2.MouseEnter:Connect(function() 
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(124, 81, 149)}) 
						end) 
						Button_2.MouseLeave:Connect(function() 
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)}) 
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
				library.tabs[tabname][sectorname] = Sector
				return Sector 
			end 
			library.tabs[tabname] = Tab
			return Tab 
		end 

		floppa.Parent = game.CoreGui 
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
local ViewmodelOffset = CF(0,0,0) 
local Smokes = {} 
local Mollies = {} 
local RayIgnore = workspace.Ray_Ignore 
local RageTarget 
local GetIcon = require(game.ReplicatedStorage.GetIcon) 
local BodyVelocity = INST("BodyVelocity") 
BodyVelocity.MaxForce = Vec3(HUGE, 0, HUGE) 
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris} 
	local FakelagFolder = INST('Folder', workspace.Camera)
	FakelagFolder.Name = 'Fakelag'
local FakeAnim = INST("Animation", workspace) 
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
	local NewScope 
	do 
		local ScreenGui = Instance.new("ScreenGui")
		local ScreenGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local UIGradient = Instance.new("UIGradient")
		local Frame_2 = Instance.new("Frame")
		local UIGradient_2 = Instance.new("UIGradient")
		local Frame_3 = Instance.new("Frame")
		local UIGradient_3 = Instance.new("UIGradient")
		local Frame_4 = Instance.new("Frame")
		local UIGradient_4 = Instance.new("UIGradient")

		ScreenGui.Enabled = false 
		ScreenGui.IgnoreGuiInset = true 
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global 

		Frame.Parent = ScreenGui
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 0.200
		Frame.BorderColor3 = Color3.fromRGB(26, 29, 40)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.427604169, 0, 0.498901099, 0)
		Frame.Size = UDim2.new(0.0549999997, 0, 0, 2)

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(219, 224, 255)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(171, 187, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 125, 255))}
		UIGradient.Parent = Frame

		Frame_2.Parent = ScreenGui
		Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_2.BackgroundTransparency = 0.200
		Frame_2.BorderColor3 = Color3.fromRGB(26, 29, 40)
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0.5, 0, 0.35164836, 0)
		Frame_2.Size = UDim2.new(0, 2, 0.115999997, 0)

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(219, 224, 255)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(171, 187, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 125, 255))}
		UIGradient_2.Rotation = 86
		UIGradient_2.Parent = Frame_2

		Frame_3.Parent = ScreenGui
		Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_3.BackgroundTransparency = 0.200
		Frame_3.BorderColor3 = Color3.fromRGB(26, 29, 40)
		Frame_3.BorderSizePixel = 0
		Frame_3.Position = UDim2.new(0.517187476, 0, 0.498901099, 0)
		Frame_3.Size = UDim2.new(0.0549999997, 0, 0, 2)

		UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(219, 224, 255)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(171, 187, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 125, 255))}
		UIGradient_3.Rotation = 180
		UIGradient_3.Parent = Frame_3

		Frame_4.Parent = ScreenGui
		Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame_4.BackgroundTransparency = 0.200
		Frame_4.BorderColor3 = Color3.fromRGB(26, 29, 40)
		Frame_4.BorderSizePixel = 0
		Frame_4.Position = UDim2.new(0.5, 0, 0.531868219, 0)
		Frame_4.Size = UDim2.new(0, 2, 0.115999997, 0)

		UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(219, 224, 255)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(171, 187, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(70, 125, 255))}
		UIGradient_4.Rotation = 270
		UIGradient_4.Parent = Frame_4

		ScreenGui.Parent = game.CoreGui 

		NewScope = ScreenGui 
end 
local oldSkybox 

local function VectorRGB(RGB) 
	return Vec3(RGB.R, RGB.G, RGB.B) 
end 
local function new(name, prop) 
	local obj = INST(name) 
	for i,v in pairs(prop) do 
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
	Accessory.Mesh.VertexColor = Vec3(1,1,1) 
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
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate 
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Shirt") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate = "" 
		end 
	end 
	if LocalPlayer.Character:FindFirstChildOfClass("Pants") then 
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate 
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate = "" 
		end 
	end 
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			INSERT(SelfObj, v) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = INST("StringValue") 
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
	local vector = CF(pos1.Position, pos2).LookVector 
	local angle = ACOS(start:Dot(vector)) 
	local deg = DEG(angle) 
	return deg 
end 
local Ping = game.Stats.PerformanceStats.Ping:GetValue() 

for i,v in pairs(Viewmodels:GetChildren()) do 
	if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then 
		v.HumanoidRootPart.Transparency = 1 
	end 
end 

local Models = game:GetObjects("rbxassetid://7285197035")[1] 
	repeat wait() until Models ~= nil 
local ChrModels = game:GetObjects("rbxassetid://7642937303")[1] 
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
			INSERT(AllGloves[fldr.Name], modl.Name) 
		end 
	end 
end 

for i,v in pairs(Models.Knives:GetChildren()) do 
	INSERT(AllKnives, v.Name) 
end 

local AllSkins = {} 
local AllWeapons = {} 
local AllCharacters = {} 

for i,v in pairs(ChrModels:GetChildren()) do 
	INSERT(AllCharacters, v.Name) 
end 

local skins = { 
	{["Weapon"] = "AWP", ["SkinName"] = "Bot", ["Skin"] = {["Scope"] = "6572594838", ["Handle"] = "6572594077"}} 
} 

for _,skin in pairs (skins) do 
	local Folder = INST("Folder") 
	Folder.Name = skin["SkinName"] 
	Folder.Parent = Skins[skin["Weapon"]] 

	for _,model in pairs (skin["Skin"]) do 
		local val = INST("StringValue") 
		val.Name = _ 
		val.Value = "rbxassetid://"..model 
		val.Parent = Folder 
	end 
end 

for i,v in pairs(Skins:GetChildren()) do 
	INSERT(AllWeapons, v.Name) 
end 

TBLSORT(AllWeapons, function(a,b) 
	return a < b 
end) 

for i,v in ipairs(AllWeapons) do 
	AllSkins[v] = {} 
	INSERT(AllSkins[v], "Inventory") 
	for _,v2 in pairs(Skins[v]:GetChildren()) do 
		if not v2:FindFirstChild("Animated") then 
			INSERT(AllSkins[v], v2.Name) 
		end 
	end 
end 

makefolder("ovalua") 

local allluas = {} 

for _,lua in pairs(listfiles("ovalua")) do 
	local luaname = GSUB(lua, "ovalua\\", "") 
	INSERT(allluas, luaname) 
end 

RunService.RenderStepped:Wait() 

local gui = library:New("Floppaware - Counter-Blox") 
local legit = gui:Tab("legit") 
local rage = gui:Tab("rage") 
local visuals = gui:Tab("visuals") 
local misc = gui:Tab("misc") 
local skins = gui:Tab("skins") 
local luas = gui:Tab("luas") 

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
	loadstring(readfile("ovalua\\"..values.luas["lua scripts"].lua.Scroll))() 
end) 

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
aimbot:Element("Toggle", "automatic penetration") 
aimbot:Element("Jumbobox", "resolver", {options = {"pitch", "roll"}}) 
aimbot:Element("Toggle", "delay shot") 
aimbot:Element("Toggle", "force hit") 
aimbot:Element("Toggle", "sex package") 
aimbot:Element("Toggle", "teammates") 
aimbot:Element("Toggle", "auto baim") 
aimbot:Element("Toggle", "knifebot")
aimbot:Element('Slider', 'Knifebot Radius', {min = -1, max = 250, default = 20})

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
	Tab:Element("Slider", "minimum damage", {min = 1, max = 100, default = 20}) 
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
antiaim:Element("Dropdown", "pitch", {options = {"none", "up", "down", "zero", "180", "random"}}) 
antiaim:Element("Toggle", "extend pitch") 
antiaim:Element("Dropdown", "body roll", {options = {"off", "180"}}) 
antiaim:Element("Slider", "spin speed", {min = 1, max = 48, default = 4}) 

local others = rage:Sector("others", "Right") 
others:Element("Toggle", "remove head") 
others:Element("Toggle", "no animations") 
others:Element("Dropdown", "leg movement", {options = {"off", "slide"}}) 


	local LagTick = 0
	local fakelag = rage:Sector('fakelag', 'Right')
	fakelag:Element('Slider', 'set ping', {min = -100, max = 100, default = 0})
	game:GetService('Players').LocalPlayer.Ping.Changed:Connect(function()
		if values.rage.fakelag['set ping'].Slider ~= 0 then 
			game:GetService('ReplicatedStorage').Events.UpdatePing:FireServer( values.rage.fakelag['set ping'].Slider/10)
		end
	end)
	fakelag:Element('ToggleKeybind', 'enabled', {default = {Toggle = false}}, function(tbl)
	    library:SetWaterVisible(tbl.Toggle) 
		if tbl.Toggle then
		else
			FakelagFolder:ClearAllChildren()
			game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
		end
	end)
	fakelag:Element('Dropdown', 'amount', {options = {'static', 'freeze', 'tfreeze', 'underfreeze'}})
	fakelag:Element('Slider', 'limit', {min = 1, max = 106, default = 8})
	fakelag:Element('Slider', 'under y', {min = 1, max = 50, default = 8})
	fakelag:Element('Toggle', 'random')
	fakelag:Element('ToggleColor', 'visualize lag', {default = {Toggle = false, Color = COL3RGB(255,255,255)}}, function(tbl)
		if tbl.Toggle then
			for _,obj in pairs(FakelagFolder:GetChildren()) do
				obj.Color = tbl.Color
			end
		else
			FakelagFolder:ClearAllChildren()
		end
	end)

	local savedcamerapart = Instance.new('Part', RayIgnore)
	savedcamerapart.Anchored = true
	savedcamerapart.CanCollide = false
	savedcamerapart.Size = Vector3.new(1, 1, 1)
	savedcamerapart.Transparency = 1
	fakelag:Element('ToggleKeybind', 'ping spike')
	coroutine.wrap(function()
        local flindicator = Instance.new("ScreenGui")
local wgrgerqgerq = Instance.new("TextLabel")
local grgrgr = Instance.new("UIGradient")
local gradins = Instance.new("Frame")
local qewgrqgwrgqr = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local niggerhaha = Instance.new("Frame")
local lolfaggot = Instance.new("Frame")
local gergergre = Instance.new("UIGradient")

flindicator.Name = "fl indicator"
flindicator.Parent = game.CoreGui
flindicator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

wgrgerqgerq.Name = "wgrgerqgerq"
wgrgerqgerq.Parent = flindicator
wgrgerqgerq.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
wgrgerqgerq.BorderColor3 = Color3.fromRGB(14, 29, 32)
wgrgerqgerq.Position = UDim2.new(0.161994383, 0, 0.437578738, 0)
wgrgerqgerq.Size = UDim2.new(0, 62, 0, 22)
wgrgerqgerq.Font = Enum.Font.Ubuntu
wgrgerqgerq.Text = ""
wgrgerqgerq.AutomaticSize = Enum.AutomaticSize.X
wgrgerqgerq.TextColor3 = Color3.fromRGB(255, 255, 255)
wgrgerqgerq.TextSize = 10.000
wgrgerqgerq.TextStrokeTransparency = 0.000
wgrgerqgerq.TextXAlignment = Enum.TextXAlignment.Left

grgrgr.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(46, 43, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 24, 24))}
grgrgr.Rotation = 90
grgrgr.Name = "grgrgr"
grgrgr.Parent = wgrgerqgerq

gradins.Name = "gradins"
gradins.Parent = wgrgerqgerq
gradins.AutomaticSize = Enum.AutomaticSize.X
gradins.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gradins.BorderSizePixel = 0
gradins.Size = UDim2.new(0, 62, 0, 2)

qewgrqgwrgqr.Name = "qewgrqgwrgqr"
qewgrqgwrgqr.Parent = gradins
qewgrqgwrgqr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
qewgrqgwrgqr.BackgroundTransparency = 1.000
qewgrqgwrgqr.BorderColor3 = Color3.fromRGB(27, 42, 53)
qewgrqgwrgqr.Position = UDim2.new(0, 0, 1, 0)
qewgrqgwrgqr.Size = UDim2.new(0, 62, 0, 19)
qewgrqgwrgqr.Font = Enum.Font.Ubuntu
qewgrqgwrgqr.AutomaticSize = Enum.AutomaticSize.X
qewgrqgwrgqr.Text = "   Fakelag Indicator"
qewgrqgwrgqr.TextColor3 = Color3.fromRGB(255, 255, 255)
qewgrqgwrgqr.TextSize = 10.000
qewgrqgwrgqr.TextStrokeTransparency = 0.000
qewgrqgwrgqr.TextXAlignment = Enum.TextXAlignment.Left

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(124, 81, 149)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(79, 48, 112))}
UIGradient.Rotation = 90
UIGradient.Parent = gradins

niggerhaha.Name = "niggerhaha"
niggerhaha.Parent = gradins
niggerhaha.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
niggerhaha.BorderColor3 = Color3.fromRGB(25, 24, 24)
niggerhaha.AutomaticSize = Enum.AutomaticSize.X
niggerhaha.Position = UDim2.new(0, 0, 9.90899658, 2)
niggerhaha.Size = UDim2.new(0, 102, 0, 14)

lolfaggot.Name = "lolfaggot"
lolfaggot.Parent = niggerhaha
lolfaggot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lolfaggot.BorderSizePixel = 0
lolfaggot.Position = UDim2.new(0, 0, 0, -1)
lolfaggot.Size = UDim2.new(0, 0, 0, 14)

gergergre.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(75, 92, 112))}
gergergre.Rotation = 90
gergergre.Name = "gergergre"
gergergre.Parent = lolfaggot

local function OWOK_fake_script() -- wgrgerqgerq.LocalScript 
	local script = Instance.new('LocalScript', wgrgerqgerq)

	local watermark = script.Parent
	watermark.Draggable = true
	watermark.Active = true
end
coroutine.wrap(OWOK_fake_script)()

			while wait(1/16) do
			LagTick = CLAMP(LagTick + 1, 0, values.rage.fakelag.limit.Slider)
			if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and values.rage.fakelag.enabled.Toggle then
				if LagTick >= (values.rage.fakelag.random.Toggle and math.random(0, values.rage.fakelag.limit.Slider) or values.rage.fakelag.limit.Slider)  then
					if values.rage.fakelag.amount.Dropdown == 'static' then 
						game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
						FakelagFolder:ClearAllChildren()
						LagTick = 0
						if values.rage.fakelag['visualize lag'].Toggle then
							for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
								if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
									local part = INST('Part')
									part.CFrame = hitbox.CFrame
									part.Anchored = true
									part.CanCollide = false
									part.Material = Enum.Material.ForceField
									part.Color = values.rage.fakelag['visualize lag'].Color
									part.Name = hitbox.Name
									part.Transparency = 0
									part.Size = hitbox.Size
									part.Parent = FakelagFolder
								end
							end
						end
					elseif values.rage.fakelag.amount.Dropdown == 'freeze' and allowedtofreeze then 
						LagTick = 0
						FakelagFolder:ClearAllChildren()

						pcall(function()
							workspace.FreezeCharacter2:Remove()
						end)
						wait(0.1)
                        lolfaggot:TweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
						pcall(function()
							local part = INST('Part', workspace)

							part.Size = Vector3.new(30, 1, 30) 


							part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
							part.CanCollide = false
							part.Transparency = 1
							part.Name = 'FreezeCharacter2'


							local weld = INST('Weld',part)
							weld.Part0 = part
							weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


							if values.rage.fakelag['visualize lag'].Toggle then
								for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
									if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
										local part = INST('Part')
										part.CFrame = hitbox.CFrame
										part.Anchored = true
										part.CanCollide = false
										part.Material = Enum.Material.ForceField
										part.Color = values.rage.fakelag['visualize lag'].Color
										part.Name = hitbox.Name
										part.Transparency = 0
										part.Size = hitbox.Size
										part.Parent = FakelagFolder
									end
								end
							end
						end)

						wait(0.1)
						lolfaggot:TweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
					elseif values.rage.fakelag.amount.Dropdown == 'tfreeze' and allowedtofreeze then 
						LagTick = 0
						FakelagFolder:ClearAllChildren()
						pcall(function()

						end)
						pcall(function()
							workspace.FreezeCharacter2:Remove()
						end)
						local loopstuff
						pcall(function()
							saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							savedcamerapart.CFrame = workspace.Camera.Focus
							workspace.Camera.CameraSubject = savedcamerapart
							loopstuff = game:GetService('RunService').Stepped:Connect(function()
								savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
							end)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
						end)

						wait(0.15)
						lolfaggot:TweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.15,true)
						pcall(function()
							local part = INST('Part', workspace)

							part.Size = Vector3.new(30, 1, 30) 


							part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
							part.CanCollide = false
							part.Transparency = 1
							part.Name = 'FreezeCharacter2'


							local weld = INST('Weld',part)
							weld.Part0 = part
							weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


							if values.rage.fakelag['visualize lag'].Toggle then
								for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
									if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
										local part = INST('Part')
										part.CFrame = hitbox.CFrame
										part.Anchored = true
										part.CanCollide = false
										part.Material = Enum.Material.ForceField
										part.Color = values.rage.fakelag['visualize lag'].Color
										part.Name = hitbox.Name
										part.Transparency = 0
										part.Size = hitbox.Size
										part.Parent = FakelagFolder
									end
								end
							end
						end)

						wait(0.01)
						lolfaggot:TweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01,true)
						pcall(function()
							loopstuff:Disconnect()
							workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
							workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
						end)


						wait(0.1)
						lolfaggot:TweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
					elseif values.rage.fakelag.amount.Dropdown == 'underfreeze'  and allowedtofreeze then 
						LagTick = 0
						FakelagFolder:ClearAllChildren()

						pcall(function()
							workspace.FreezeCharacter2:Remove()
						end)
						local loopstuff
						pcall(function()
							saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							savedcamerapart.CFrame = workspace.Camera.Focus
							workspace.Camera.CameraSubject = savedcamerapart
							loopstuff = game:GetService('RunService').Stepped:Connect(function()
								savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
							end)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
						end)

						wait(0.15)
						lolfaggot:TweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.15,true)
						pcall(function()
							local part = INST('Part', workspace)

							part.Size = Vector3.new(30, 1, 30) 


							part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
							part.CanCollide = false
							part.Transparency = 1
							part.Name = 'FreezeCharacter2'


							local weld = INST('Weld',part)
							weld.Part0 = part
							weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart


							if values.rage.fakelag['visualize lag'].Toggle then
								for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
									if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
										local part = INST('Part')
										part.CFrame = hitbox.CFrame
										part.Anchored = true
										part.CanCollide = false
										part.Material = Enum.Material.ForceField
										part.Color = values.rage.fakelag['visualize lag'].Color
										part.Name = hitbox.Name
										part.Transparency = 0
										part.Size = hitbox.Size
										part.Parent = FakelagFolder
									end
								end
							end
						end)

						wait(0.01)
						lolfaggot:TweenSize(UDim2.new(0, 102, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.01,true)
						pcall(function()
							loopstuff:Disconnect()
							workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
							workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
						end)


						wait(0.1)
						lolfaggot:TweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
					end
				else
					lolfaggot:TweenSize(UDim2.new(0, 0, 0, 14),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
					if values.rage.fakelag.enabled.Toggle and values.rage.fakelag.amount.Dropdown == 'static' then
						game:GetService('NetworkClient'):SetOutgoingKBPSLimit(1)
					end
				end
			else

				pcall(function()
					workspace.FreezeCharacter2:Remove()
				end)
				FakelagFolder:ClearAllChildren()
				game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
			end
		end
	end)()

	freezebusy1 = false
	freezebusy2 = false

local exploits = rage:Sector("exploits", "Left") 
exploits:Element("ToggleKeybind", "double tap") 
exploits:Element("ToggleKeybind", "kill all") 


local players = visuals:Sector("players", "Left") 
players:Element("Toggle", "teammates") 
players:Element("ToggleColor", "box", {default = {Color = COL3RGB(255,255,255)}}) 
players:Element("ToggleColor", "name", {default = {Color = COL3RGB(255,255,255)}}) 
players:Element("Toggle", "health") 
players:Element("ToggleColor", "weapon", {default = {Color = COL3RGB(255,255,255)}}) 
players:Element("ToggleColor", "weapon icon", {default = {Color = COL3RGB(255,255,255)}}) 
players:Element("Jumbobox", "indicators", {options = {"armor"}}) 
players:Element("Jumbobox", "outlines", {options = {"drawings", "text"}, default = {Jumbobox = {"drawings", "text"}}}) 
players:Element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}}) 
players:Element("Slider", "size", {min = 12, max = 16, default = 13}) 
players:Element("ToggleColor", "chams", nil, function(tbl) 
	for _,Player in pairs(Players:GetPlayers()) do 
		if Player.Character then 
			for _2,Obj in pairs(Player.Character:GetDescendants()) do 
				if Obj.Name == "VisibleCham" or Obj.Name == "WallCham" then 
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
effects:Element("ToggleTrans", "weapon chams", {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl) 
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
				v.Mesh.VertexColor = Vec3(1,1,1) 
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
effects:Element("ToggleTrans", "accessory chams", {default = {Color = COL3RGB(255,255,255)}}, function(val) 
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
effects:Element("ToggleTrans", "arm chams", {default = {Color = COL3RGB(255,255,255)}}, function(val) 
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
effects:Element("Jumbobox", "removals", {options = {"scope", "scope lines", "flash", "smoke", "decals", "shadows", "clothes"}}, function(val) 
	local tbl = val.Jumbobox 
	if TBLFIND(tbl, "decals") then 
		Client.createbullethole = function() end 
		for i,v in pairs(workspace.Debris:GetChildren()) do 
			if v.Name == "Bullet" or v.Name == "SurfaceGui" then 
				v:Destroy() 
			end 
		end 
	else 
		Client.createbullethole = oldcreatebullethole 
	end 
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
effects:Element("ToggleColor", "world color", {default = {Color = COL3RGB(255,255,255)}}, function(val) 
	if val.Toggle then 
		Camera.ColorCorrection.TintColor = val.Color 
	else 
		Camera.ColorCorrection.TintColor = COL3RGB(255,255,255) 
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
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then 
		Camera.FieldOfView = value.Slider 
	end 
end) 
self:Element("Toggle", "on scope") 
self:Element("Toggle", "viewmodel changer") 
self:Element("Slider", "viewmodel x", {min = -10, max = 10}, function(val) 
	ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "viewmodel y", {min = -10, max = 10}, function(val) 
	ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "viewmodel z", {min = -10, max = 10}, function(val) 
	ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("Slider", "roll", {min = -100, max = 100}, function(val) 
	ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50) 
end) 
self:Element("ToggleColor", "self chams", {default = {Color = COL3RGB(255,255,255)}}, function(tbl) 
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
self:Element("Slider", "scope blend", {min = 0, max = 100, default = 0}) 

local ads = Client.updateads 
Client.updateads = function(self, ...) 
	local args = {...} 
	coroutine.wrap(function() 
		wait() 
		if LocalPlayer.Character ~= nil then 
			for _,part in pairs(LocalPlayer.Character:GetDescendants()) do 
				if part:IsA("Part") or part:IsA("MeshPart") then 
					if part.Transparency ~= 1 then 
						part.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0 
					end 
				end 
				if part:IsA("Accessory") then 
					part.Handle.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0 
				end 
			end 
		end 
	end)() 
	return ads(self, ...) 
end 

local world = visuals:Sector("world", "Left") 
world:Element("ToggleTrans", "molly radius", {default = {Color = COL3RGB(255,0,0)}}, function(tbl) 
	if RayIgnore:FindFirstChild("Fires") == nil then return end 
	if tbl.Toggle then 
		for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do 
			fire.Transparency = tbl.Transparency 
			fire.Color = tbl.Color 
		end 
	else 
		for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do 
			fire.Transparency = 1 
		end 
	end 
end) 
world:Element("ToggleColor", "smoke radius", {default = {Color = COL3RGB(0, 255, 0)}}, function(tbl) 
	if RayIgnore:FindFirstChild("Smokes") == nil then return end 
	if tbl.Toggle then 
		for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do 
			smoke.Transparency = 0 
			smoke.Color = tbl.Color 
		end 
	else 
		for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do 
			smoke.Transparency = 1 
		end 
	end 
end) 
world:Element("ToggleColor", "bullet tracers", {default = {Color = COL3RGB(0, 0, 255)}}) 
world:Element("ToggleColor", "impacts", {default = {Color = COL3RGB(255, 0, 0)}}) 
world:Element("ToggleColor", "hit chams", {default = {Color = COL3RGB(0, 0, 255)}}) 
world:Element("Dropdown", "hitsound", {options = {"none", "skeet", "neverlose", "rust", "bag", "baimware"}}) 
world:Element("Slider", "sound volume", {min = 1, max = 5, default = 3}) 
world:Element("Dropdown", "skybox", {options = {"none", "nebula", "vaporwave", "clouds"}}, function(tbl) 
	local sky = tbl.Dropdown 
	if sky ~= "none" then 
		if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end 
		local skybox = INST("Sky") 
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
world:Element("ToggleColor", "item esp", {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl) 
	for i,weapon in pairs(workspace.Debris:GetChildren()) do 
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then 
			weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 
		end 
	end 
end) 
world:Element("Jumbobox", "types", {options = {"icon"}}, function(tbl) 
	for i,weapon in pairs(workspace.Debris:GetChildren()) do 
		if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then 
			weapon.BillboardGui.ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(tbl.Jumbobox, "icon") and true or false 
			weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		end 
	end 
end) 
local configs = misc:Sector("configs", "Left") 
configs:Element("TextBox", "config", {placeholder = "config name"}) 
configs:Element("Button", "save", {}, function() if values.misc.configs.config.Text ~= "" then library:SaveConfig(values.misc.configs.config.Text) end end) 
configs:Element("Button", "load", {}, function() if values.misc.configs.config.Text ~= "" then ConfigLoad:Fire(values.misc.configs.config.Text) end end) 

	local noclip = misc:Sector("noclip", "Left")
	noclip:Element("ToggleKeybind", "noclip", {}, function(tbl)
		if tbl.Toggle and tbl.Active and LocalPlayer.Character then
			Fly = game:GetService("RunService").Stepped:Connect(function()
				spawn(function()
					pcall(function()
						local speed = values.misc.noclip["noclip speed"].Slider * 8
						local velocity = Vector3.new(0, 1, 0)

						if UserInputService:IsKeyDown(Enum.KeyCode.W) then
							velocity = velocity + (Camera.CoordinateFrame.lookVector * speed)
						end
						if UserInputService:IsKeyDown(Enum.KeyCode.A) then
							velocity = velocity + (Camera.CoordinateFrame.rightVector * -speed)
						end
						if UserInputService:IsKeyDown(Enum.KeyCode.S) then
							velocity = velocity + (Camera.CoordinateFrame.lookVector * -speed)
						end
						if UserInputService:IsKeyDown(Enum.KeyCode.D) then
							velocity = velocity + (Camera.CoordinateFrame.rightVector * speed)
						end

						LocalPlayer.Character.HumanoidRootPart.Velocity = velocity
						LocalPlayer.Character.Humanoid.PlatformStand = true
					end)
				end)
			end)

			Noclip = game:GetService("RunService").Stepped:Connect(function()
				for i,v in pairs(LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			end)
		else
			pcall(function()
				Fly:Disconnect()
				Noclip:Disconnect()
				LocalPlayer.Character.HumanoidRootPart.Velocity = -2.90707, 0.00781632, -11.7204
				LocalPlayer.Character.Humanoid.PlatformStand = false
				for i,v in pairs(LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
			end)
		end
	end)

	noclip:Element("Slider", "noclip speed", {min = 1, max = 25, default = 1})

local crosshaireditor = misc:Sector("crosshair editor", "Right") 
local function UpdateCrosshair() 
	if values.misc["crosshair editor"].enabled.Toggle then 
		local length = values.misc["crosshair editor"].length.Slider 
		Crosshair.LeftFrame.Size = UDIM2(0, length, 0, 2) 
		Crosshair.RightFrame.Size = UDIM2(0, length, 0, 2) 
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, length) 
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, length) 
		for _,frame in pairs(Crosshair:GetChildren()) do 
			if FIND(frame.Name, "Frame") then 
				frame.BorderColor3 = COL3(0,0,0) 
				if values.misc["crosshair editor"].border.Toggle then 
					frame.BorderSizePixel = 1 
				else 
					frame.BorderSizePixel = 0 
				end 
			end 
		end 
	else 
		Crosshair.LeftFrame.Size = UDIM2(0, 10, 0, 2) 
		Crosshair.RightFrame.Size = UDIM2(0, 10, 0, 2) 
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, 10) 
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, 10) 
		for _,frame in pairs(Crosshair:GetChildren()) do 
			if FIND(frame.Name, "Frame") then 
				frame.BorderSizePixel = 0 
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
		LocalPlayer.Cash.Value = 8000 
	end 
end) 
client:Element("Toggle", "infinite crouch") 
client:Element("Jumbobox", "damage bypass", {options = {"fire", "fall"}}) 
client:Element("Jumbobox", "gun modifiers", {options = {"recoil", "spread", "reload", "equip", "ammo", "automatic", "penetration", "firerate"}}) 
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
client:Element("ToggleColor", "hitmarker", {default = {Color = COL3RGB(255,255,255)}}) 
client:Element("Toggle", "buy any grenade") 
client:Element("Toggle", "chat alive") 
client:Element("Jumbobox", "shop", {options = {"inf time", "anywhere"}}) 
client:Element("Toggle", "anti spectate") 

local oldgrenadeallowed = Client.grenadeallowed 
Client.grenadeallowed = function(...) 
	if values.misc.client["buy any grenade"].Toggle then 
		return true 
	end 

	return oldgrenadeallowed(...) 
end 

local movement = misc:Sector("movement", "Left") 
movement:Element("Toggle", "bunny hop") 
movement:Element("Dropdown", "direction", {options = {"forward", "directional", "directional 2"}}) 
movement:Element("Dropdown", "type", {options = {"gyro", "cframe"}}) 
movement:Element("Slider", "speed", {min = 15, max = 100, default = 40}) 
movement:Element("ToggleKeybind", "jump bug") 
movement:Element("ToggleKeybind", "edge jump") 
movement:Element("ToggleKeybind", "edge bug") 
movement:Element("ToggleKeybind", "Freeze clip", {}, function(tbl)
		if tbl.Toggle and tbl.Active then
			LocalPlayer.Character.HumanoidRootPart.Anchored = true
		else 
			LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
	end)

	local chat = misc:Sector("chat", "Left") 
	chat:Element('Toggle', 'chat spam', nil, function(tbl)
		if tbl.Toggle then
			while values.misc.chat['chat spam'].Toggle do
				game:GetService('ReplicatedStorage').Events.PlayerChatted:FireServer(textboxtriggers(values.misc.chat['spam message'].Text), false, 'Innocent', false, true)
				wait(values.misc.chat['speed (ms)'].Slider/1000)
			end
		end
	end)
	chat:Element('TextBox', 'spam message', {placeholder = 'message'})
	chat:Element('Slider', 'speed (ms)', {min = 150, max = 1000, default = 500})
	chat:Element('Toggle', 'random killsay', nil, function(tbl)
		if tbl.Toggle then



			for i = 1, 9e9 do
				wait(0.1)
				local chatmessages = {
					"No Floppaware? L",
					"Seems like u died",
					"Did You die? aww",
					"Losing to Floppaware? Cannot be me.",
					"1",
					"Floppaware UID?, right none",
					"You died to a bbot ui stormy aww uwu",
					"Died to Hitpart",
					"Died to Standard",
					"UID issue",
					"Pasting issue i see..",
					"When are u gonna win",
					"cant beat me with that skidded cheat?",
					"Oopsie",
					"Rawr",
					"What cheat is that Qual? ",
					"Ratted, it seems like ur mom is my gf",	
					"It looks like your face is on 'The Baddest Hvh'.",
					"Don't you love nature, despite what it did to you?",
				}


				LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)
					if current == 0 then return end
					game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer( chatmessages[math.random(1,table.getn(chatmessages))],false, "Innocent", false, true)
				end)
			end
		else
		end

	end) 
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
			game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7) 
		end 
	end 
end)() 
grenades:Element("Dropdown", "grenade", {options = {"Flashbang", "Smoke Grenade", "Molotov", "HE Grenade", "Decoy Grenade"}}) 
grenades:Element("Button", "crash server", {}, function() 
		local A_1 = "🖥️🖥️ Server smoked by floppaware.club. Get floppaware now. 🖥️🖥️"
		local A_2 = false
		local A_3 = "Innocent" 
		local A_4 = false
		local A_5 = true
		local Event = game:GetService("ReplicatedStorage").Events.PlayerChatted
		Event:FireServer(A_1, A_2, A_3, A_4, A_5)
		wait(2)
		while true do
			game:GetService("RunService").RenderStepped:Wait()
			for i = 1,100,1 do
				local ohInstance1 = LocalPlayer.Character.Gun.Mag																																																																									

				game:GetService("ReplicatedStorage").Events.DropMag:FireServer(ohInstance1)
			end
		end   
	end) 
local Dance = INST("Animation") 
Dance.AnimationId = "rbxassetid://5917459365" 

local LoadedAnim 

local animations = misc:Sector("animations", "Right") 
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
animations:Element("Dropdown", "animation", {options = {"floss", "default", "lil nas x", "dolphin", "monkey"}}, function(tbl) 
	Dance.AnimationId = tbl.Dropdown == "floss" and "rbxassetid://5917459365" or tbl.Dropdown == "default" and "rbxassetid://3732699835" or tbl.Dropdown == "lil nas x" and "rbxassetid://5938396308" or tbl.Dropdown == "dolphin" and "rbxassetid://5938365243" or tbl.Dropdown == "monkey" and "rbxassetid://3716636630" 

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

	local addons = misc:Sector("addons", "Left") 

	addons:Element("Toggle", "keybind list", nil, function(tbl) 
		library:SetKeybindVisible(tbl.Toggle) 
	end) 

	addons:Element("Toggle", "spectator list", {}, function(tbl)
		library:SetSpecVisible(tbl.Toggle) 
	end)

	addons:Element("Toggle", "watermark", {default = {Toggle = true}}, function(tbl)
		library:SetWaterVisible(tbl.Toggle) 
	end)	

	local MX_ONHIT = Instance.new("ScreenGui")
	local OnHitFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local SampleLabel = Instance.new("TextLabel")
	local FRC = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")

	MX_ONHIT.Name = "MX_ONHIT"
	MX_ONHIT.Parent = game.CoreGui
	MX_ONHIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	OnHitFrame.Name = "OnHitFrame"
	OnHitFrame.Parent = MX_ONHIT
	OnHitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OnHitFrame.BackgroundTransparency = 1.000
	OnHitFrame.Position = UDim2.new(0, 52, 0, -18)
	OnHitFrame.Size = UDim2.new(0, 300, 0, 500)

	UIListLayout.Parent = OnHitFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	SampleLabel.Name = "SampleLabel"
	SampleLabel.Parent = OnHitFrame
	SampleLabel.BackgroundColor3 = Color3.fromRGB(25, 24, 24)
	SampleLabel.BackgroundTransparency = 1.000
	SampleLabel.BorderColor3 = Color3.fromRGB(14, 29, 32)
	SampleLabel.Position = UDim2.new(0, 3, 0, 0)
	SampleLabel.Size = UDim2.new(1, 0, 0, 20)
	SampleLabel.Font = Enum.Font.Ubuntu
	SampleLabel.Text = "   Press INSERT to open and close the menu!"
	SampleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	SampleLabel.TextSize = 12.000
	SampleLabel.TextStrokeTransparency = 0.000
	SampleLabel.TextTransparency = 1.000
	SampleLabel.TextXAlignment = Enum.TextXAlignment.Left

	FRC.Name = "FRC"
	FRC.Parent = SampleLabel
	FRC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FRC.BackgroundTransparency = 1.000
	FRC.BorderColor3 = Color3.fromRGB(14, 29, 32)
	FRC.Size = UDim2.new(0, 3, 0, 20)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(124, 81, 149)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(172, 208, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(79, 48, 112))}
	UIGradient.Rotation = 9
	UIGradient.Parent = FRC

	local function CreateHitElement(text,col)
		spawn(function()
			local FRM = FRC:Clone()
			local Label = SampleLabel:Clone()
			FRM.BackgroundTransparency = 0
			FRM.Parent = Label
			Label.Text = text
			Label.BackgroundTransparency = 0
			Label.Parent = MX_ONHIT.OnHitFrame
			Label.TextTransparency = 0
			Label.TextColor3 = col
			wait(5)
			FRM:Destroy()
			Label:Destroy()
		end)
	end

local objects = {} 
local utility = {} 
do 
	utility.default = { 
		Line = { 
			Thickness = 1.5, 
			Color = COL3RGB(255, 255, 255), 
			Visible = false 
		}, 
		Text = { 
			Size = 13, 
			Center = true, 
			Outline = true, 
			Font = Drawing.Fonts.Plex, 
			Color = COL3RGB(255, 255, 255), 
			Visible = false 
		}, 
		Square = { 
			Thickness = 1.5, 
			Filled = false, 
			Color = COL3RGB(255, 255, 255), 
			Visible = false 
		}, 
	} 
	function utility.create(type, isOutline) 
		local drawing = Drawing.new(type) 
		for i, v in pairs(utility.default[type]) do 
			drawing[i] = v 
		end 
		if isOutline then 
			drawing.Color = COL3(0,0,0) 
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
				for i2,v2 in pairs(v) do 
					if v then 
						v:Remove() 
					end 
				end 
			end 

			objects[plr] = nil 
		end 
	end) 
end 
local Items = INST("ScreenGui") 
Items.Name = "Items" 
Items.Parent = game.CoreGui 
Items.ResetOnSpawn = false 
Items.ZIndexBehavior = "Global" 
do 
	function add(plr) 
		local ImageLabel = INST("ImageLabel") 
		ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255) 
		ImageLabel.BackgroundTransparency = 1.000 
		ImageLabel.Size = UDIM2(0, 62, 0, 25) 
		ImageLabel.Visible = false 
		ImageLabel.Image = "rbxassetid://1784884358" 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Name = plr.Name 
		ImageLabel.AnchorPoint = Vec2(0.5,0.5) 
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

		local BillboardGui = INST("BillboardGui") 
		BillboardGui.AlwaysOnTop = true 
		BillboardGui.Size = UDIM2(0, 40, 0, 40) 
		BillboardGui.Adornee = obj 

		local ImageLabel = INST("ImageLabel") 
		ImageLabel.Parent = BillboardGui 
		ImageLabel.BackgroundTransparency = 1 
		ImageLabel.Size = UDIM2(1, 0, 1, 0) 
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name) 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 

		BillboardGui.Parent = obj 
	end 
end) 
for _, obj in pairs(workspace.Debris:GetChildren()) do 
	if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then 
		RunService.RenderStepped:Wait() 

		local BillboardGui = INST("BillboardGui") 
		BillboardGui.AlwaysOnTop = true 
		BillboardGui.Size = UDIM2(0, 40, 0, 40) 
		BillboardGui.Adornee = obj 

		local ImageLabel = INST("ImageLabel") 
		ImageLabel.Parent = BillboardGui 
		ImageLabel.BackgroundTransparency = 1 
		ImageLabel.Size = UDIM2(1, 0, 1, 0) 
		ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color 
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name) 
		ImageLabel.ScaleType = Enum.ScaleType.Fit 
		ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false 

		BillboardGui.Parent = obj 
	end 
end 
local function YROTATION(cframe) 
	local x, y, z = cframe:ToOrientation() 
	return CF(cframe.Position) * CFAngles(0,y,0) 
end 
local function XYROTATION(cframe) 
	local x, y, z = cframe:ToOrientation() 
	return CF(cframe.Position) * CFAngles(x,y,0) 
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
allowedtofreeze = true
local Spin = 0 
local RageTarget 
local Filter = false 
local LastStep 
local TriggerDebounce = false 
local DisableAA = false 

local Fov = Drawing.new("Circle") 
Fov.Filled = true 
Fov.Color = COL3RGB(15,15,15) 
Fov.Transparency = 0.5 
Fov.Position = Vec2(Mouse.X, Mouse.Y + 16) 
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
	Spin = CLAMP(Spin + values.rage.angles["spin speed"].Slider, 0, 360) 
	if Spin == 360 then Spin = 0 end 
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then 
		PlayerIsAlive = true 
	end 
	for i,v in pairs(ChamItems) do 
		if v.Parent == nil then 
			TBLREMOVE(ChamItems, i) 
		end 
	end 
	Fov.Position = Vec2(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2) 
	if PlayerIsAlive then 
		local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity 
		if values.rage.fakelag["ping spike"].Toggle and values.rage.fakelag["ping spike"].Active then 
			for count = 1, 20  do 
				game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vec3(0,0,0)}) 
			end 
		end 
		local Root = LocalPlayer.Character.HumanoidRootPart 
		if values.misc.client["infinite crouch"].Toggle then 
			Client.crouchcooldown = 0 
		end 
		if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then 
			Client.DISABLED = false 
		end 
		if values.rage.exploits["kill all"].Toggle and values.rage.exploits["kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then 
			for _,Player in pairs(Players:GetPlayers()) do 
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then 
					local oh1 = Player.Character.Head 
					local oh2 = Player.Character.Head.CFrame.p 
					local oh3 = Client.gun.Name 
					local oh4 = 4096 
					local oh5 = LocalPlayer.Character.Gun 
					local oh8 = 15 
					local oh9 = false 
					local oh10 = false 
					local oh11 = Vec3(0,0,0) 
					local oh12 = 16868 
					local oh13 = Vec3(0, 0, 0) 
					game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13) 
				end 
			end 
		end 
		if TBLFIND(values.visuals.effects.removals.Jumbobox, "scope lines") then 
			NewScope.Enabled = LocalPlayer.Character:FindFirstChild("AIMING") and true or false 
			Crosshairs.Scope.Visible = false 
		else 
			NewScope.Enabled = false 
		end 
		local RageGuy 
		if workspace:FindFirstChild("Map") and Client.gun ~= nil and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
			if values.rage.aimbot.enabled.Toggle then 
				local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or CamCFrame.p 
				local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name)) 
				for _,Player in pairs(Players:GetPlayers()) do 
					if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then 
						Client.DISABLED = false 
					end 
					if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and Player ~= LocalPlayer then 
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "pitch") then 
							Player.Character.UpperTorso.Waist.C0 = CFAngles(0, 0, 0) 
						end 
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "roll") then 
							Player.Character.Humanoid.MaxSlopeAngle = 0 
						end 
					end 
						if Player.Team ~= LocalPlayer.Team and Player.Character and Player.Character:FindFirstChild('Humanoid') and not Client.DISABLED and Player.Character:FindFirstChild('Humanoid').Health > 0 and Player.Team ~= 'TTT'  and GetDeg(CamCFrame, Player.Character.Head.Position) <= Stats['max fov'].Slider and Player ~= LocalPlayer then
							if Player.Team ~= game.Players.LocalPlayer.Team and Player:FindFirstChild('Status') and Player.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then
								if Client.gun:FindFirstChild('Melee') and values.rage.aimbot['knifebot'].Toggle then
									local Ignore = {unpack(Collision)}
									INSERT(Ignore, workspace.Map.Clips)
									INSERT(Ignore, workspace.Map.SpawnPoints)
									INSERT(Ignore, LocalPlayer.Character)
									INSERT(Ignore, Player.Character.HumanoidRootPart)
									if Player.Character:FindFirstChild('BackC4') then
										INSERT(Ignore, Player.Character.BackC4)
									end
									if Player.Character:FindFirstChild('Gun') then
										INSERT(Ignore, Player.Character.Gun)
									end

									local Ray = Ray.new(Origin, (Player.Character.HumanoidRootPart.Position - Origin).unit * values.rage.aimbot["Knifebot Radius"].Slider)
									local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)

									if Hit and Hit.Parent == Player.Character then                                    
										RageGuy = Hit
										RageTarget = Hit
										if not values.rage.aimbot['silent aim'].Toggle then
											Camera.CFrame = CF(CamCFrame.Position, Hit.Position)
										end
										Filter = true

										spawn(function()
											wait(0.9)
											--Client.firebullet()
											Filter = false
										end)

										local Arguments = {
											[1] = Hit,
											[2] = Hit.Position,
											[3] = 'Banana',
											[4] = 4096,
											[5] = LocalPlayer.Character.Gun,
											[8] = 1500,
											[9] = false,
											[10] = false,
											[11] = Vector3.new(),
											[12] = 16868,
											[13] = Vector3.new()
										}
										game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
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
								if Player.Character:FindFirstChild("Gun") then 
									INSERT(Ignore, Player.Character.Gun) 
								end 

								local Hitboxes = {} 
								for _,Hitbox in ipairs(Stats.hitboxes.Jumbobox) do 
									if Stats["prefer body"].Toggle then 
										if Hitbox == "head" and (not values.rage.aimbot["auto baim"].Toggle or Player.Character:FindFirstChild("FakeHead")) then 
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
										elseif not values.rage.aimbot["auto baim"].Toggle or Player.Character:FindFirstChild("FakeHead") then 
											INSERT(Hitboxes, Player.Character.Head) 
										end 
									end 
								end 

								for _,Hitbox in ipairs(Hitboxes) do 
									local Ignore2 = {unpack(Ignore)} 
									for _,Part in pairs(Player.Character:GetChildren()) do 
										if Part ~= Hitbox then INSERT(Ignore2, Part) end 
									end 
									if values.rage.aimbot["automatic penetration"].Toggle then 
										local Hits = {} 
										local EndHit, Hit, Pos 
										local Penetration = Client.gun.Penetration.Value * 0.01 
										local Ray1 = RAY(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude) 
										repeat 
											Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true) 
											if Hit ~= nil and Hit.Parent ~= nil then 
												if Hit and Multipliers[Hit.Name] ~= nil then 
													EndHit = Hit 
												else 
													INSERT(Ignore2, Hit) 
													INSERT(Hits, {["Position"] = Pos,["Hit"] = Hit}) 
												end 
											end 
										until EndHit ~= nil or #Hits >= 4 or Hit == nil 
										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= 4 then 
											if #Hits == 0 then 
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] 
												if Player:FindFirstChild("Kevlar") then 
													if FIND(EndHit.Name, "Head") then 
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
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position) 
													end 
													Filter = true 
													if values.rage.aimbot["automatic fire"].Dropdown == "standard" then 
														Client.firebullet() 
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then 
															Client.firebullet() 
														end 
																												CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1))
														elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
															CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1))
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
															[11] = Vec3(), 
															[12] = 100, 
															[13] = Vec3() 
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
																[11] = Vec3(), 
																[12] = 100, 
																[13] = Vec3() 
															} 
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments)) 
														end 
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
													local direction = (Hitbox.Position - pos).unit * CLAMP(Client.gun.Range.Value, 1, 100) 
													local ray = RAY(pos + direction * 1, direction * -2) 
													local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true) 
													local thickness = (endpos - pos).Magnitude 
													thickness = thickness * modifier 
													limit = MIN(penetration, limit + thickness) 
													dmgmodifier = 1 - limit / penetration 
												end 
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier 
												if Player:FindFirstChild("Kevlar") then 
													if FIND(EndHit.Name, "Head") then 
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
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position) 
													end 
													Filter = true 
													if values.rage.aimbot["automatic fire"].Dropdown == "standard" then 
														Client.firebullet() 
														if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then 
															Client.firebullet() 
														end 
																												CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1))
														elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
															CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1)) 
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
															[11] = Vec3(), 
															[12] = 100, 
															[13] = Vec3() 
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
																[11] = Vec3(), 
																[12] = 100, 
																[13] = Vec3() 
															} 
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments)) 
														end 
													end 
													Filter = false 
													break 
												end 
											end 
										end 
									else 
										local Ray = RAY(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude) 
										local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore2, false, true) 
										if Hit and Multipliers[Hit.Name] ~= nil then 
											local Damage = Client.gun.DMG.Value * Multipliers[Hit.Name] 
											if Player:FindFirstChild("Kevlar") then 
												if FIND(Hit.Name, "Head") then 
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
													Camera.CFrame = CF(CamCFrame.Position, Hit.Position) 
												end 
												Filter = true 
												if values.rage.aimbot["automatic fire"].Dropdown == "standard" then 
													Client.firebullet() 
													if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then 
														Client.firebullet() 
													end 
																											CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1))
														elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
															CreateHitElement("   Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1))
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
														[11] = Vec3(), 
														[12] = 100, 
														[13] = Vec3() 
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
															[11] = Vec3(), 
															[12] = 100, 
															[13] = Vec3() 
														} 
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments)) 
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
						for _,Player in pairs(Players:GetPlayers()) do 
							if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then 
								if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then 
									if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then 
										local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position) 
										if onScreen then 
											local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
											if Magnitude < Stats["field of view"].Slider then 
												local Hitbox = Stats.hitbox.Dropdown == "head" and Player.Character.Head or Stats.hitbox.Dropdown == "chest" and Player.Character.UpperTorso 
												if Stats.hitbox.Dropdown == "closest" then 
													local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position) 
													local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position) 
													local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
													local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
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
					local Magnitude = Vec2(Pos.X - Mouse.X, Pos.Y - Mouse.Y) 
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
		BodyVelocity = INST("BodyVelocity") 
		BodyVelocity.MaxForce = Vec3(HUGE,0,HUGE) 
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
			local rot = YROTATION(CamCFrame) * CFAngles(0,RAD(add),0) 
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso 
			LocalPlayer.Character.Humanoid.Jump = true 
			BodyVelocity.Velocity = Vec3(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2) 
			if add == 0 and values.misc.movement.direction.Dropdown == "directional" and not UserInputService:IsKeyDown("W") then 
				BodyVelocity:Destroy() 
			else 
				if values.misc.movement.type.Dropdown == "cframe" then 
					BodyVelocity:Destroy() 
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/50 
				end 
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
			local Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) 
			if values.rage.angles["yaw base"].Dropdown == "spin" then 
				Angle = Angle + RAD(Spin) 
			end 
			if values.rage.angles["yaw base"].Dropdown == "random" then 
				Angle = Angle + RAD(RANDOM(0, 360)) 
			end 
			local Offset = RAD(-values.rage.angles["yaw offset"].Slider - (values.rage.angles.jitter.Toggle and Jitter and values.rage.angles["jitter offset"].Slider or 0)) 
			local CFramePos = CF(Root.Position) * CFAngles(0, Angle + Offset, 0) 
			if values.rage.angles["yaw base"].Dropdown == "targets" then 
				local part 
				local closest = 9999 
				for _,plr in pairs(Players:GetPlayers()) do 
					if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Team ~= LocalPlayer.Team then 
						local pos, onScreen = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position) 
						local magnitude = (Vec2(pos.X, pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
						if closest > magnitude then 
							part = plr.Character.HumanoidRootPart 
							closest = magnitude 
						end 
					end 
				end 
				if part ~= nil then 
					CFramePos = CF(Root.Position, part.Position) * CFAngles(0, Offset, 0) 
				end 
			end 

			Root.CFrame = YROTATION(CFramePos) 
			if values.rage.angles["body roll"].Dropdown == "180" then 
				Root.CFrame = Root.CFrame * CFAngles(values.rage.angles["body roll"].Dropdown == "180" and RAD(180) or 0, 1, 0) 
				LocalPlayer.Character.Humanoid.HipHeight = 4 
			else 
				LocalPlayer.Character.Humanoid.HipHeight = 2 
			end 

			local Pitch = values.rage.angles["pitch"].Dropdown == "none" and CamLook.Y or values.rage.angles["pitch"].Dropdown == "up" and 1 or values.rage.angles["pitch"].Dropdown == "down" and -1 or values.rage.angles["pitch"].Dropdown == "zero" and 0 or values.rage.angles["pitch"].Dropdown == "random" and RANDOM(-10, 10)/10 or 2.5 
			if values.rage.angles["extend pitch"].Toggle and (values.rage.angles["pitch"].Dropdown == "up" or values.rage.angles["pitch"].Dropdown == "down") then 
				Pitch = (Pitch*2)/1.6 
			end 
			game.ReplicatedStorage.Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild("Climbing") and true or false) 
		else 
			LocalPlayer.Character.Humanoid.HipHeight = 2 
			Root.CFrame = CF(Root.Position) * CFAngles(0, -ATAN2(CamLook.Z, CamLook.X) + RAD(270), 0) 
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
	for _,Player in pairs(Players:GetPlayers()) do 
		if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then 
			coroutine.wrap(function() 
				local Position = Player.Character.HumanoidRootPart.Position 
				RunService.RenderStepped:Wait() 
				if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") then 
					if Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then 
						Player.Character.HumanoidRootPart.OldPosition.Value = Position 
					else 
						local Value = INST("Vector3Value") 
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
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vec3(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vec3(0, 2.6, 0)).Y) / 2 

			local Drawings, Text = TBLFIND(values.visuals.players.outlines.Jumbobox, "drawings") ~= nil, TBLFIND(values.visuals.players.outlines.Jumbobox, "text") ~= nil 

			tbl.Box.Color = values.visuals.players.box.Color 
			tbl.Box.Size = Vec2(Size * 1.5, Size * 1.9) 
			tbl.Box.Position = Vec2(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2)) 

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
				tbl.Health.Color = COL3(0,1,0) 
				tbl.Health.From = Vec2((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y) 
				tbl.Health.To = Vec2(tbl.Health.From.X, tbl.Health.From.Y - CLAMP(Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth, 0, 1) * tbl.Box.Size.Y) 
				tbl.Health.Visible = OnScreen 
				if Drawings then 
					tbl.HealthOutline.From = Vec2(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1) 
					tbl.HealthOutline.To = Vec2(tbl.Health.From.X, (tbl.Health.From.Y - 1 * tbl.Box.Size.Y) -1) 
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
				tbl.Weapon.Position = Vec2(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1) 
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
				Items[Player.Name].Position = UDIM2(0, tbl.Box.Size.X/2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22)) 
				Items[Player.Name].Visible = OnScreen 
			else 
				Items[Player.Name].Visible = false 
			end 

			if values.visuals.players.name.Toggle then 
				tbl.Name.Color = values.visuals.players.name.Color 
				tbl.Name.Text = Player.Name 
				tbl.Name.Position = Vec2(tbl.Box.Size.X/2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16) 
				tbl.Name.Font = Drawing.Fonts[values.visuals.players.font.Dropdown] 
				tbl.Name.Outline = Text 
				tbl.Name.Size = values.visuals.players.size.Slider 
				tbl.Name.Visible = OnScreen 
			else 
				tbl.Name.Visible = false 
			end 
			local LastInfoPos = tbl.Box.Position.Y - 1 
			if TBLFIND(values.visuals.players.indicators.Jumbobox, "armor") and Player:FindFirstChild("Kevlar") then 
				tbl.Armor.Color = COL3RGB(0, 150, 255) 
				tbl.Armor.Text = Player:FindFirstChild("Helmet") and "HK" or "K" 
				tbl.Armor.Position = Vec2(tbl.Box.Size.X + tbl.Box.Position.X + 12, LastInfoPos) 
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
setreadonly(mt,false) 
mt.__namecall = function(self, ...) 
	local method = tostring(getnamecallmethod()) 
	local args = {...} 

	if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then 
		if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active and LocalPlayer.Character then 
			args[1] = args[1] * CF(99, 99, 99) 
		else 
			if values.visuals.self["viewmodel changer"].Toggle then 
				args[1] = args[1] * ViewmodelOffset 
			end 
		end 
	end 
	if method == "SetPrimaryPartCFrame" and self.Name ~= "Arms" then 
		args[1] = args[1] + Vec3(0, 3, 0) 
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
			args[1] = CF() 
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
							for _,Player in pairs(Players:GetPlayers()) do 
								if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then 
									if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then 
										if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then 
											local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position) 
											if onScreen then 
												local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
												if Magnitude < Stats["field of view"].Slider then 
													local Hitbox = Stats.priority.Dropdown == "head" and Player.Character.Head or Stats.priority.Dropdown == "chest" and Player.Character.UpperTorso 
													if Stats.priority.Dropdown == "closest" then 
														local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position) 
														local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position) 
														local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
														local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude 
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

					local Hit = RANDOM(1, 100) <= Stats.hitchance.Slider 
					if Target ~= nil and Hit then 
						args[1] = RAY(Camera.CFrame.Position, (Target.Position - Camera.CFrame.Position).unit * (Target.Position - Camera.CFrame.Position).magnitude) 
					end 
				end)() 
			end 
			if RageTarget ~= nil then 
				local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or Camera.CFrame.p 
				if values.rage.aimbot["delay shot"].Toggle then 
					spawn(function() 
						args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude) 
					end) 
				else 
					args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (g.Position - Origin).magnitude) 
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
		if values.rage.others["no animations"].Toggle then 
			args[1] = FakeAnim 
		end 
	end 
	if method == "FireServer" and self.Name == "HitPart" then 
		if values.rage.aimbot["force hit"].Toggle then 
			args[1] = RageTarget 
			args[2] = RageTarget.Position 
		end 
		if (values.rage.aimbot["sex package"].Toggle and RageTarget ~= nil) then 
			coroutine.wrap(function() 
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then 
					local hrp = RageTarget.Parent.HumanoidRootPart.Position 
					local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value 

					local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z)) / LastStep 
					local dir = Vec3(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude) 

					 
					args[2] = args[2] + dir * (Ping / (POW(Ping, 1.5)) * (dir / (dir / 2))) 
					args[4] = 0 
					args[12] = args[12] - 500 
				end 
			end)() 
		end 
		 
		if values.visuals.world["bullet tracers"].Toggle then 
			coroutine.wrap(function() 
				local beam = INST("Part") 
				beam.Anchored = true 
				beam.CanCollide = false 
				beam.Material = Enum.Material.ForceField 
				beam.Color = values.visuals.world["bullet tracers"].Color 
				beam.Size = Vec3(0.1, 0.1, (Camera.CFrame.Position - args[2]).Magnitude) 
				beam.CFrame = CF(Camera.CFrame.Position, args[2]) * CF(0, 0, -beam.Size.Z / 2) 
				beam.Parent = workspace.Debris 
				library:Tween(beam, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1}) 
				wait(1.5) 
				beam:Destroy() 
			end)() 
		end 
		if values.visuals.world["impacts"].Toggle then 
			coroutine.wrap(function() 
				local hit = INST("Part") 
				hit.Transparency = 1 
				hit.Anchored = true 
				hit.CanCollide = false 
				hit.Size = Vec3(0.3,0.3,0.3) 
				hit.Position = args[2] 
				local selection = INST("SelectionBox") 
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
						for _,hitbox in pairs(args[1].Parent:GetChildren()) do 
							if hitbox:IsA("BasePart") or hitbox.Name == "Head" then 
								coroutine.wrap(function() 
									local part = INST("Part") 
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

local perf__ = LocalPlayer.PlayerGui.Performance.Perf 

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
			v = v + Vec3(0, -3.5, 0) 
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

			Line.From = Vec2(x + 4, y + 4) 
			Line.To = Vec2(x + 10, y + 10) 
			Line.Color = values.misc.client.hitmarker.Color 
			Line.Visible = true 

			Line2.From = Vec2(x + 4, y - 4) 
			Line2.To = Vec2(x + 10, y - 10) 
			Line2.Color = values.misc.client.hitmarker.Color 
			Line2.Visible = true 

			Line3.From = Vec2(x - 4, y - 4) 
			Line3.To = Vec2(x - 10, y - 10) 
			Line3.Color = values.misc.client.hitmarker.Color 
			Line3.Visible = true 

			Line4.From = Vec2(x - 4, y + 4) 
			Line4.To = Vec2(x - 10, y + 10) 
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

	local sound = INST("Sound") 
	sound.Parent = game:GetService("SoundService") 
	sound.SoundId = values.visuals.world.hitsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.hitsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.visuals.world.hitsound.Dropdown == "bag" and "rbxassetid://364942410" or values.visuals.world.hitsound.Dropdown == "baimware" and "rbxassetid://6607339542" or "rbxassetid://6607204501" 
	sound.Volume = values.visuals.world["sound volume"].Slider 
	sound.PlayOnRemove = true 
	sound:Destroy() 
end) 
LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current) 
	if current == 0 then return end 
	if values.misc.chat["kill say"].Toggle then 
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat["message"].Text ~= "" and values.misc.chat["message"].Text or "nigga got tapped with a bbot ui stormy", false, "Innocent", false, true) 
	end 
end) 
RayIgnore.ChildAdded:Connect(function(obj) 
	if obj.Name == "Fires" then 
		obj.ChildAdded:Connect(function(fire) 
			if values.visuals.world["molly radius"].Toggle then 
				fire.Transparency = values.visuals.world["molly radius"].Transparency 
				fire.Color = values.visuals.world["molly radius"].Color 
			end 
		end) 
	end 
	if obj.Name == "Smokes" then 
		obj.ChildAdded:Connect(function(smoke) 
			RunService.RenderStepped:Wait() 
			local OriginalRate = INST("NumberValue") 
			OriginalRate.Value = smoke.ParticleEmitter.Rate 
			OriginalRate.Name = "OriginalRate" 
			OriginalRate.Parent = smoke 
			if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then 
				smoke.ParticleEmitter.Rate = 0 
			end 
			smoke.Material = Enum.Material.ForceField 
			if values.visuals.world["smoke radius"].Toggle then 
				smoke.Transparency = 0 
				smoke.Color = values.visuals.world["smoke radius"].Color 
			end 
		end) 
	end 
end) 
if RayIgnore:FindFirstChild("Fires") then 
	RayIgnore:FindFirstChild("Fires").ChildAdded:Connect(function(fire) 
		if values.visuals.world["molly radius"].Toggle then 
			fire.Transparency = values.visuals.world["molly radius"].Transparency 
			fire.Color = values.visuals.world["molly radius"].Color 
		end 
	end) 
end 
if RayIgnore:FindFirstChild("Smokes") then 
	for _,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do 
		local OriginalRate = INST("NumberValue") 
		OriginalRate.Value = smoke.ParticleEmitter.Rate 
		OriginalRate.Name = "OriginalRate" 
		OriginalRate.Parent = smoke 
		smoke.Material = Enum.Material.ForceField 
	end 
	RayIgnore:FindFirstChild("Smokes").ChildAdded:Connect(function(smoke) 
		RunService.RenderStepped:Wait() 
		local OriginalRate = INST("NumberValue") 
		OriginalRate.Value = smoke.ParticleEmitter.Rate 
		OriginalRate.Name = "OriginalRate" 
		OriginalRate.Parent = smoke 
		if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then 
			smoke.ParticleEmitter.Rate = 0 
		end 
		smoke.Material = Enum.Material.ForceField 
		if values.visuals.world["smoke radius"].Toggle then 
			smoke.Transparency = 0 
			smoke.Color = values.visuals.world["smoke radius"].Color 
		end 
	end) 
end 
Camera.ChildAdded:Connect(function(obj) 
	if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "ammo") then 
		Client.ammocount = 999999 
		Client.primarystored = 999999 
		Client.ammocount2 = 999999 
		Client.secondarystored = 999999 
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
			if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then 
				valid = false 
				local success, err = pcall(function() 
					local OriginalTexture = INST("StringValue") 
					OriginalTexture.Value = v.Mesh.TextureId 
					OriginalTexture.Name = "OriginalTexture" 
					OriginalTexture.Parent = v.Mesh 
				end) 
				local success2, err2 = pcall(function() 
					local OriginalTexture = INST("StringValue") 
					OriginalTexture.Value = v.Mesh.TextureID 
					OriginalTexture.Name = "OriginalTexture" 
					OriginalTexture.Parent = v.Mesh 
				end) 
				if success or success2 then valid = true end 
			end 

			for i2,v2 in pairs(v:GetChildren()) do 
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
	for _,v in pairs(WeaponObj) do 
		if v:IsA("MeshPart") then 
			local OriginalTexture = INST("StringValue") 
			OriginalTexture.Value = v.TextureID 
			OriginalTexture.Name = "OriginalTexture" 
			OriginalTexture.Parent = v 
		end 

		local OriginalColor = INST("Color3Value") 
		OriginalColor.Value = v.Color 
		OriginalColor.Name = "OriginalColor" 
		OriginalColor.Parent = v 

		local OriginalMaterial = INST("StringValue") 
		OriginalMaterial.Value = v.Material.Name 
		OriginalMaterial.Name = "OriginalMaterial" 
		OriginalMaterial.Parent = v 

		if values.visuals.effects["weapon chams"].Toggle then 
			UpdateWeapon(v) 
		end 
	end 
	RArm = Model:FindFirstChild("Right Arm"); LArm = Model:FindFirstChild("Left Arm") 
	if RArm then 
		local OriginalColor = INST("Color3Value") 
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
			local GloveTexture = INST("StringValue") 
			GloveTexture.Value = RGlove.Mesh.TextureId 
			GloveTexture.Name = "StringValue" 
			GloveTexture.Parent = RGlove 

			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(RGlove) 
			end 
		end 
		RSleeve = RArm:FindFirstChild("Sleeve") 
		if RSleeve ~= nil then 
			local SleeveTexture = INST("StringValue") 
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
		local OriginalColor = INST("Color3Value") 
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
			local GloveTexture = INST("StringValue") 
			GloveTexture.Value = LGlove.Mesh.TextureId 
			GloveTexture.Name = "StringValue" 
			GloveTexture.Parent = LGlove 

			if values.visuals.effects["accessory chams"].Toggle then 
				UpdateAccessory(LGlove) 
			end 
		end 
		LSleeve = LArm:FindFirstChild("Sleeve") 
		if LSleeve ~= nil then 
			local SleeveTexture = INST("StringValue") 
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
	if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then 
		Camera.FieldOfView = values.visuals.self["fov changer"].Slider 
	end 
end) 
LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function(cash) 
	if values.misc.client["infinite cash"].Toggle and cash ~= 8000 then 
		LocalPlayer.Cash.Value = 8000 
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
				local skybox = INST("Sky") 
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
				local skybox = INST("Sky") 
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
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Shirt").ShirtTemplate 
		String.Parent = char:FindFirstChildOfClass("Shirt") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Shirt").ShirtTemplate = "" 
		end 
	end 
	if char:FindFirstChildOfClass("Pants") then 
		local String = INST("StringValue") 
		String.Name = "OriginalTexture" 
		String.Value = char:FindFirstChildOfClass("Pants").PantsTemplate 
		String.Parent = char:FindFirstChildOfClass("Pants") 

		if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then 
			char:FindFirstChildOfClass("Pants").PantsTemplate = "" 
		end 
	end 
	for i,v in pairs(char:GetChildren()) do 
		if v:IsA("BasePart") and v.Transparency ~= 1 then 
			INSERT(SelfObj, v) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = INST("StringValue") 
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
			INSERT(SelfObj, Child.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = INST("StringValue") 
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
			INSERT(SelfObj, v) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Color 
			Color.Parent = v 

			local String = INST("StringValue") 
			String.Name = "OriginalMaterial" 
			String.Value = v.Material.Name 
			String.Parent = v 
		elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then 
			INSERT(SelfObj, v.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = v.Handle.Color 
			Color.Parent = v.Handle 

			local String = INST("StringValue") 
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
			INSERT(SelfObj, Child.Handle) 
			local Color = INST("Color3Value") 
			Color.Name = "OriginalColor" 
			Color.Value = Child.Handle.Color 
			Color.Parent = Child.Handle 

			local String = INST("StringValue") 
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
				if Obj.Name == "VisibleCham" or Obj.Name == "WallCham" then 
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
			local Value = INST("Vector3Value") 
			Value.Name = "OldPosition" 
			Value.Value = Character.HumanoidRootPart.Position 
			Value.Parent = Character.HumanoidRootPart 
			for _,obj in pairs(Character:GetChildren()) do 
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
					local VisibleCham = INST("BoxHandleAdornment") 
					VisibleCham.Name = "VisibleCham" 
					VisibleCham.AlwaysOnTop = false 
					VisibleCham.ZIndex = 8 
					VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
					VisibleCham.AlwaysOnTop = false 
					VisibleCham.Transparency = 0 

					local WallCham = INST("BoxHandleAdornment") 
					WallCham.Name = "WallCham" 
					WallCham.AlwaysOnTop = true 
					WallCham.ZIndex = 5 
					WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
					WallCham.AlwaysOnTop = true 
					WallCham.Transparency = 0.7 

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
					WallCham.Color3 = values.visuals.players.chams.Color 

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
for _,Player in pairs(Players:GetPlayers()) do 
	if Player ~= LocalPlayer then 
		Player:GetPropertyChangedSignal("Team"):Connect(function(new) 
			wait() 
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then 
				for _2,Obj in pairs(Player.Character:GetDescendants()) do 
					if Obj.Name == "VisibleCham" or Obj.Name == "WallCham" then 
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
						if Obj.Name == "VisibleCham" or Obj.Name == "WallCham" then 
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
			local Value = INST("Vector3Value") 
			Value.Value = Player.Character.HumanoidRootPart.Position 
			Value.Name = "OldPosition" 
			Value.Parent = Player.Character.HumanoidRootPart 
			for _,obj in pairs(Player.Character:GetChildren()) do 
				if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
					local VisibleCham = INST("BoxHandleAdornment") 
					VisibleCham.Name = "VisibleCham" 
					VisibleCham.AlwaysOnTop = false 
					VisibleCham.ZIndex = 5 
					VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
					VisibleCham.AlwaysOnTop = false 
					VisibleCham.Transparency = 0 

					local WallCham = INST("BoxHandleAdornment") 
					WallCham.Name = "WallCham" 
					WallCham.AlwaysOnTop = true 
					WallCham.ZIndex = 5 
					WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
					WallCham.AlwaysOnTop = true 
					WallCham.Transparency = 0.7 

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
					WallCham.Color3 = values.visuals.players.chams.Color 

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
		local Value = INST("Vector3Value") 
		Value.Name = "OldPosition" 
		Value.Value = Player.Character.HumanoidRootPart.Position 
		Value.Parent = Player.Character.HumanoidRootPart 
		for _,obj in pairs(Player.Character:GetChildren()) do 
			CollisionTBL(obj) 
			if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then 
				local VisibleCham = INST("BoxHandleAdornment") 
				VisibleCham.Name = "VisibleCham" 
				VisibleCham.AlwaysOnTop = false 
				VisibleCham.ZIndex = 5 
				VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
				VisibleCham.AlwaysOnTop = false 
				VisibleCham.Transparency = 0 

				local WallCham = INST("BoxHandleAdornment") 
				WallCham.Name = "WallCham" 
				WallCham.AlwaysOnTop = true 
				WallCham.ZIndex = 5 
				WallCham.Size = obj.Size + Vec3(0.1,0.1,0.1) 
				WallCham.AlwaysOnTop = true 
				WallCham.Transparency = 0.7 

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
				WallCham.Color3 = values.visuals.players.chams.Color 

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
		CreateHitElement("   Press INSERT to open and close the menu!",Color3.new(1,1,1))
		wait(0.1)
		CreateHitElement("   Done loading the cb cheat.",Color3.new(1,1,1))
		getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).moveOldMessages()
		getsenv(game.Players.LocalPlayer.PlayerGui.GUI.Main.Chats.DisplayChat).createNewMessage(
		"Floppaware",
		"successfully loaded!",
		Color3.fromRGB(109,57,142), 
		Color3.new(1,1,1),
		.01
		)
        wait(0.5) 
end