function onCreate()
    makeAnimatedLuaSprite('PartyPooperBase', 'PartyPooperBase', -500, -550)
    scaleObject('PartyPooperBase', 3.5, 3)
    addAnimationByPrefix('PartyPooperBase', 'PartyPooperBase', 'Background', 24, true)
    objectPlayAnimation('PartyPooperBase', 'Background', true)
    addLuaSprite('PartyPooperBase', false)
    
    makeLuaSprite('Vingette', 'Vingette', 0, 0);
    scaleObject('Vingette', 2, 2)
    setObjectCamera('Vingette', 'camHud')
    setProperty('Vingette.alpha', 0.5)
    addLuaSprite('Vingette', true)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.1)
    addLuaSprite('Filter', true)
end

