print("Running First Quick Scripts Hub Loader")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Quick Scripts Hub Loader", "DarkTheme")

local Tab = Window:NewTab("Welcome")

local Section = Tab:NewSection("Welcome to Quick Scripts Hub Loader Menu!")

local button = Section:NewButton("Quick Scripts Hub Modern (Recomended and Main)", "ButtonInfo", function()
    local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub-V2/main/main.lua")
    loadstring(scriptContent)()
end)

local button = Section:NewButton("Quick Functions Hub (NEW!)", "ButtonInfo", function()
    local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub-V2/main/nextgen.lua")
    loadstring(scriptContent)()
end)
