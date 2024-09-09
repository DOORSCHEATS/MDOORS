local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local SoundService = game:GetService("SoundService")

local AllowedGames = {
    [1] = 10549820578
}

local NotAllowedGames = {
    [1] = ""
}

function CheckForGameId(Id)
    local CheckIfAllowed = AllowedGames[table.find(AllowedGames, Id)]
    local CheckIfNotAllowed = NotAllowedGames[table.find(NotAllowedGames, Id)]
   
    if CheckIfAllowed then
        return AllowedGames[table.find(AllowedGames, Id)], true
    else
        return 0, false
    end
end

local function Initialize(Id)
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    if not CheckForGameId(Id) then
        OrionLib:MakeNotification({
            Name = "WARNING!",
            Content = "Please run the script in the GAME, not in the lobby.",
            Image = "rbxassetid://4483345998",
            Time = 6
        })
    end
end



task.defer(function()
    Initialize(game.PlaceId)
end)

