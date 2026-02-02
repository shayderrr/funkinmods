function onCreate()
    makeLuaSprite('SanityDay', 'SanityDay', -1500, -600);
    addLuaSprite('SanityDay', false)
    scaleObject('SanityDay', 1.7, 1.7)

    makeAnimatedLuaSprite('Irisseptored', 'Irisseptored', 1000, 300)
    scaleObject('Irisseptored', 0.9, 0.9)
    addAnimationByPrefix('Irisseptored', 'Irisseptored', 'BG', 20, true)
    objectPlayAnimation('Irisseptored', 'BG', false)
    setProperty('Irisseptored.alpha', 0.5)
    addLuaSprite('Irisseptored', true)
    
    makeAnimatedLuaSprite('Noise', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', false)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Filter', true)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', false)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Filter', true)
end

function onUpdate(elapsed)
     if curStep == 100 then
        
        makeLuaSprite('Sanity', 'Sanity', -1500, -600);
        addLuaSprite('Sanity', false)
        scaleObject('Sanity', 1.7, 1.7)
        setProperty('Sanity.alpha', 0)
        
        doTweenAlpha('SanityDay','SanityDay', 0, 10,'linear')
        doTweenAlpha('Sanity','Sanity', 1, 10,'linear')
        doTweenAlpha('dad','dad', 1, 3,'linear')
    end
end
