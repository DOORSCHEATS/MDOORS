local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local SoundService = game:GetService("SoundService")

local AllowedGames = {
    [1] = 6516141723  
}

function CheckForGameId(Id)
    if AllowedGames[table.find(AllowedGames, Id)] then
        return AllowedGames[table.find(AllowedGames, Id)], true
    else
        return 0, false
    end
end

task.defer(function()
    local Id, CanStart = CheckForGameId(game.PlaceId)

    if CanStart then
        print(Id)
    else
        print("PLACE "..Id.." is not supported yet.") 
    end
end)