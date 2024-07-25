local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/datshort1/DatModV3/main/library"))()
local Window = Library.CreateLib("Ninja🥷", "Ocean")
local Tab = Window:NewTab("| Main |")
local Section = Tab:NewSection("All Gamel")
Section:NewButton("Eps Blue", "ButtonInfo", function()
local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
    print("Clicked")
end)


Section:NewButton("Eps Red", "ButtonInfo", function()
local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end

game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
    print("Clicked")
end)


Section:NewButton("Eps Name", "ButtonInfo", function()
local esp_settings = { 
    textsize = 25,
    colour = 255,255,255
}
 
local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui)
 
 
 
gui.Name = "Cracked esp";
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour
 
game:GetService("RunService").RenderStepped:Connect(function()
    for i,v in pairs (game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil  then
            esp.Text = "{"..v.Name.."}"
            gui:Clone().Parent = v.Character.Head
    end
end
end)
    print("Clicked")
end)


Section:NewButton("Hitbot", "ButtonInfo", function()
_G.HeadSize = 10
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really white")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end) 
    print("Clicked")
end)


Section:NewButton("InfiniteJump", "ButtonInfo", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
    print("Clicked")
end)


Section:NewButton("Anti Afk V1", "ButtonInfo", function()
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="made by ur mom "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
    print("Clicked")
end)


Section:NewButton("Anti Afk V2", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/brosula123/Anti-afk/main/Bl%C3%B8xzScript"))()
    print("Clicked")
end)


Section:NewButton("Fly V3", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    print("Clicked")
end)


Section:NewButton("Teleport menu", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))()
    print("Clicked")
end)


Section:NewButton("Teleport menu2", "ButtonInfo", function()
local gui = Instance.new("ScreenGui")
gui.Name = "Teleport GUI"
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 70)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.new(1, 1, 1)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local label = Instance.new("TextLabel")
label.Text = "Teleport to player:"
label.Position = UDim2.new(0, 5, 0, 5)
label.Size = UDim2.new(0, 100, 0, 20)
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Parent = frame

local textbox = Instance.new("TextBox")
textbox.Position = UDim2.new(0, 5, 0, 25)
textbox.Size = UDim2.new(0, 140, 0, 20)
textbox.Text = ""
textbox.ClearTextOnFocus = true
textbox.Parent = frame

local button = Instance.new("TextButton")
button.Text = "Teleport"
button.Position = UDim2.new(0, 5, 0, 50)
button.Size = UDim2.new(0, 140, 0, 20)
button.Parent = frame

local madeBy = Instance.new("TextLabel")
madeBy.Text = "Made by Truong"
madeBy.Position = UDim2.new(0, 5, 0, 75)
madeBy.Size = UDim2.new(0, 140, 0, 20)
madeBy.TextColor3 = Color3.new(1, 1, 1)
madeBy.BackgroundTransparency = 1
madeBy.Parent = frame

button.MouseButton1Click:Connect(function()
    local targetName = textbox.Text
    for _, player in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(player.Name), string.lower(targetName)) then
            game.Players.LocalPlayer.Character:MoveTo(player.Character.Head.Position)
            break
        end
    end
end)
    print("Clicked")
end)


Section:NewButton("Fe Player", "ButtonInfo", function()
-- Objects
plr = game.Players.LocalPlayer
ControlGui = Instance.new("ScreenGui")
Frame = Instance.new("Frame")
TextButton = Instance.new("TextButton")
TextBox = Instance.new("TextBox")

-- Properties

ControlGui.Name = "ControlGui"
ControlGui.Parent = plr.PlayerGui

Frame.Parent = ControlGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0, 300, 0, 200)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0, 50, 0, 90)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.FontSize = Enum.FontSize.Size32
TextButton.Text = "Control"
TextButton.TextSize = 30
TextButton.MouseButton1Down:connect(function()
	if TextButton.Text == "Control" then
	TextButton.Text = "UnControl"	
	workspace[TextBox.Text].Humanoid.PlatformStand = true
	W1 = Instance.new("Weld",workspace)
	W1.Name = "Weld1"
	W1.Part0 = plr.Character.Torso
	W1.Part1 = workspace[TextBox.Text].Torso
	W2 = Instance.new("Weld",workspace)
	W2.Name = "Weld2"
	W2.Part0 = plr.Character.Head
	W2.Part1 = workspace[TextBox.Text].Head
	W3 = Instance.new("Weld",workspace)
	W3.Name = "Weld3"
	W3.Part0 = plr.Character.HumanoidRootPart
	W3.Part1 = workspace[TextBox.Text].HumanoidRootPart
	W4 = Instance.new("Weld",workspace)
	W4.Name = "Weld4"
	W4.Part0 = plr.Character["Left Arm"]
	W4.Part1 = workspace[TextBox.Text]["Left Arm"]
	W5 = Instance.new("Weld",workspace)
	W5.Name = "Weld5"
	W5.Part0 = plr.Character["Left Leg"]
	W5.Part1 = workspace[TextBox.Text]["Left Leg"]
	W6 = Instance.new("Weld",workspace)
	W6.Name = "Weld6"
	W6.Part0 = plr.Character["Right Arm"]
	W6.Part1 = workspace[TextBox.Text]["Right Arm"]
	W7 = Instance.new("Weld",workspace)
	W7.Name = "Weld7"
	W7.Part0 = plr.Character["Right Leg"]
	W7.Part1 = workspace[TextBox.Text]["Right Leg"]
	for i,v in pairs(plr.Character:GetChildren()) do
			if v.ClassName == "Part" then
				v.Transparency = 1
			end
			plr.Character.HumanoidRootPart.Transparency = 1
			if v.ClassName == "Accessory" then
				v.Handle.Transparency = 1
			end
			plr.Character.Humanoid.NameOcclusion = "NoOcclusion"
	end
	elseif TextButton.Text == "UnControl" then
	TextButton.Text = "Control"
	workspace[TextBox.Text].Humanoid.PlatformStand = false
	workspace.Weld1:Remove()
	workspace.Weld2:Remove()
	workspace.Weld3:Remove()
	workspace.Weld4:Remove()
	workspace.Weld5:Remove()
	workspace.Weld6:Remove()
	workspace.Weld7:Remove()
	for i,v in pairs(plr.Character:GetChildren()) do
			if v.ClassName == "Part" then
				v.Transparency = 0
			end
			plr.Character.HumanoidRootPart.Transparency = 1
			if v.ClassName == "Accessory" then
				v.Handle.Transparency = 0
			end
			plr.Character.Humanoid.NameOcclusion = "OccludeAll"
	end
end
end)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.Position = UDim2.new(0, 50, 0, 20)
TextBox.Size = UDim2.new(0, 200, 0, 30)
TextBox.Font = Enum.Font.SourceSans
TextBox.FontSize = Enum.FontSize.Size28
TextBox.Text = "Name"
TextBox.TextSize = 25
    print("Clicked")
end)


Section:NewButton("Fps boost", "ButtonInfo", function()
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    print("Clicked")
end)


Section:NewButton("Meme seaGalto", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ElgatoHub/main/Loader.lua"))()
     print("Clicked")
end)


Section:NewButton("Meme seaOMG", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
     print("Clicked")
end)


Section:NewButton("Mm2 Yarmhub", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
     print("Clicked")
end)


Section:NewButton("W-AzureTruev2", "ButtonInfo", function()
getgenv().Team = "Pirates"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
     print("Clicked")
end)

Section:NewButton("Matsunev1", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Matsune/main/matsunehubv1.lua"))()
     print("Clicked")
end)


Section:NewButton("Matsunev4", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Matsune/main/matssunehub.lua"))()
     print("Clicked")
end)

local Tab = Window:NewTab("| Credits |")
local Section = Tab:NewSection("Made By Truong")
local Section = Tab:NewSection("Idea : SumitScripts")
local Section = Tab:NewSection("Thankyou")