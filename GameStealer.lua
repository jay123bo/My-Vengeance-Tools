-- Paste this into VS Code
local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}

local syn = syn or {}
local saveinstance = saveinstance or syn.saveinstance

if not saveinstance then
    local success, script = pcall(game.HttpGet, game, Params.RepoURL .. "saveinstance.lua")
    if success then
        loadstring(script)()
    end
end

local options = {
    mode = "optimized",
    noscripts = false,
    timeout = 10,
}

saveinstance(options)