--[[-------------------------------------------------------------------------
Script by Valfunde
If you have any problems, don't hesitate to contact me or add me on steam (Valfunde *Banna Army) but write a comment before adding me
If you try to edit something wich isn't in configuration file and the script doesn't work, it's you fault so don't come cry and tell script is broken.
---------------------------------------------------------------------------]]

include("srs_config.lua")

local white, red = Color(255, 255, 255), Color(255, 50, 50)

hook.Add("PlayerSay", "RollChatCommand", function(ply, text, public)
		
	if string.lower(string.sub(text, 1, 5)) == "/roll" then

		local roll = math.random(1, 100)
			
        	for _, player in ipairs(player.GetAll()) do
				
            		if player:GetPos():DistToSqr(ply:GetPos()) < 100000 then
		
				if CLIENT then return end
					
                		DarkRP.talkToPerson(player, white, Valfunde.SRS.Roll .. " ", red, roll)
					
            		end
        	end
			
        	return ""

	end
end)
