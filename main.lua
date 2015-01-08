-- GLOBAL VARIABLES
global = {
	w = love.graphics.getWidth(),
	h = love.graphics.getHeight(),
	c = love.graphics.getWidth() / 2,
	d = love.timer.getDelta(),
}

-- Require Other Files
require "statemanager"
require "debugger"
require "gamestate/new"
require "gamestate/menu"

function love.load()
	debug.load()
	state.load()
end

function love.update(dt)

end

function love.draw()
	debug.draw()
    state.draw()
end

function love.keypressed(key)

end

function love.keyreleased(key)
	if ( key == "1" ) then
		state.set("new")
	elseif ( key == "2" ) then
		state.set("menu")
	elseif ( key == "`" ) then
		if ( debugger.gui == true ) then
			debugger.gui = false
			debug.push("GUI", "has been Disabled")
		else
			debugger.gui = true
			debug.push("GUI", "has been Enabled")
		end
	end
end

function love.mousepressed(x, y, k)

end