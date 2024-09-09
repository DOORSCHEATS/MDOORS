local AllowedGames = {
    [1] = 10549820578
 }
 
 local NotAllowedGames = {
    [1] = 6516141723,
    [2] = 12308344607
 }
 
 if AllowedGames[table.find(AllowedGames, game.PlaceId)] then
     print("Allowed")
 else
     if NotAllowedGames[game.PlaceId] then
         print("Not allowed")
     else
         print("cant check valid id")    
     end 
 end