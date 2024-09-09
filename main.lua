local AllowedGames = {
    [1] = 6839171747
}
 
local NotAllowedGames = {
    [1] = 6516141723,
    [2] = 12308344607
}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local function Notify(NotifName, NotifContent, NotifImage, NotifTime)
    OrionLib:MakeNotification({
        Name = NotifName or "Title!",
        Content = NotifContent or "Notification content... what will it say??",
        Image = NotifImage or "rbxassetid://4483345998",
        Time = NotifTime or 5
    })
    print("notification sent")
end

if AllowedGames[table.find(AllowedGames, game.PlaceId)] then
    Notify(
        "WELCOME!",
        "Thanks for using MDOORS, join our discord () for more updates and infos.",
        nil,
        4
    )

    local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
else
    if NotAllowedGames[table.find(NotAllowedGames, game.PlaceId)] then
        Notify(
            "Error",
            "This Place/Floor isn't supported. Try to run the script in an another floor.",
            nil,
            6
        )
    else
        print("cant check valid id")    
        Notify(
            "Error",
            "Failed to check id, retry again. If it still fail, contact us on our discord ().",
            nil,
            6
        )
    end 
end


OrionLib:Init()
