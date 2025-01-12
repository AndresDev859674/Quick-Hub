print("Ready to Open Quick Functions Hub!")

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Quick Functions Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section1 = Tab:AddSection({
    Name = "Main"
})

local TabHelp = Window:MakeTab({
    Name = "What's is?",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OrionLib:MakeNotification({
    Name = "Welcome to Quick Functions Hub",
    Content = "WARNING: These Scripts May Have Huge Potential (Be Careful)",
    Image = "rbxassetid://4483345998",
    Time = 5
})

OrionLib:MakeNotification({
    Name = "Quick Functions Hub Basic Updated To 25.0.0.0",
    Content = "*no changelogs found*",
    Image = "rbxassetid://4483345998",
    Time = 5
})

Tab:AddLabel("Welcome to Quick Scripts, Select a Function")
TabHelp:AddParagraph("What's is This Script?", "is to do player functions and various things instead of running scripts")

Tab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 650,
    Default = 16,
    Color = Color3.fromRGB(45, 170, 255),  -- Color personalizado para el slider
    Increment = 5,  -- Incremento de 5 unidades al mover el slider
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

-- TextBox para WalkSpeed
Tab:AddTextbox({
    Name = "Custom WalkSpeed",
    Default = "16", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
        local numValue = tonumber(Value) -- Convierte el texto a número
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
    end
})

Tab:AddSlider({
    Name = "JumpPower",
    Min = 50,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(144, 238, 144),  -- Verde claro
    Increment = 1,
    ValueName = "Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})


-- TextBox para JumpPower
Tab:AddTextbox({
    Name = "Custom JumpPower",
    Default = "50", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
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
    end
})

local FlyEnabled = false
local FlySpeed = 5

Tab:AddToggle({
    Name = "Train",
    Default = false,
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
    end    
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

Tab:AddSlider({
    Name = "Train Speed",
    Min = 1,
    Max = 500,
    Default = 1,
    Color = Color3.fromRGB(255, 0, 0),  -- Rojo normal
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        FlySpeed = Value
    end    
})

-- TextBox para Train Speed
Tab:AddTextbox({
    Name = "Custom Train Speed",
    Default = "1", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
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
    end
})

local NoclipEnabled = false

Tab:AddToggle({
    Name = "Noclip",
    Default = false,
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
    end    
})

local InfiniteJumpEnabled = false

Tab:AddToggle({
    Name = "Infinite Jump",
    Default = false,
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
    end    
})

local FloatEnabled = false
local FloatSpeed = 1

Tab:AddToggle({
    Name = "Float",
    Default = false,
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
    end    
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

Tab:AddSlider({
    Name = "Float Speed",
    Min = 1,
    Max = 350,
    Default = 1,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        FloatSpeed = Value
    end    
})

-- TextBox para Float Speed
Tab:AddTextbox({
    Name = "Custom Float Speed",
    Default = "1", -- Valor inicial
    TextDisappear = false,
    Callback = function(Value)
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
    end
})

Tab:AddButton({
    Name = "Suicide",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid:TakeDamage(humanoid.MaxHealth) -- Hace que el jugador explote
    end    
})

Tab:AddButton({
    Name = "High Health",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Health = humanoid.MaxHealth
    end    
})

Tab:AddButton({
    Name = "Sit",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        humanoid.Sit = true
    end    
})

local GodModeEnabled = false

Tab:AddToggle({
    Name = "Infinite High Health Mode",
    Default = false,
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
    end    
})


Tab:AddButton({
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
    end    
})

-- TextBox para Give Health
Tab:AddTextbox({
    Name = "Give Health",
    Default = "100", -- Valor inicial de salud
    TextDisappear = true, -- El texto desaparece después de usarlo
    Callback = function(Value)
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
    end
})

-- Variables
local CrazyFlyEnabled = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()  -- Asegurarse de que el personaje esté cargado
local humanoid = character:WaitForChild("Humanoid")
local bodyVelocity

-- Toggle para activar/desactivar el Crazy Fly
Tab:AddToggle({
    Name = "Crazy Fly",
    Default = false,
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
    end    
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

-- Variable to store the target player's name
local targetPlayer = ""

-- Create a TextBox for entering the player's name
local PlayerTextbox = Tab:AddTextbox({
    Name = "Player Name",
    Default = "",
    TextDisappear = false,
    Callback = function(Text)
        targetPlayer = Text -- Store the entered text
    end   
})

-- Create a button to execute the teleportation
local TeleportButton = Tab:AddButton({
    Name = "Teleport",
    Callback = function()
        local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
        local humanoid = game.Players.LocalPlayer.Character.Humanoid

        if game.Players:FindFirstChild(targetPlayer) then
            local targetCharacter = game.Players[targetPlayer].Character
            if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart") then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                wait(0.1)
                playerRoot.CFrame = targetCharacter.HumanoidRootPart.CFrame
                OrionLib:MakeNotification({
                    Name = "Success",
                    Content = "Teleported successfully!",
                    Image = "rbxassetid://4483362458",
                    Time = 5
                })
            else
                OrionLib:MakeNotification({
                    Name = "Error",
                    Content = "The target player does not have a HumanoidRootPart.",
                    Image = "rbxassetid://4483362458",
                    Time = 5
                })
            end
        else
            OrionLib:MakeNotification({
                Name = "Error",
                Content = "Player not found.",
                Image = "rbxassetid://4483362458",
                Time = 5
            })
        end
    end   
})

-- Función para hacer ServerHop
local function ServerHop()
    local gameId = game.PlaceId
    local servers = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..gameId.."/servers/Public?sortOrder=Asc&limit=100"))
    
    for _, server in pairs(servers.data) do
        if server.playing < server.maxPlayers then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, server.id, game.Players.LocalPlayer)
            break
        end
    end
end

-- Añadir botón de ServerHop
Tab:AddButton({
    Name = "ServerHop",
    Callback = function()
        ServerHop()
    end
})

-- Variables
local InfiniteJumpEnabled = false

-- Toggle para Infinite Jump
Tab:AddToggle({
    Name = "Enable Infinite Jump",
    Default = false,
    Callback = function(Value)
        InfiniteJumpEnabled = Value
        print(InfiniteJumpEnabled and "Infinite Jump Enabled" or "Infinite Jump Disabled")
    end
})

-- Función de Infinite Jump
local function onJumpRequest()
    if InfiniteJumpEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character and character:FindFirstChildOfClass("Humanoid") then
            character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end

-- Conectar Infinite Jump a Heartbeat para asegurar que funcione continuamente
game:GetService("RunService").Heartbeat:Connect(onJumpRequest)

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
            label.BackgroundTransparency = 0.3 -- Fondo semitransparente estilo consola
            label.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Fondo negro
            label.BorderSizePixel = 0
            label.TextStrokeTransparency = 0
            label.TextWrapped = true
            label.TextScaled = true
            label.TextColor3 = player.Team and player.Team.TeamColor.Color or Color3.fromRGB(255, 255, 255) -- Color del equipo
            label.Text = "Team: " .. (player.Team and player.Team.Name or "No Team")

            -- Añadir bordes redondeados
            local uicorner = Instance.new("UICorner")
            uicorner.CornerRadius = UDim.new(0.2, 0)
            uicorner.Parent = label

            return billboard, label
        else
            warn("No se pudo encontrar la cabeza del jugador.")
            return nil, nil
        end
    end

    if player.Character then
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

                local seat = "None"
                if player.Character:FindFirstChildWhichIsA("Seat") then
                    seat = player.Character:FindFirstChildWhichIsA("Seat").Name
                end

                label.Text = string.format("Team: %s / Name: %s / Health: %.0f%% / Studs: %.0f / Item: %s / Time: %.0f s / Sit: %s", 
                    player.Team and player.Team.Name or "No Team", 
                    player.Name, 
                    humanoid.Health / humanoid.MaxHealth * 100, 
                    distance, 
                    heldItem, 
                    timeElapsed,
                    seat)
                
                if player.Team then
                    label.TextColor3 = player.Team.TeamColor.Color
                end
            end
        end

        game:GetService("RunService").RenderStepped:Connect(UpdateLabel)
        
        billboard.Parent = player.Character
    end
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
                        wait(1) -- Pequeño retraso para asegurar que el personaje ha cargado
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

Tab:AddToggle({
    Name = "ESP",
    Default = ESPEnabled,
    Callback = function(Value)
        ToggleESP(Value)
    end,
})

game.Players.PlayerAdded:Connect(function(player)
    if ESPEnabled then
        player.CharacterAdded:Connect(function()
            if ESPEnabled then
                wait(1) -- Pequeño retraso para asegurar que el personaje ha cargado
                CreateESP(player)
            end
        end)
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    RemoveESP(player)
end)

-- Aplicar ESP a todos los jugadores existentes
for _, player in pairs(game.Players:GetPlayers()) do
    if player ~= game.Players.LocalPlayer and ESPEnabled then
        CreateESP(player)
    end
end

local gravity = 200

Tab:AddSlider({
   Name = "Gravity",
   Min = 0,
   Max = 200,
   Default = gravity,
   Color = Color3.fromRGB(255,255,255),
   Increment = 5,
   ValueName = "G",
   Callback = function(Value)
      gravity = Value -- Ajusta la variable de gravedad
      -- Aquí puedes actualizar cualquier aspecto de tu juego que dependa de la gravedad
      workspace.Gravity = gravity -- Por ejemplo, actualizar la gravedad del workspace
      print("Valor de la gravedad ajustado a:", gravity)
   end
})

