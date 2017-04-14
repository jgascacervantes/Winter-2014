function love.load()
    memes = love.graphics.newParticleSystem( love.graphics.newImage("Cory.png"), 10)
    memes:setParticleLifetime( 2, 5)
    memes:setSizeVariation(1)
    memes:setLinearAcceleration(-30, -30, 30, 30)
    memes:setColors(255, 255, 255, 255, 255, 255, 255, 0)
    memes:setEmissionRate(10)
end

function love.draw()
    love.graphics.draw( memes, 300, 300)
    love.graphics.draw( memes, 500, 250)
    love.graphics.draw( memes, 200, 150)
end

function love.update( dt )
    memes:update(dt)
end 
