local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()
local Window = library:CreateWindow("Viz Hub", "dha hood/tha hood hax", 10044538000)

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
--// things down here
Button = Page:CreateButton("Cash Graber", "Grab Cash for you. (rejoin to disable)", function()
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

Button = Page:CreateButton("Enable Chat", "Enables the chat.", function()
    enabled = true
    spyOnMyself = true
    public = false
    publicItalics = true
    privateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}
--////////////////////////////////////////////////////////////////
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance

local function onChatted(p,msg)
	if _G.chatSpyInstance == instance then
		if p==player and msg:lower():sub(1,4)=="/spy" then
			enabled = not enabled
			wait(0.3)
			privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
			StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		elseif enabled and (spyOnMyself==true or p~=player) then
			msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
			local hidden = true
			local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
				if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
					hidden = false
				end
			end)
			wait(1)
			conn:Disconnect()
			if hidden and enabled then
				if public then
					saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
				else
					privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				end
			end
		end
	end
end

for _,p in ipairs(Players:GetPlayers()) do
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
	p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end)


Page:CreateSlider("Walkspeed", 16, 500,function(arg)
   v3.Humanoid.WalkSpeed = (arg)
end)

Page:CreateSlider("JumpPower", 50, 500,function(arg)
   v3.Humanoid.JumpPower = (arg)
end)
