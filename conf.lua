function love.conf(t)
    t.version = "0.9.1"                -- The LÖVE version this game was made for (string)
    t.console = true                  -- Attach a console (boolean, Windows only)

    t.window.title = "Airplane"        -- The window title (string)
    t.window.icon = nil                -- Filepath to an image to use as the window's icon (string)
    t.window.width = 800               -- The window width (number)
    t.window.height = 600              -- The window height (number)
    t.window.borderless = false        -- Remove all border visuals from the window (boolean)
    t.window.resizable = false         -- Let the window be user-resizable (boolean)
    t.window.fullscreen = false        -- Enable fullscreen (boolean)
    t.window.vsync = true              -- Enable vertical sync (boolean)

end