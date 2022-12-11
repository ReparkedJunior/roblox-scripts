local CoreGui = game:GetService("StarterGui")
repeat task.wait() until game:IsLoaded()

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()



mouse.Button1Down:Connect(function()
local targ = game.Players:FindFirstChild(mouse.Target.Parent.Name) or game.Players:FindFirstChild(mouse.Target.Parent.Parent.Name)

setclipboard(targ.Name)

game.StarterGui:SetCore("SendNotification", {
Text = targ.Name.." Selected!",
Title = "kidnaping",
Time = 4
})
end)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0,0,0)
Frame.BorderColor3 = Color3.new(0.67451, 0.211765, 0.152941)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.9,0.5,0.3)
Frame.Size = UDim2.new(0.07,0.1,0.1)
Frame.Active = true
Frame.Draggable = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0,0,0)
TextBox.BackgroundTransparency = 0
TextBox.Position = UDim2.new(0.103524067, 0, 0.200333327, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0.8,0.9,0.6)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = "name"
TextBox.TextScaled = true
TextBox.TextSize = 8
TextBox.TextWrapped = true

TextButton.MouseButton1Click:connect(function()
end)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")


ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(255,255,255)
Frame.BorderColor3 = Color3.new(0.67451, 0.211765, 0.152941)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.9,0.5,0.4)
Frame.Size = UDim2.new(0.07,0.1,0.1)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(255,255,255)
TextButton.BackgroundTransparency = 0
TextButton.Position = UDim2.new(0.103524067, 0, 0.200333327, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0.8,0.9,0.6)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Parent = Frame
TextButton.Text = "KIDNAP"
TextButton.TextScaled = true
TextButton.TextSize = 8
TextButton.TextWrapped = true

TextButton.MouseButton1Click:connect(function()
local lplayer = game:GetService('Players').LocalPlayer
 
local yeeting = false
function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "Random" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= lplayer.Name then
table.insert(Found,v)
end
end 
elseif strl == "me" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == lplayer.Name then
table.insert(Found,v)
end
end 
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end 
end
return Found 
end

local target = unpack(GetPlayer(TextBox.Text)).Character
 
game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame = target.HumanoidRootPart.CFrame + Vector3.new(0,1,-2)
local h = game.Players.LocalPlayer.Character.Humanoid:Clone()
local plr = game.Players.LocalPlayer.Character
local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local lp = game.Players.LocalPlayer

h.Parent = game.Players.LocalPlayer.Character
h.Name = "Hum"

game.Players.LocalPlayer.Character.Humanoid:Destroy()

for _,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v.ClassName == "Tool" then
        v.Parent = plr
    end
end
wait(.5)
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(6, Enum.EasingStyle.Linear)

tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(0, -1000, 0)})
tween:Play()
end)
