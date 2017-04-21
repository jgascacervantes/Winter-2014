function love.load()
    love.window.setMode(1280, 720, {resizable=true, vsync=false, minwidth=320, minheight=180})
    bg = love.graphics.newImage("resources/kitchen 1280x720.png")
    im = love.graphics.newImage("resources/x2.png")
    memes = love.graphics.newParticleSystem( im, 10)
    memes:setParticleLifetime( 2, 5)
    memes:setSizeVariation(1)
    memes:setLinearAcceleration(-30, -30, 30, 30)
    memes:setColors(255, 255, 255, 255, 255, 255, 255, 0)
    memes:setEmissionRate(10)
end

function love.draw()
    love.graphics.draw( bg, 0, 0)
    love.graphics.draw( memes, 300, 300)
    love.graphics.draw( memes, 500, 250)
    love.graphics.draw( memes, 200, 150)
end

function love.update( dt )
    memes:update(dt)
end 
