local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()
local v3 = game.Players.LocalPlayer.Character
local Window = library:CreateWindow("D/Tha Hood", "V.1", 10044538000)

local Tab = Window:CreateTab("Scripts")

local Page = Tab:CreateFrame("LP Modifications")
local plr = game.Players.LocalPlayer

local v3 = plr.Character
local ch = plr.Character

local function g_()
   v3.CharacterDied:Destroy()
       v3.Death:Destroy()
       v3.Ragdolled:Destroy()
       v3.BodyEffects:Destroy()
end

local function invis()
if ch:FindFirstChild("R6Convert") or ch:FindFirstChild("Bear Suit") then
    local mypos = ch.HumanoidRootPart.CFrame
    ch.HumanoidRootPart.CFrame = CFrame.new(0,10000000,0)
    ch.HumanoidRootPart.Velocity = Vector3.new(0,50,0) -- prevent fall damage in some shitty game
    task.wait(0.5)
    for i,v in pairs(ch:GetChildren()) do
        if v:IsA("Accessory") or v:IsA("Accoutrement") then
            if v.Name == "R6Convert" or v.Name == "Bear Suit" then
                pcall(function()
                    v.Handle.Anchored = true
                    v.Handle.AccessoryWeld:Destroy()
                end)
            end
        end    
    end
    ch.HumanoidRootPart.CFrame = mypos
end
end

--// things down here
Button = Page:CreateButton("Cash Graber", "Grab Cash for you. ", function()
local LP = game.Players.LocalPlayer
while game.RunService.Heartbeat:Wait()do
local success, err = pcall(function()
for i,v in pairs(workspace.Cash:GetChildren()) do
if v.Name == "CA$HIER" then
LP.Character.HumanoidRootPart.CFrame = v.Hitbox.CFrame * CFrame.new(0,-10,0)
fireproximityprompt(v.Hitbox.ProximityPrompt)
end
end
end)
end
if err then
warn(err)
end
end)
    
Button = Page:CreateButton("God", "Makes you immortal to guns.", function()
    g_()
end)

Page:CreateSlider("Walkspeed", 16, 500,function(arg)
   v3.Humanoid.WalkSpeed = (arg)
end)

Page:CreateSlider("JumpPower", 50, 500,function(arg)
   v3.Humanoid.JumpPower = (arg)
end)