print("Running First Quick Center Loader")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Quick Center Loader", "DarkTheme")

local Tab = Window:NewTab("Welcome")

local Section = Tab:NewSection("Welcome to Quick Hub Loader Menu!")

local button = Section:NewButton("Quick Scripts Hub V2 (Recomended and Main)", "Opens QSH V2 and Close this Window", function()
    local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub-V2/main/main.lua")
    loadstring(scriptContent)()
end)

local button = Section:NewButton("Quick Functions Hub (NEW!)", "Opens QFH and Close this Window", function()
    local scriptContent = game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Scripts-Hub-V2/main/nextgen.lua")
    loadstring(scriptContent)()
end)
