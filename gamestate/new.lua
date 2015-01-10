gsNew = {}

splashArt = { love.graphics.newImage("images/splashLogo.png"), love.graphics.newImage("images/splashText.png") }
spacing = {
	logoW = global.c - (splashArt[1]:getWidth() / 2),
	textW = global.c - (splashArt[2]:getWidth() / 2),
	logoH = (global.h - (splashArt[1]:getHeight() + splashArt[2]:getHeight())) / 2,
	textH = (global.h - (splashArt[1]:getHeight()) / 2)
}

function gsNew.load()
	debug.push("SPACING", spacing.logoH .. " " .. spacing.textH)
	splashTick = 0
	noLogo = false
	bgInt = 200
end

function gsNew.update( dt )
	splashTick = splashTick + 1
	if (splashTick < 80) then
		onlyLogo = true
	elseif (splashTick > 80 and splashTick < 180) then
		onlyLogo = false
	elseif (splashTick > 180 and splashTick < 185) then
		spacing.logoH = spacing.logoH + 4
		spacing.textH = spacing.textH + 6
	elseif (splashTick > 185 and splashTick < 210) then
		spacing.logoH = spacing.logoH - 35
		spacing.textH = spacing.textH - 25
	elseif (splashTick > 210 and splashTick < 230) then
		fadeBackground = true
		noLogo = true
		bgInt = bgInt - 10
	elseif (splashTick > 230) then
		state.set("menu")
	end
end

function gsNew.draw()
	if onlyLogo then
		love.graphics.setBackgroundColor(math.random(0,255), math.random(20,100), math.random(0,255))
		love.graphics.draw(splashArt[1], spacing.logoW, spacing.logoH)
	else
		if (noLogo == false) then
			love.graphics.setBackgroundColor(bgInt,bgInt,bgInt)
			love.graphics.draw(splashArt[1], spacing.logoW, spacing.logoH)
			love.graphics.draw(splashArt[2], spacing.textW, spacing.textH)
		else
			love.graphics.setBackgroundColor(bgInt, bgInt, bgInt)
		end
	end
	
end