debug = {}

debugger = {
	enabled = true,
	gui = true,
	prefix = "DEBUG:"
}

function debug.load()
	if ( debugger.enabled == true ) then
		print("Debugger is now enabled")
		if ( debugger.gui == true ) then
			print("Debugger GUI enabled")
		end
	end
end

function debug.draw()
	if ( debugger.gui == true ) then
		love.graphics.print("Debug GUI", 5, 545)
		love.graphics.print("Dimensions: " .. global.w .. "x" .. global.h, 5, 564)
		love.graphics.print("Gamestate: " .. gamestate, 5, 578)
	end
end

function debug.push( head, body )
	if ( debugger.enabled == true ) then
			print(head, body)
	end
end