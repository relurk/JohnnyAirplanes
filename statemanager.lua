state = {}

gamestate = nil
states = { "new", "menu", "game", "paused", "loading" }

function state.load()
	state.set("new")
end

function state.update()

end

function state.draw()
	if ( gamestate == "new" ) then
			gsNew.draw()
	elseif ( gamestate == "menu" ) then
			gsMenu.draw()
	end
end

function state.set( newState )
	for _, v in ipairs( states ) do
		if v == newState then
			gamestate = newState
			debug.push("STATE", "Gamestate has been changed to: " .. gamestate)
		end
	end
end