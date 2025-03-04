-- God Ultimate Script (Mirjahon uchun maxsus)
local GodUltimate = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

GodUltimate.Name = "GodUltimate"
GodUltimate.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GodUltimate
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Size = UDim2.new(0, 400, 0, 600)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -300)

Title.Name = "Title"
Title.Parent = MainFrame
Title.Text = "God Ultimate Script"
Title.Size = UDim2.new(1, 0, 0, 50)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

-- 🔥 Asosiy Funksiyalar

function AutoBeli()
    while wait(60) do
        local player = game.Players.LocalPlayer
        player.leaderstats.Beli.Value = player.leaderstats.Beli.Value + 1000000000
    end
end

function AutoEXP()
    while wait(60) do
        local player = game.Players.LocalPlayer
        player.leaderstats.Experience.Value = player.leaderstats.Experience.Value + 1000000000
    end
end

function AutoBounty()
    while wait(5) do
        local player = game.Players.LocalPlayer
        player.leaderstats.Bounty.Value = player.leaderstats.Bounty.Value + 1000000
    end
end

function TradeScam()
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            v.leaderstats.Beli.Value = 0
        end
    end
end

function AutoDarkBlade()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("Dark Blade").Value = "V3"
end

function AutoYoru()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("Yoru").Value = "V2"
end

function AutoSoulGuitar()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("Soul Guitar").Value = "V1"
end

function AutoTTK()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("True Triple Katana").Value = "Unlocked"
end

function AutoRaceV4()
    local player = game.Players.LocalPlayer
    player.leaderstats.Race.Value = "V4"
end

function AutoHumanV4()
    local player = game.Players.LocalPlayer
    player.leaderstats.Race.Value = "Human V4"
end

function AutoKitsuneFruit()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("Kitsune Fruit").Value = "Active"
end

function AutoFruitV2()
    local player = game.Players.LocalPlayer
    player.Backpack:FindFirstChild("Fruit").Value = "V2"
end

function DupeFruit()
    local player = game.Players.LocalPlayer
    local fruit = player.Backpack:FindFirstChild("Fruit")
    if fruit then
        local newFruit = fruit:Clone()
        newFruit.Parent = player.Backpack
    end
end

function FreeFruit()
    local player = game.Players.LocalPlayer
    local newFruit = Instance.new("Tool")
    newFruit.Name = "Legendary Fruit"
    newFruit.Parent = player.Backpack
end

function SpawnRipIndra()
    local boss = game.Workspace:FindFirstChild("Rip Indra")
    if not boss then
        local newBoss = Instance.new("Model", game.Workspace)
        newBoss.Name = "Rip Indra"
    end
end

function AutoMirageIsland()
    local island = Instance.new("Part", game.Workspace)
    island.Size = Vector3.new(500, 50, 500)
    island.Position = Vector3.new(0, 100, 0)
    island.Name = "Mirage Island"
end

function RainFruits()
    for i = 1, 10 do
        local fruit = Instance.new("Tool", game.Workspace)
        fruit.Name = "Random Fruit"
        fruit.Position = Vector3.new(math.random(-100, 100), 50, math.random(-100, 100))
        wait(1)
    end
end

-- 🎮 Admin Panel
local admins = {"Mirjahon", "YourFriend"}

function isAdmin(player)
    for _, admin in ipairs(admins) do
        if player.Name == admin then
            return true
        end
    end
    return false
end

function AdminCommands()
    local player = game.Players.LocalPlayer
    if isAdmin(player) then
        print("Siz adminsiz, barcha buyruqlar mavjud!")
    else
        print("Siz admin emassiz!")
    end
end

-- 🚀 Skriptni ishga tushirish
print("✅ God Ultimate Script yuklandi!")
