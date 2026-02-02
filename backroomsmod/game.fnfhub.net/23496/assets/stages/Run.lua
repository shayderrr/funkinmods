function onCreate()
    makeAnimatedLuaSprite('Run', 'Run', -900, -550)
    scaleObject('Run', 1.3, 1.3)
    addAnimationByPrefix('Run', 'Run', 'BG2', 12, true)
    objectPlayAnimation('Run', 'Background', BG2)
    addLuaSprite('Run', false)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, 0)
    scaleObject('Filter', 2, 2)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.5)
    addLuaSprite('Filter', true)
end

function onSongStart()
    noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end


function onStartCountdown()
    setProperty('dad.alpha', 0)
    return Function_Continue
end


function onCreatePost()
    makeLuaText('Energy', 'Energy: ' .. math.floor(getProperty("health") * 50), 190, screenWidth / 1 - 750, screenHeight / 1 - 100)
    addLuaText('Energy')
    setTextSize('Energy', 35);
end

function onUpdate(elapsed)
    setTextString('Energy', 'Energy: ' .. math.floor(getProperty("health") * 5))
    
    if curStep == 80 then
        doTweenAlpha('dad','dad', 1, 3,'linear')
    end
end
