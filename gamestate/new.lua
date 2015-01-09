gsNew = {}
splash = { "This is a game..", "That you cannot win" }



function gsNew.load()
	initTime = love.timer.getTime()
	updateTime = 0
	splashDisplay = 1
	debug.push("TIME", initTime)
	debug.push("SPLASH", splash[splashDisplay])
end

function gsNew.update( dt )
	updateTime = updateTime + 1

	if ( updateTime < 100 ) then
		splashDisplay = 1
	elseif ( updateTime > 100 and updateTime < 200 ) then
		splashDisplay = 2
	elseif ( updateTime > 250 ) then
		state.set("menu")
	end
	debug.push("UPDATE", updateTime)
end

function gsNew.draw()
	love.graphics.setBackgroundColor(50,50,100)
	love.graphics.print(splash[splashDisplay], 20, 20)
end