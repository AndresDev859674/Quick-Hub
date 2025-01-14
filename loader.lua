print("Running First Quick Center Loader")

local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Window = OrionLib:MakeWindow({Name = "Quick Center Loader", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Tab 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddSection({
    Name = "Welcome to Quick Hub Loader Menu!"
})

OrionLib:MakeNotification({
    Name = "Welcome To Quick Hub (Loader)",
    Content = "It's a Loader of Quick Hub!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

Tab:AddButton({
    Name = "Quick Scripts Hub V2 (Recommended and Main)",
    Callback = function()
        local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Hub/main/main.lua")
        loadstring(scriptContent)()
        OrionLib:Destroy()
    end
})

Tab:AddButton({
    Name = "Quick Functions Hub (NEW!)",
    Callback = function()
        local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Hub/main/nextgen.lua")
        loadstring(scriptContent)()
        OrionLib:Destroy()
    end
})

Tab:AddButton({
    Name = "Close Permanently, Close The Instant Hub",
    Callback = function()
            OrionLib:Destroy()
    end    
})
