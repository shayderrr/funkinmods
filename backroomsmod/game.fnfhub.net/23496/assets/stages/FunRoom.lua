function onCreate()
    makeLuaSprite('FunRoom', 'FunRoom', -600, -250);
    addLuaSprite('FunRoom', false)
    scaleObject('FunRoom', 2, 2)
    
    
    makeLuaSprite('Vingette', 'Vingette', 0, 0);
    scaleObject('Vingette', 3, 3)
    setProperty('Vingette.alpha', 0.4)
    setObjectCamera('Vingette', 'camHud')
    addLuaSprite('Vingette', false)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Filter', true)
end

