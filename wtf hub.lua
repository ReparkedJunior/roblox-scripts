local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "crazy hax",
	LoadingTitle = "crazy hax",
	LoadingSubtitle = "nox",
	KeySystem = false,
})
local WeaponTab = Window:CreateTab("Weapons", 4483362458)

local Section = WeaponTab:CreateSection("sword and things")

local button = WeaponTab:CreateButton({
	Name = "Flamethrower",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","flamethrower","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Katana",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","katana","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "NightStick",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","nightstick","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "taser",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","taser","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Guitar",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","Guitar","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Amongus Pillow",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","pillow","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Wrench",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","wrench","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Sabres",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","sabres","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "mp5a3",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","mp5a3","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Minigun",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","minigun","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Sniper",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","sniper","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Cheetos",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","cheetos","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Pipe",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","pipe","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Trenchaxe",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","trenchaxe","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Pickaxe And Spade",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","pickandspade","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "Rocket Launcher",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","rocket launcher","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "candy",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","candy","none")
	end,
})

local button = WeaponTab:CreateButton({
	Name = "sucker",
	Callback = function()
    game:GetService("ReplicatedStorage").events.guiEvent:FireServer("changeClass","sucker","none")
	end,
})
