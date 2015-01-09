state = {}

gamestate = nil
states = { "new", "menu", "game", "paused", "loading" }

function state.load()
	state.set("new")
	if (debugger.enabled) then
		debug.load()
	end

	if ( gamestate == "new" ) then
		gsNew.load()
	end
end

function state.update()
	if ( gamestate == "new" ) then
		gsNew.update(dt)
	end
end

function state.draw()
	if ( gamestate == "new" ) then
			gsNew.draw()
	elseif ( gamestate == "menu" ) then
			gsMenu.draw()
	end

	if (debugger.enabled) then
		debug.draw()
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