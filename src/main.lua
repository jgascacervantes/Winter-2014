function love.load()
    love.window.setMode(1280, 720, {resizable=false, vsync=false})
    bg = love.graphics.newImage("resources/kitchen 1280x720.png")
    mc = love.graphics.newImage("resources/x4.png")
    memes = love.graphics.newParticleSystem( mc, 10)
    memes:setParticleLifetime( 2, 5)
    memes:setSizeVariation(1)
    memes:setLinearAcceleration(-30, -30, 30, 30)
    memes:setColors(255, 255, 255, 255, 255, 255, 255, 0)
    memes:setEmissionRate(10)
end

function love.draw()
    love.graphics.draw( bg, 0, 0)
    love.graphics.draw( memes, 700, 300)
    love.graphics.draw( mc, 500, love.graphics.getHeight()/2 + 20)
    love.graphics.draw( memes, 200, 150)
end

function love.update( dt )
    memes:update(dt)
end 
