function onCreate()
    makeLuaSprite('RonBG', 'RonBG', -1000, -700);
    addLuaSprite('RonBG', false)
    scaleObject('RonBG', 2.5, 2.5)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Filter', true)
end

