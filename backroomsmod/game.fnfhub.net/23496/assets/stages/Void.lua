function onCreate()
    makeLuaSprite('Pipes', 'Pipes', -300, -200);
    scaleObject('Pipes', 3, 2.3)
    setObjectCamera('Pipes', 'camHud')
    addLuaSprite('Pipes', false)
    
    
    makeAnimatedLuaSprite('Grain', 'Grain', 0, 0)
    makeAnimatedLuaSprite('Filter', 'Filter', 0, -200)
    scaleObject('Filter', 2.5, 2.5)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.3)
    addLuaSprite('Filter', true)
end

