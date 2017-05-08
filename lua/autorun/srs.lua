include( "srs_config.lua" )
local white, red = Color(255, 255, 255), Color(255, 50, 50)

hook.Add( "PlayerSay", "RollChatCommand", function( ply, text, public )
	if string.lower( string.sub( text, 1, 5 ) ) == "/roll" then
		local roll = math.random( 1, 100 )
        for _, pl in pairs( player.GetAll( ) ) do 
            if pl:GetPos( ):DistToSqr( ply:GetPos( ) ) < 100000 then
                if CLIENT then return end
                DarkRP.talkToPerson( pl, white, Valfunde.SRS.Roll .. " : ", red, roll )
            end
        end
        return ""
	end
end )
