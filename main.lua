local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local SoundService = game:GetService("SoundService")

local AllowedGames = {
    [1] = 10549820578,
}

local NotAllowedGames = {
    [1] = 12308344607,
    [2] = 6839171747
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

function CheckForGameId(Id)
    local CheckIfAllowed = AllowedGames[table.find(AllowedGames, Id)]
    local CheckIfNotAllowed = NotAllowedGames[table.find(NotAllowedGames, Id)]
   
    if CheckIfNotAllowed then
       if CheckIfAllowed then
           return false
       end
    else
        return true
    end
end

local function Notify(NameNotif, ContentNotif, ImageNotif, TimeNotif)
    OrionLib:MakeNotification({
        Name = NameNotif or "no name given",
        Content = ContentNotif or "no content given",
        Image = ImageNotif or "rbxassetid://4483345998" ,
        Time = 6 or 10
    })
end

local function Initialize(Id)

    if not CheckForGameId(Id) then
        Notify("WARNING!", "Please run the script in game, not in the lobby.", nil, 8)
        return
    else
        Notify(
            "Message", 
            "Thanks for using MDOORS, join our discord () for updates and more!", 
            "rbxassetid://4483345998", 
            6
        )
    end
end



Initialize(game.PlaceId)