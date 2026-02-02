function onCreate()
    makeAnimatedLuaSprite('Chase', 'Chase', -800, -250)
    scaleObject('Chase', 1.3, 0.87)
    addAnimationByPrefix('Chase', 'Chase', 'Chase', 35, true)
    objectPlayAnimation('Chase', 'Chase', true)
    addLuaSprite('Chase', false)
    
    makeLuaSprite('Vingette', 'Vingette', 0, 0);
    scaleObject('Vingette', 2, 2)
    setObjectCamera('Vingette', 'camHud')
    addLuaSprite('Vingette', true)
    
    scaleObject('bf', 2, 2)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.25)
    addLuaSprite('Filter', true)
end

