function onCreatePost()
    makeLuaText('Energy', 'Energy: ' .. math.floor(getProperty("health") * 50), 190, screenWidth / 1 - 750, screenHeight / 1 - 100)
    addLuaText('Energy')
    setTextSize('Energy', 35);
end

function onUpdate()
    setTextString('Energy', 'Energy: ' .. math.floor(getProperty("health") * 5))
    
    local hp = getProperty('health')
    
    if hp <= 0.5 then
        triggerEvent('Scroll Speed','20, 5')
    end
end
