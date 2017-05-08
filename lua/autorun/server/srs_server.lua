include( "srs_config.lua" )

hook.Add( "PlayerSay", "RollChatCommand", function( ply, text )
	if ( string.sub( text, 1, 5 ) == "/roll" ) then
		local roll = math.random( 1, 100 )
		ply:ChatPrint( Valfunde.SRS.Roll .. " " .. roll .. "." )
	end
end )