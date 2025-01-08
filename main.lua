print("Running Quick Scripts Hub V2.....")

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Quick Scripts Hub V2",
   Icon = "mouse-pointer-click", -- Icono para la ventana
   LoadingTitle = "Loading Quick Scripts Hub",
   LoadingSubtitle = "by Andres & Luisito",
   Theme = "Default",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "OrionTest",
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

Rayfield:Notify({
   Title = "Hi! Thanks For Use",
   Content = "Hello! Thanks For Use This Script!",
   Duration = 6.5,
   Image = "rewind",
})

Rayfield:Notify({
    Title = "Quick Scripts Hub Updated",
    Content = "your Version is 25.3.0.0",
    Duration = 6.5,
    Image = "rewind",
 })

local Tab = Window:CreateTab("Basic", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Prison Life", "swords") -- Pestaña Prison Life
local Tab5 = Window:CreateTab("Tower of Hell", "activity") -- Pestaña Prison Life
local Tab3 = Window:CreateTab("FPS", 15862513462) -- Pestaña FPS
local Tab4 = Window:CreateTab("Roblox Rivals", 15862513462) -- Pestaña Roblox Rivals
local Tab6 = Window:CreateTab("Arsenal", 15862513462) -- Pestaña Roblox Rivals
local Tab7 = Window:CreateTab("Pets GO!", "dices") -- Pestaña Roblox Rivals
local TabUser = Window:CreateTab("My Profile", "user") -- User
local TabHelp = Window:CreateTab("Help", "info") -- Pestaña Compatibility
local TabClient = Window:CreateTab("Client", "bolt") -- Pestaña Client
-- Etiquetas (labels)
Tab2:CreateLabel("Recommended For The Most Chaotic Game Prison Life")
Tab2:CreateLabel("Walkspeed and stuff is on the Tab Basic")
Tab3:CreateLabel("Recommended for Shooting and Battle Games etc.")
TabClient:CreateLabel("Quick Scripts Hub Options and Experiments")
Tab:CreateLabel("Welcome to Quick Scripts, Select a Button (script)")
local player = game.Players.LocalPlayer
local username = player.Name
local Label = TabUser:CreateLabel("Username: " .. username)
local Paragraph = TabUser:CreateParagraph({Title = "Thanks To Use Quick Scripts Hub!", Content = "Thanks for use"})
local Paragraph = Tab:CreateParagraph({Title = "Thanks To Use The V2!", Content = "Thanks for Use this New Quick Scripts Hub"})
local Paragraph = TabHelp:CreateParagraph({Title = "Quick Scripts Hub V2 25.3.0.0", Content = "Your Version is 25.3.0.0, This Hub is A V2 (lastest Version)"})
local Paragraph = TabHelp:CreateParagraph({Title = "How To Use", Content = "Select A Button and Toggles and Sliders a Textboxs To Make Some Behaviors"})
local Paragraph = TabHelp:CreateParagraph({Title = "The Compatibility Is", Content = "Xeno, JJSploit, Solara, And Alls Exploits"})
local Paragraph = Tab4:CreateParagraph({Title = "Welcome to Roblox Rivals Zone", Content = "Here Are Some Roblox Rivals Scripts You Might Be Interested In"})
local Paragraph = Tab5:CreateParagraph({Title = "Welcome to Tower of Hell Zone", Content = "Sorry, We Will Soon Add a Bypass in this Area"})
local Paragraph = Tab6:CreateParagraph({Title = "Welcome to Arsenal Zone", Content = "Here Are Some Arsenal Scripts You Might Be Interested In"})
local Paragraph = Tab7:CreateParagraph({Title = "Welcome to Pets Go! Zone", Content = "Here Are Some Pets GO Scripts You Might Be Interested In"})
local Section = Tab:CreateSection("Main Section")
local Section = Tab2:CreateSection("Prison Life Scripts")
local Section = Tab5:CreateSection("Tower The Hell Control")
local Section = Tab3:CreateSection("FPS Scripts")
local Section = Tab4:CreateSection("Rivals Scripts")
local Divider = Tab:CreateDivider()

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Tab3:CreateButton({
   Name = "Aimbot V2",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/aimbotv2.lua'))()
   end,
})

local Button = Tab6:CreateButton({
    Name = "Vapa V2 Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/rybowe/rybowescripts/main/release.lua'))()
    end,
 })

local Button = Tab6:CreateButton({
    Name = "Thao Hub Arsenal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
    end,
 })

local Button = Tab7:CreateButton({
    Name = "NS HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/rel/refs/heads/main/el"))()
    end,
 })

local Button = Tab7:CreateButton({
    Name = "Zap Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/013luka/petsgo/refs/heads/main/zaphub"))()
    end,
 })

local Button = Tab7:CreateButton({
    Name = "Speed Hub X",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end,
 })

local Button = TabClient:CreateButton({
   Name = "Close Permanently, Close The Instant Hub",
   Callback = function()
     Rayfield:Destroy()
   end,
})

local Button = Tab:CreateButton({
   Name = "( OP ) Roblox FE Chat Bypasser Script",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/Fechatbypassroblox/refs/heads/main/Fe%20Roblox%20ChatBypass"))()
   end,
})

local Button = Tab3:CreateButton({
   Name = "Airhub V1",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua"))()
   end,
})

local Button = Tab3:CreateButton({
   Name = "Airhub V2",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub-V2/main/src/Main.lua"))()
   end,
})

local Button = Tab3:CreateButton({
   Name = "Aimbot",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/Aimbot.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Click Teleport",
   Callback = function()
     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Click Teleport",
   Callback = function()
     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Click%20Teleport.txt"))()
   end,
})

local Divider2 = Tab:CreateDivider("Player")

local Slider = Tab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 650},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local Input = Tab:CreateInput({
   Name = "Custom WalkSpeed",
   CurrentValue = "",
   PlaceholderText = "Put A Speed",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        local numValue = tonumber(Text) -- Convierte el texto a número
        if numValue and numValue > 0 then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = numValue
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
   end,
})

local Slider = Tab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 500},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

local Input = Tab:CreateInput({
   Name = "Custom JumpPower",
   CurrentValue = "",
   PlaceholderText = "Put A Num for the Power of Jump",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        local numValue = tonumber(Text) -- Convierte el texto a número
        if numValue and numValue > 0 then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = numValue
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
   end,
})


local FlyEnabled = false
local FlySpeed = 5

local Toggle = Tab:CreateToggle({
   Name = "Train",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
           FlyEnabled = Value
        if FlyEnabled then
            -- Añadir lógica para activar el vuelo
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local bodyGyro = Instance.new("BodyGyro", character.HumanoidRootPart)
            local bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)

            bodyGyro.P = 9e4
            bodyGyro.maxTorque = Vector3.new(9e4, 9e4, 9e4)
            bodyGyro.cframe = character.HumanoidRootPart.CFrame

            bodyVelocity.velocity = Vector3.new(0, 0.1, 0)
            bodyVelocity.maxForce = Vector3.new(9e4, 9e4, 9e4)

            repeat
                wait()
                humanoid.PlatformStand = true
                bodyVelocity.velocity = character.HumanoidRootPart.CFrame.lookVector * FlySpeed
            until not FlyEnabled

            bodyGyro:Destroy()
            bodyVelocity:Destroy()
            humanoid.PlatformStand = false
        end
   end,
})

local function toggleFly()
    FlyEnabled = not FlyEnabled
    if FlyEnabled then
        -- Lógica para activar el vuelo
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local bodyGyro = Instance.new("BodyGyro", character.HumanoidRootPart)
        local bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)

        bodyGyro.P = 9e4
        bodyGyro.maxTorque = Vector3.new(9e4, 9e4, 9e4)
        bodyGyro.cframe = character.HumanoidRootPart.CFrame

        bodyVelocity.velocity = Vector3.new(0, 0.1, 0)
        bodyVelocity.maxForce = Vector3.new(9e4, 9e4, 9e4)

        repeat
            wait()
            humanoid.PlatformStand = true
            bodyVelocity.velocity = character.HumanoidRootPart.CFrame.lookVector * FlySpeed
        until not FlyEnabled

        bodyGyro:Destroy()
        bodyVelocity:Destroy()
        humanoid.PlatformStand = false
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.T then
        toggleFly()
    end
end)

local Slider = Tab:CreateSlider({
   Name = "Train Speed",
   Range = {16, 650},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       FlySpeed = Value
   end,
})

local Input = Tab:CreateInput({
   Name = "Custom Train Speed",
   CurrentValue = "",
   PlaceholderText = "Put A Speed For the Train",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        local numValue = tonumber(Text) -- Convierte el texto a número
        if numValue and numValue > 0 then
            FlySpeed = numValue -- Asigna el valor al control de velocidad
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        NoclipEnabled = Value
        local player = game.Players.LocalPlayer
        local character = player.Character

        if NoclipEnabled then
            game:GetService("RunService").Stepped:Connect(function()
                if NoclipEnabled then
                    for _, v in pairs(character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            end)
        else
            for _, v in pairs(character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Infinite Jump",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        InfiniteJumpEnabled = Value
        local player = game.Players.LocalPlayer
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")

        if InfiniteJumpEnabled then
            local jumpConnection
            jumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
                if InfiniteJumpEnabled and humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                else
                    jumpConnection:Disconnect()
                end
            end)
        end
   end,
})

local FloatEnabled = false
local FloatSpeed = 1

local Toggle = Tab:CreateToggle({
   Name = "Float",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        FloatEnabled = Value
        if FloatEnabled then
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            local bodyPosition = Instance.new("BodyPosition", humanoidRootPart)
            bodyPosition.D = 10
            bodyPosition.P = 10000
            bodyPosition.MaxForce = Vector3.new(0, 5000, 0)

            repeat
                wait()
                bodyPosition.Position = humanoidRootPart.Position + Vector3.new(0, FloatSpeed, 0)
            until not FloatEnabled
            bodyPosition:Destroy()
        end
   end,
})

local function toggleFloat()
    FloatEnabled = not FloatEnabled
    if FloatEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local bodyPosition = Instance.new("BodyPosition", humanoidRootPart)
        bodyPosition.D = 10
        bodyPosition.P = 10000
        bodyPosition.MaxForce = Vector3.new(0, 5000, 0)

        repeat
            wait()
            bodyPosition.Position = humanoidRootPart.Position + Vector3.new(0, FloatSpeed, 0)
        until not FloatEnabled
        bodyPosition:Destroy()
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggleFloat()
    end
end)

local Slider = Tab:CreateSlider({
   Name = "Float Speed",
   Range = {16, 650},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       FloatSpeed = Value
   end,
})

local Input = Tab:CreateInput({
   Name = "Custom Float Speed",
   CurrentValue = "",
   PlaceholderText = "Put A Speed For the Float",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        local numValue = tonumber(Text) -- Convierte el texto a número
        if numValue and numValue > 0 then
            FloatSpeed = numValue -- Asigna el valor al control de velocidad flotante
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
   end,
})

local Input = Tab:CreateInput({
    Name = "Teleport to Player",
    CurrentValue = "",
    PlaceholderText = "Put a Username",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        -- Función de teletransporte
        TeleportToPlayer(Text)
    end,
})

function TeleportToPlayer(playerName)
    -- Encuentra el jugador por nombre
    local targetPlayer = nil
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name == playerName then
            targetPlayer = player
            break
        end
    end

    if targetPlayer then
        -- Teletransportar al jugador local a la posición del jugador objetivo
        local localPlayer = game.Players.LocalPlayer
        if localPlayer.Character and targetPlayer.Character then
            localPlayer.Character:SetPrimaryPartCFrame(targetPlayer.Character:GetPrimaryPartCFrame())
        end
    else
        warn("Jugador no encontrado: " .. playerName)
    end
end


local Button = Tab:CreateButton({
   Name = "Suicide",
   Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid:TakeDamage(humanoid.MaxHealth) -- Hace que el jugador explote
   end,
})

local Button = Tab:CreateButton({
   Name = "High Health",
   Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Health = humanoid.MaxHealth
   end,
})

local Button = Tab:CreateButton({
   Name = "Sit",
   Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Sit = true
   end,
})

local GodModeEnabled = false

local Toggle = Tab:CreateToggle({
   Name = "Infinite High Health Mode",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        GodModeEnabled = Value
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if GodModeEnabled then
            while GodModeEnabled do
                wait(1)
                humanoid.Health = humanoid.MaxHealth
            end
        end
   end,
})

local Button = Tab:CreateButton({
   Name = "Dex Explorer",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LorekeeperZinnia/Dex/refs/heads/master/main.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Btools",
   Callback = function()
       loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
   end,
})

local Button = Tab3:CreateButton({
   Name = "WRD ESP",
   Callback = function()
       loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Highlight Player",
   Callback = function()
       loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Highlight%20Player.txt"))()
   end,
})

local Button = Tab2:CreateButton({
   Name = "Prison Ware",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
   end,
})

local Button = Tab2:CreateButton({
   Name = "FE BYPASS GUI",
   Callback = function()
       loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
   end,
})

local Button = Tab2:CreateButton({
   Name = "Prison GUI OP",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/plop.lua"))()
   end,
})

local Button = Tab2:CreateButton({
   Name = "PrizzLife",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub/refs/heads/main/prizz.lua"))()
   end,
})

local Button = Tab4:CreateButton({
   Name = "Roblox Rivals GUI",
   Callback = function()
               local scriptURL = 'https://raw.githubusercontent.com/Sheeshablee73/Scriptss/main/RivalsUPD2.lua'
local response = game:HttpGet(scriptURL)
local executeScript = loadstring(response)
executeScript()
   end,
})

local Button = Tab4:CreateButton({
   Name = "Ronix Hub",
   Callback = function()
      loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/666dbc0571c238fbd3203da720d06060.lua"))()
   end,
})

local Button = Tab4:CreateButton({
   Name = "Tbao Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Reviz Admin",
   Callback = function()
      loadstring(game:HttpGet("https://github.com/kr4sk/Reviz-admin/raw/refs/heads/main/Reviz-admin.lua"))()
   end,
})

local Button = Tab5:CreateButton({
    Name = "Jump Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["jump"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

local Button = Tab5:CreateButton({
    Name = "Speed Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["speed"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

 local Button = Tab5:CreateButton({
    Name = "Gravity Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["gravity"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

 local Button = Tab5:CreateButton({
    Name = "Hook Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["hook"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

 local Button = Tab5:CreateButton({
    Name = "Fusion Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["fusion"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

 local Button = Tab5:CreateButton({
    Name = "Trowel Gear",
    Callback = function()
        local copy = game.ReplicatedStorage.Gear["trowel"]:Clone()
        copy.Parent = game.Players.LocalPlayer.Backpack
    end,
 })

local Button = Tab4:CreateButton({
   Name = "Azure Modded",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "TP Tool",
   Callback = function()
              mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Input = Tab:CreateInput({
   Name = "Give Health",
   CurrentValue = "100",
   PlaceholderText = "Put A Health",
   RemoveTextAfterFocusLost = false,
   Flag = "Input1",
   Callback = function(Text)
        local healthValue = tonumber(Text) -- Convertir el valor ingresado a número
        if healthValue and healthValue > 0 then
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")

            if humanoid then
                humanoid.Health = healthValue -- Establecer la salud del jugador
                print("Health set to: " .. healthValue) -- Confirmación en consola
            else
                print("Humanoid not found!") -- Si no se encuentra el humanoide
            end
        else
            OrionLib:MakeNotification({
                Name = "Invalid Input",
                Content = "Please enter a valid number greater than 0.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
   end,
})

-- Variables
local CrazyFlyEnabled = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()  -- Asegurarse de que el personaje esté cargado
local humanoid = character:WaitForChild("Humanoid")
local bodyVelocity

local Toggle = Tab:CreateToggle({
   Name = "Crazy Fly",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        CrazyFlyEnabled = Value
        
        if CrazyFlyEnabled then
            -- Crear el BodyVelocity para simular el vuelo
            bodyVelocity = Instance.new("BodyVelocity", character.HumanoidRootPart)
            bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)  -- Fuerza máxima para el vuelo
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)  -- Movimiento controlado por las teclas
            bodyVelocity.Parent = character.HumanoidRootPart

            -- Ajustar la posición para simular que está flotando en el aire
            character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)  -- Levantar un poco al personaje
        else
            -- Eliminar el BodyVelocity cuando se desactiva el Crazy Fly
            if bodyVelocity then
                bodyVelocity:Destroy()
            end

            -- Volver a la posición original
            character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame - Vector3.new(0, 2, 0)
        end
   end,
})

-- Conectar el control del vuelo al teclado
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if CrazyFlyEnabled then
        if input.UserInputType == Enum.UserInputType.Keyboard then
            -- Control de dirección con teclas WASD
            if input.KeyCode == Enum.KeyCode.W then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.lookVector * 100  -- Volar hacia adelante
            elseif input.KeyCode == Enum.KeyCode.S then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.lookVector * 100  -- Volar hacia atrás
            elseif input.KeyCode == Enum.KeyCode.A then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.rightVector * 100  -- Volar hacia la izquierda
            elseif input.KeyCode == Enum.KeyCode.D then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.rightVector * 100  -- Volar hacia la derecha
            elseif input.KeyCode == Enum.KeyCode.E then
                bodyVelocity.Velocity = Vector3.new(0, 100, 0)  -- Volar hacia arriba (presionando E)
            elseif input.KeyCode == Enum.KeyCode.F then
                bodyVelocity.Velocity = Vector3.new(0, -100, 0)  -- Volar hacia abajo (presionando F)
            end
        end
    end
end)

local gravity = 9.8

local Slider = Tab:CreateSlider({
   Name = "Gravity",
   Range = {0, 200},
   Increment = 5,
   Suffix = "G",
   CurrentValue = gravity,
   Flag = "GravitySlider",
   Callback = function(Value)
      gravity = Value -- Ajusta la variable de gravedad
      -- Aquí puedes actualizar cualquier aspecto de tu juego que dependa de la gravedad
      workspace.Gravity = gravity -- Por ejemplo, actualizar la gravedad del workspace
      print("Valor de la gravedad ajustado a:", gravity)
   end,
})

local ESPEnabled = false

local function CreateESP(player)
    local function CreateHighlight()
        local highlight = Instance.new("Highlight")
        highlight.Adornee = player.Character
        highlight.Parent = player.Character
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0 -- Hace visible el contorno a través de las paredes
        
        local teamColor = Color3.fromRGB(255, 255, 255) -- Color por defecto (blanco)
        if player.Team then
            teamColor = player.Team.TeamColor.Color
        end
        highlight.FillColor = teamColor

        return highlight
    end

    local function CreateBillboard()
        local head = player.Character:WaitForChild("Head", 10)
        if head then
            local billboard = Instance.new("BillboardGui")
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 200, 0, 50) -- Ajusta el tamaño si es necesario
            billboard.StudsOffset = Vector3.new(0, 5, 0) -- Más arriba
            billboard.AlwaysOnTop = true
            
            local label = Instance.new("TextLabel")
            label.Parent = billboard
            label.Size = UDim2.new(1, 0, 1, 0)
            label.BackgroundTransparency = 1 -- Fondo transparente
            label.TextColor3 = Color3.fromRGB(255, 255, 255) -- Color por defecto (blanco)
            label.TextStrokeTransparency = 0
            label.TextWrapped = true
            label.TextScaled = true

            return billboard, label
        else
            warn("No se pudo encontrar la cabeza del jugador.")
            return nil, nil
        end
    end

    local highlight = CreateHighlight()
    local billboard, label = CreateBillboard()
    if not billboard then return end
    
    local startTime = tick()

    local function UpdateLabel()
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            local humanoid = player.Character.Humanoid
            local distance = (player.Character.PrimaryPart.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
            local heldItem = "None"
            
            if player.Character:FindFirstChildOfClass("Tool") then
                heldItem = player.Character:FindFirstChildOfClass("Tool").Name
            end

            local timeElapsed = tick() - startTime

            label.Text = string.format("Name: %s / Health: %.0f%% / Studs: %.0f / Item: %s / Time: %.0f s", player.Name, humanoid.Health / humanoid.MaxHealth * 100, distance, heldItem, timeElapsed)
        end
    end

    game:GetService("RunService").RenderStepped:Connect(UpdateLabel)
    
    billboard.Parent = player.Character
end

local function RemoveESP(player)
    if player.Character then
        for _, v in pairs(player.Character:GetChildren()) do
            if v:IsA("Highlight") or v:IsA("BillboardGui") then
                v:Destroy()
            end
        end
    end
end

local function ToggleESP(enable)
    ESPEnabled = enable
    if ESPEnabled then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                CreateESP(player)
                player.CharacterAdded:Connect(function()
                    if ESPEnabled then
                        CreateESP(player)
                    end
                end)
            end
        end
        print("ESP activado")
    else
        for _, player in pairs(game.Players:GetPlayers()) do
            RemoveESP(player)
        end
        print("ESP desactivado")
    end
end

local Toggle = Tab:CreateToggle({
    Name = "ESP",
    CurrentValue = ESPEnabled,
    Flag = "ESPToggle",
    Callback = function(Value)
        ToggleESP(Value)
    end,
})

game.Players.PlayerAdded:Connect(function(player)
    if ESPEnabled then
        CreateESP(player)
        player.CharacterAdded:Connect(function()
            if ESPEnabled then
                CreateESP(player)
            end
        end)
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    RemoveESP(player)
end)

-- Variables
local InfiniteJumpEnabled = false

-- Toggle for Infinite Jump
local Toggle = Tab:CreateToggle({
    Name = "Enable Infinite Jump",
    CurrentValue = false,
    Flag = "ToggleInfiniteJump",
    Callback = function(Value)
        InfiniteJumpEnabled = Value
        print(InfiniteJumpEnabled and "Infinite Jump Enabled" or "Infinite Jump Disabled")
    end,
})

-- Infinite Jump Function
local function onJumpRequest()
    if InfiniteJumpEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end

-- Connect Infinite Jump to Heartbeat to ensure it works continuously
game:GetService("RunService").Heartbeat:Connect(onJumpRequest)

local spamEnabled = false
local spamMessage = ""

local Toggle = Tab:CreateToggle({
    Name = "Spam Toggle",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        spamEnabled = Value
    end,
})

local Input = Tab:CreateInput({
    Name = "Spam Text",
    CurrentValue = "",
    PlaceholderText = "Introduce el mensaje de spam",
    RemoveTextAfterFocusLost = false,
    Flag = "Input1",
    Callback = function(Text)
        spamMessage = Text
    end,
})

-- Función para hacer spam en el chat
local function SpamChat()
    while spamEnabled do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamMessage, "All")
        wait(1)  -- Puedes ajustar el tiempo de espera entre mensajes de spam
    end
end

-- Activar el spamming cuando el toggle esté activado
Toggle.Callback = function(Value)
    spamEnabled = Value
    if spamEnabled then
        spawn(SpamChat)
    end
end

-- Actualizar el mensaje de spam cuando se introduce un nuevo texto
Input.Callback = function(Text)
    spamMessage = Text
end
