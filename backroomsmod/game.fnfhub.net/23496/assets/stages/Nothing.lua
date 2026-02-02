function onCreate()
    makeAnimatedLuaSprite('Bf_behind', 'Bf_behind', -600, -550)
    scaleObject('Bf_behind', 2, 2)
    addAnimationByPrefix('Bf_behind', 'Bf_behind', 'Bf_behind', 24, true)
    objectPlayAnimation('Bf_behind', 'Bf_behind', true)
    
    addLuaSprite('Bf_behind', true)
    
    makeLuaSprite('CameraFootage', 'CameraFootage', -600, -500);
    addLuaSprite('CameraFootage', false)
    setProperty('CameraFootage.alpha', 0)
    scaleObject('CameraFootage', 2.5, 2)
    
    makeAnimatedLuaSprite('Noise', 'Noise', -800, -500)
    scaleObject('Noise', 4, 4)
    addAnimationByPrefix('Noise', 'Noise', 'Gif', 24, true)
    objectPlayAnimation('Noise', 'Gif', false)
    setProperty('Noise.alpha', 0.5)
    addLuaSprite('Noise', false)
    
    makeLuaSprite('LightsOn', 'LightsOn', -800, -500);
    addLuaSprite('LightsOn', false)
    scaleObject('LightsOn', 2.5, 2)
    
    makeLuaSprite('Control', 'Control', -800, -500);
    addLuaSprite('Control', false)
    scaleObject('Control', 2.5, 2)
    
    makeAnimatedLuaSprite('PartygoerMove', 'PartygoerMove', -1500, -400)
    scaleObject('PartygoerMove', 1.5, 1.5)
    addAnimationByPrefix('PartygoerMove', 'PartygoerMove', 'Idle', 17, true)
    objectPlayAnimation('PartygoerMove', 'Idle', true)
    
    addLuaSprite('PartygoerMove', false)
    
    makeAnimatedLuaSprite('Grain', 'Grain', 0, 0)
    makeAnimatedLuaSprite('Filter', 'Filter', 0, -200)
    scaleObject('Filter', 2.5, 2.5)
    
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 0.3)
    setProperty('dad.alpha', 0)
    addLuaSprite('Filter', true)
end

function onStartCountdown()
    setProperty('dad.alpha', 0)
    setProperty('Noise.alpha', 0)
    setProperty('PartygoerMove.alpha', 0)
      
    setProperty('LightsOn.alpha', 0)
    setProperty('Control.alpha', 1)
    
    return Function_Continue
end

function onSongStart()
    noteTweenX("NoteMove1", 0, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove2", 1, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove3", 2, -1000, 0.5, cubeInOut)
    noteTweenX("NoteMove4", 3, -1000, 0.5, cubeInOut)
end

function onUpdate(elapsed)
    if curStep == 64 then
        
        playSound('Partypoopervoice', 1)
        doTweenAlpha('dad','dad', 1, 3,'linear')
    end
    
    if curStep == 127 then
        setProperty('Noise.alpha', 1)
        
        setProperty('LightsOn.alpha', 1)
        playSound('Screen', 1)
        setProperty('Control.alpha', 0)
    end
    
    if curStep == 384 then
        setProperty('Noise.alpha', 0)
        
        setProperty('LightsOn.alpha', 0)
        playSound('Screen', 1)
        setProperty('Control.alpha', 1)
    end
    
    if curStep == 512 then
        setProperty('Noise.alpha', 1)
        
        setProperty('PartygoerMove.alpha', 1)
        doTweenX('PartygoerMove', 'PartygoerMove', 3000, 1, linear)
        
        setProperty('LightsOn.alpha', 1)
        playSound('Screen', 1)
        setProperty('Control.alpha', 0)
    end
    
    if curStep == 895 then
        setProperty('Noise.alpha', 0.2)
        
        setProperty('LightsOn.alpha', 1)
        playSound('Screen', 1)
        
        setProperty('CameraFootage.alpha', 0.5)
        
        setProperty('Control.alpha', 0)
        
        doTweenAlpha('dad','dad', 0, 10,'linear')
        doTweenY('PartyPooperDeath', 'dad', 2000, 1, linear)
        playSound('ScareSound', 1.5)
    end
end

