gsNew = {}
splash1 = { "This is wonderful" }
splash2 = { "THIS IS WONDERFUL" }



function gsNew.load()

end

function gsNew.update()

end

function gsNew.draw()
	love.graphics.setBackgroundColor(50,50,100)
	love.graphics.print("New gamestate ! press 2 for more", 20, 20)
	love.timer.sleep( 2 )
	state.set("menu")
end