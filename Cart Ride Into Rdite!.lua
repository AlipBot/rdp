----massage----
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Make by Aliffkins";
    Text = "Subcribe And Like";
})
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Enjoy!";
    Text = "";
})
--For Reset--
game.Players.LocalPlayer.Character.Humanoid.Health = 0
---------------------
loadstring(game:HttpGet('https://gist.githubusercontent.com/DevsHubCreator/022c7ec486e8ed52d31a8984d0869484/raw/c6bebe84595a69fca5c99e1a32bdf721b82e3bde/imgui', true))()
--Menu--
local Menu = library:AddWindow('Home')
local simplehack = Menu:AddTab('Menu')


simplehack:AddLabel('RunSpeeds')
local sect1 = simplehack:AddSlider('RunSpeeds', function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (a)
end, {
    ["min"] = 0,
    ["max"] = 200,
})

simplehack:AddLabel('JumpPower')
local sect1 = simplehack:AddSlider('Jump', function(a)
    _G.JumpHeight = (a);
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (a)
end, {
    ["min"] = 0,
    ["max"] = 200,
})

simplehack:AddSwitch('Infinite Jump', function(a)
    _G.infinitejump = (a);
    if _G.infinitejump == true then
        
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
_G.JumpHeight = 50;

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
    end
end)

simplehack:AddSwitch('Fly Click E', function(a)
    _G.Fly = (a);
    if _G.Fly == true then
        repeat wait() 
        until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
    local mouse = game.Players.LocalPlayer:GetMouse() 
    repeat wait() until mouse
    local plr = game.Players.LocalPlayer 
    local torso = plr.Character.Head 
    local flying = false
    local deb = true 
    local ctrl = {f = 0, b = 0, l = 0, r = 0} 
    local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    local maxspeed = 50 
    local speed = 0 
    
    function Fly() 
    local bg = Instance.new("BodyGyro", torso) 
    bg.P = 9e4 
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
    bg.cframe = torso.CFrame 
    local bv = Instance.new("BodyVelocity", torso) 
    bv.velocity = Vector3.new(0,0.1,0) 
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
    repeat wait() 
    plr.Character.Humanoid.PlatformStand = true 
    if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
    speed = speed+.5+(speed/maxspeed) 
    if speed > maxspeed then 
    speed = maxspeed 
    end 
    elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
    speed = speed-1 
    if speed < 0 then 
    speed = 0 
    end 
    end 
    if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
    elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
    else 
    bv.velocity = Vector3.new(0,0.1,0) 
    end 
    bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
    until not flying 
    ctrl = {f = 0, b = 0, l = 0, r = 0} 
    lastctrl = {f = 0, b = 0, l = 0, r = 0} 
    speed = 0 
    bg:Destroy() 
    bv:Destroy() 
    plr.Character.Humanoid.PlatformStand = false 
    end 
    mouse.KeyDown:connect(function(key) 
    if key:lower() == "e" then 
    if flying then flying = false 
    else 
    flying = true 
    Fly() 
    end 
    elseif key:lower() == "w" then 
    ctrl.f = 1 
    elseif key:lower() == "s" then 
    ctrl.b = -1 
    elseif key:lower() == "a" then 
    ctrl.l = -1 
    elseif key:lower() == "d" then 
    ctrl.r = 1 
    end 
    end) 
    mouse.KeyUp:connect(function(key) 
    if key:lower() == "w" then 
    ctrl.f = 0 
    elseif key:lower() == "s" then 
    ctrl.b = 0 
    elseif key:lower() == "a" then 
    ctrl.l = 0 
    elseif key:lower() == "d" then 
    ctrl.r = 0 
    end 
    end)
    Fly()
end
    
end)

simplehack:AddSwitch('NoClip', function(a)
    _G.Noclip = (a);
    if _G.Noclip == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)


simplehack:AddSwitch('btools', function(a)
    _G.btools = (a);
    if _G.btools == true then
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
        for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
           if child.ClassName == "Part" then
               child.Locked = false
           end
           if child.ClassName == "MeshPart" then
               child.Locked = false
           end
           if child.ClassName == "UnionOperation" then
               child.Locked = false
           end
           if child.ClassName == "Model" then
               for index, chil in pairs(child:GetChildren()) do
                   if chil.ClassName == "Part" then
                       chil.Locked = false
                   end
                   if chil.ClassName == "MeshPart" then
                       chil.Locked = false
                   end
                   if chil.ClassName == "UnionOperation" then
                       chil.Locked = false
                   end
                   if chil.ClassName == "Model" then
                       for index, childe in pairs(chil:GetChildren()) do
                           if childe.ClassName == "Part" then
                               childe.Locked = false
                           end
                           if childe.ClassName == "MeshPart" then
                               childe.Locked = false
                           end
                           if childe.ClassName == "UnionOperation" then
                               childe.Locked = false
                           end
                           if childe.ClassName == "Model" then
                               for index, childeo in pairs(childe:GetChildren()) do
                                   if childeo.ClassName == "Part" then
                                       childeo.Locked = false
                                   end
                                   if childeo.ClassName == "MeshPart" then
                                       childeo.Locked = false
                                   end
                                   if childeo.ClassName == "UnionOperation" then
                                       childeo.Locked = false
                                   end
                                   if childeo.ClassName == "Model" then
                                   end
                               end
                           end
                       end
                   end
               end
           end
        end
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Hammer
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Clone
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Grab
            btools.Text = "Loaded!"
            btools.TextColor3 = Color3.fromRGB(0, 255, 50)
            wait(2)
            btools.TextColor3 = Color3.fromRGB(0, 0, 0)
            btools.Text = "BTools"

        end
end)



----------Teleport Menu---------
local tpmenu = Menu:AddTab('TpMenu')


tpmenu:AddSwitch('Teleport Click Tools', function(a)
    _G.tpclick = (a);
   if _G.tpclick == true then
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "ClickTP"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
   end
    end)


local drop = tpmenu:AddDropdown('Teleport', function(a)
    
if (a) == 'Wins' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.673279, 852.799805, 321.170715, -1, -2.03773265e-08, -1.86249469e-08, -2.03773247e-08, 1, -6.54766623e-08, 1.86249487e-08, -6.54766623e-08, -1) 
 
end

if (a) == 'Base' then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(43.4971199, 3.09999871, -76.1916809, 0.997813404, 3.8498551e-09, -0.0660942122, 2.40219677e-10, 1, 6.18745446e-08, 0.0660942122, -6.17551308e-08, 0.997813404) 
 
end
end)
drop:Add('Wins')
drop:Add('Base')

tpmenu:AddLabel('Teleport to')
tpmenu:AddTextBox('Type name here', function(a)
    local playerone = game.Players.LocalPlayer.Character
local playertwo = game.Workspace:FindFirstChild(a)
playerone.HumanoidRootPart.CFrame = playertwo.HumanoidRootPart.CFrame * CFrame.new(0,2,0)

end)

---------------------------------------

--Cart Ride Into Rdite!--

game.Workspace.Carts.Name = "hey"
wait(0.1)
local carthack = Menu:AddTab('CartRide')

carthack:AddSwitch('SpamCart', function(a)
    _G.SpamCart = (a);
    while _G.SpamCart do
        wait(0.1)
        for i,v in pairs(game.Workspace.hey:GetChildren()) do
               fireclickdetector(v.Click)
            end
            end
end)

carthack:AddSwitch('Loop Turn on&off All Carts', function(a)
    _G.looponoffcart = (a);
    while _G.looponoffcart do
        wait(0.1)
    for i,v in pairs(game.Workspace.hey:GetChildren()) do
           fireclickdetector(v.On.Click)
        end
    end
end)

carthack:AddSwitch('SpeeAllCart', function(a)
    _G.SpeeAllCart = (a);
    while _G.SpeeAllCart do
        wait(0.1)
        for i,v in pairs(game.Workspace.hey:GetChildren()) do
               fireclickdetector(v.Up.Click)
            end
            end
end)

carthack:AddSwitch('SlowAllCarts', function(a)
    _G.SlowAllCarts = (a);
    while _G.SlowAllCarts do
        wait(0.1)
        for i,v in pairs(game.Workspace.hey:GetChildren()) do
               fireclickdetector(v.Down.Click)
            end
            end
end)

carthack:AddSwitch('Force Stop All Cart', function(a)
    _G.Stopcart = (a);
    if _G.Stopcart == true then
local function hook(cart)
    pcall(function()
        cart:WaitForChild("On")
        cart.On:WaitForChild("Click")
  
        cart:WaitForChild("Configuration")
        local onValue = cart.Configuration:WaitForChild("CarOn")
  
        if onValue.Value == true then
            fireclickdetector(cart.On.Click, math.random(50,100) / 100)
        end
        onValue:GetPropertyChangedSignal("Value"):Connect(function()
            if onValue.Value == true then
                fireclickdetector(cart.On.Click, math.random(50,100) / 100)
            end
        end)
    end)
 end
  
 local cartFolder
 for _,v in pairs(workspace:GetChildren()) do if v.Name == "Carts" and not v:FindFirstChildOfClass("Part") then cartFolder = v end end
  
 for _,cart in pairs(cartFolder:GetChildren()) do
    if string.find(cart.Name:lower(), "cart") then hook(cart) end
 end
 cartFolder.ChildAdded:Connect(function(child)
    if string.find(child.Name:lower(), "cart") then hook(child) end
 end)
    end
end)

------------------------------
