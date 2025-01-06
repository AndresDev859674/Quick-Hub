local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Quick Scripts Hub V2",
   Icon = 0, -- Icono para la ventana
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

local Tab = Window:CreateTab("Basic", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Prison Life", 4483345998) -- Pestaña Prison Life
local Tab3 = Window:CreateTab("FPS", 15862513462) -- Pestaña FPS
local Tab4 = Window:CreateTab("Roblox Rivals", 15862513462) -- Pestaña Roblox Rivals
local TabHelp = Window:CreateTab("Help", 4483345998) -- Pestaña Compatibility
local TabClient = Window:CreateTab("Client", 4483345998) -- Pestaña Client

-- Etiquetas (labels)
Tab2:CreateLabel("Recommended For The Most Chaotic Game Prison Life")
Tab3:CreateLabel("Recommended for Shooting and Battle Games etc.")
TabClient:CreateLabel("Quick Scripts Hub Options and Experiments")
Tab:CreateLabel("Welcome to Quick Scripts, Select a Button (script)")
local Paragraph = Tab:CreateParagraph({Title = "Thanks To Use The V2!", Content = "Thanks for Use this New Quick Scripts Hub"})
local Paragraph = TabHelp:CreateParagraph({Title = "Quick Scripts Hub V2 25.2.0.0", Content = "Your Version is 25.2.0.0, This Hub is A V2 (lastest Version)"})
local Paragraph = TabHelp:CreateParagraph({Title = "How To Use", Content = "Select A Button and Toggles and Sliders a Textboxs To Make Some Behaviors"})
local Paragraph = TabHelp:CreateParagraph({Title = "The Compatibility Is", Content = "Xeno, JJSploit, Solara, And Alls Exploits"})
local Paragraph = Tab4:CreateParagraph({Title = "Welcome to Roblox Rivals Zone", Content = "Here Are Some Roblox Rivals Scripts You Might Be Interested In"})

local Section = Tab:CreateSection("Main Section")

local Section = Tab2:CreateSection("Prison Life Scripts")

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
        local numValue = tonumber(Value) -- Convierte el texto a número
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
        local numValue = tonumber(Value) -- Convierte el texto a número
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
        local numValue = tonumber(Value) -- Convierte el texto a número
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
        local healthValue = tonumber(Value) -- Convertir el valor ingresado a número
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
