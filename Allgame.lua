local Loader = Instance.new("ScreenGui")
local LoaderMain = Instance.new("Frame")
local C_ = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local Info = Instance.new("TextLabel")
local UF = Instance.new("Frame")
local B_UICorner = Instance.new("UICorner")
local GS = Instance.new("Frame")
local A_UICorner = Instance.new("UICorner")
local UIGradient_1 = Instance.new("UIGradient")
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Loader.Name = "Loader"
Loader.Parent = game:GetService("CoreGui")
LoaderMain.BorderSizePixel = 0
LoaderMain.Size = UDim2.new(0, 0, 0, 0)
LoaderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoaderMain.Name = "LoaderMain"
LoaderMain.ClipsDescendants = true
LoaderMain.Position = UDim2.new(0.424795, 0, 0.413223, 0)
LoaderMain.BackgroundColor3 = Color3.fromRGB(67, 255, 233)
LoaderMain.Parent = Loader
C_.Name = "C_"
C_.CornerRadius = UDim.new(0, 10)
C_.Parent = LoaderMain
UIGradient.Name = "UIGradient"
UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 39, 255)) }
UIGradient.Parent = LoaderMain
Info.BorderSizePixel = 0
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Info.TextSize = 14
Info.Size = UDim2.new(0, 350, 0, 50)
Info.Name = "Info"
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.Text = "Wellcome To NinjaHub"
Info.BackgroundTransparency = 1
Info.Parent = LoaderMain
UF.BorderSizePixel = 0
UF.Size = UDim2.new(0, 0, 0, 28)
UF.BorderColor3 = Color3.fromRGB(0, 0, 0)
UF.Name = "UF"
UF.ClipsDescendants = true
UF.Position = UDim2.new(0.0342857, 0, 0.708571, 0)
UF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UF.Parent = LoaderMain
B_UICorner.Name = "B_UICorner"
B_UICorner.Parent = UF
GS.BorderSizePixel = 0
GS.Size = UDim2.new(0, 0, 0, 28)
GS.BorderColor3 = Color3.fromRGB(0, 0, 0)
GS.Name = "GS"
GS.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
GS.Parent = UF
A_UICorner.Name = "A_UICorner"
A_UICorner.Parent = GS
UIGradient_1.Name = "UIGradient"
UIGradient_1.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 226, 255)), ColorSequenceKeypoint.new(0.39551, Color3.fromRGB(78, 237, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) }
UIGradient_1.Parent = GS

local TweenService = game:GetService("TweenService")
TweenService:Create(LoaderMain,TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 350, 0, 50)}):Play()
wait(1)
TweenService:Create(LoaderMain,TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 350, 0, 140)}):Play()
wait(1)
TweenService:Create(UF,TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 323, 0, 28)}):Play()
TweenService:Create(GS,TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 323, 0, 28)}):Play()
wait(5)
Loader:Destroy()



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/datshort1/DatModV3/main/library"))()
local Window = Library.CreateLib("NinjaV2✨", "Ocean")
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
    textsize = 27,
    colour = 0,0,255
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
            esp.Text = "["..v.Name.."]"
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

local Tab = Window:NewTab("| Tab1 |")
local Section = Tab:NewSection("All Gamel2")
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


Section:NewButton("Full Bright", "ButtonInfo", function()game:GetService("Lighting").Brightness = 2
game:GetService("Lighting").ClockTime = 14
game:GetService("Lighting").FogEnd = 100000
game:GetService("Lighting").GlobalShadows = false
game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
print("Clicked")
end)

Section:NewButton("Full Brightv2", "ButtonInfo", function()local Light = game:GetService("Lighting")

function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
end

dofullbright()

Light.LightingChanged:Connect(dofullbright)
print("Clicked")
end)

Section:NewButton("EPs Skeleton","ButtonInfo",function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/SkeletonESP.lua"))()
    print("Clicked")
end)



Section:NewButton("Hittbotv2","ButtonInfo",function()
_G.HeadSize = 17
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really Light green")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
     print("Clicked")
end)



Section:NewButton("Eps Ff","ButtonInfo",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/truongghh/Ninjahub/main/Rader.lua"))()
     print("Clicked")
end)

------------------------------------------------------------------------------
local Tab = Window:NewTab("| Tab2 |")
local Section = Tab:NewSection("All Gamel3")
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


Section:NewButton("Redzmeme", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua"))()
     print("Clicked")
end)

local Tab = Window:NewTab("| Credits |")
local Section = Tab:NewSection("Made By Truong")
local Section = Tab:NewSection("Idea : SumitScripts")
local Section = Tab:NewSection("Thankyou")




--------------------------------------------------------------------------------------------------------------------------------------------
