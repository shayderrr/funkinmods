function onCreate()
    makeLuaSprite('Backrooms', 'Backrooms', -650, -250);
    scaleObject('Backrooms', 0.9, 0.9)
    addLuaSprite('Backrooms', false)
    
    makeLuaSprite('Vingette', 'Vingette', 0, 0);
    scaleObject('Vingette', 2, 2)
    setObjectCamera('Vingette', 'camHud')
    addLuaSprite('Vingette', true)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.25)
    addLuaSprite('Filter', true)
end

