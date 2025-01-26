print("Loading Quick Scripts Hub V2.....")

local success, scriptContent = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/AndresDev859674/Quick-Hub/main/main.lua")
end)

if success then
    print("Script content loaded successfully.")
    local loadSuccess, loadError = pcall(function()
        loadstring(scriptContent)()
    end)
    
    if loadSuccess then
        print("Script executed successfully.")
    else
        warn("Error executing script: " .. loadError)
    end
else
    warn("Error loading script content.")
end
