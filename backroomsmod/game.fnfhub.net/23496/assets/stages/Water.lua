function onCreate()
    makeLuaSprite('Water', 'Water', -1275, -600);
    addLuaSprite('Water', false)
    scaleObject('Water', 1, 1)
    
    makeLuaSprite('Vingette', 'Vingette', -1250, -600);
    scaleObject('Vingette', 7, 7)
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Vingette', true)
    
    makeAnimatedLuaSprite('Bf_behind', 'Bf_behind', -600, -550)
    scaleObject('Bf_behind', 2, 2)
    addAnimationByPrefix('Bf_behind', 'Bf_behind', 'Bf_behind', 24, true)
    objectPlayAnimation('Bf_behind', 'Bf_behind', true)
    
    addLuaSprite('Bf_behind', true)
    
    makeAnimatedLuaSprite('Grain', 'Grain', 0, 0)

    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.3)
    addLuaSprite('Filter', true)
end

