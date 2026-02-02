function onCreate()
    makeLuaSprite('HQFloor', 'HQFloor', -450, 350);
    scaleObject('HQFloor', 0.4, 0.4)
    addLuaSprite('HQFloor', false)
    
    makeLuaSprite('Partyyay', 'Partyyay', -500, -100);
    addLuaSprite('Partyyay', true)
    scaleObject('Partyyay', 1.7, 1.7)
    
    makeAnimatedLuaSprite('PartygoerWithPartyHead', 'PartygoerWithPartyHead', 350, 100)
    scaleObject('PartygoerWithPartyHead', 0.8, 0.8)
    addAnimationByPrefix('PartygoerWithPartyHead', 'PartygoerWithPartyHead', 'DeadPartyPooper', 15, true)
    objectPlayAnimation('PartygoerWithPartyHead', 'DeadPartyPooper', true)
    setProperty('PartygoerWithPartyHead.alpha', 0.35)
    addLuaSprite('PartygoerWithPartyHead', false)
    
    makeAnimatedLuaSprite('PartyPooper', 'PartyPooper', 1000, 500)
    scaleObject('PartyPooper', 1.5, 1.5)
    addAnimationByPrefix('PartyPooper', 'PartyPooper', 'PartyPooper', 15, true)
    objectPlayAnimation('PartyPooper', 'PartyPooper', true)
    setProperty('PartyPooper.alpha', 0.35)
    addLuaSprite('PartyPooper', true)
    
    makeAnimatedLuaSprite('CreepyEye', 'CreepyEye', 0, -200)
    scaleObject('CreepyEye', 2, 2)
    addAnimationByPrefix('CreepyEye', 'CreepyEye', 'Eye', 24, true)
    objectPlayAnimation('CreepyEye', 'Eye', true)
    setProperty('CreepyEye.alpha', 0)
    addLuaSprite('CreepyEye', false)
    
    makeLuaSprite('FunWarHallway', 'FunWarHallway', -800, -500);
    addLuaSprite('FunWarHallway', false)
    scaleObject('FunWarHallway', 2, 2)
    setProperty('FunWarHallway.alpha', 0)
    
    makeAnimatedLuaSprite('Filter', 'Filter', 0, -200)
    scaleObject('Filter', 2.5, 2.5)
    addAnimationByPrefix('Filter', 'Filter', 'Filter', 24, true)
    objectPlayAnimation('Filter', 'Filter', true)
    setObjectCamera('Filter', 'camHud')
    setProperty('Filter.alpha', 1)
    addLuaSprite('Filter', true)
end

function onUpdate(elapsed)
     if curStep == 384 then
        doTweenAlpha('CreepyEye','CreepyEye', 0.5, 3,'linear')
        doTweenAlpha('FunWarHallway','FunWarHallway', 1, 0.75,'linear')
        
        doTweenAlpha('gf', 'gf', 0, 0.75,'linear')
        doTweenAlpha('HQFloor','HQFloor', 0, 0.75,'linear')
        doTweenAlpha('PartyPooper','PartyPooper', 0, 0.75,'linear')
        doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0, 0.75,'linear')
        
        elseif curStep == 639 then
            doTweenAlpha('CreepyEye','CreepyEye', 0, 0.75,'linear')
            doTweenAlpha('FunWarHallway','FunWarHallway', 0, 0.75,'linear')
            doTweenAlpha('HQFloor','HQFloor', 1, 0.75,'linear')
            doTweenAlpha('gf', 'gf', 1, 0.75,'linear')
            doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0.35, 0.75,'linear')
    
    
            elseif curStep == 895 then
                doTweenAlpha('CreepyEye','CreepyEye', 0.5, 3,'linear')
                doTweenAlpha('FunWarHallway','FunWarHallway', 1, 0.75,'linear')
                
                doTweenAlpha('gf', 'gf', 0, 0.75,'linear')
                doTweenAlpha('HQFloor','HQFloor', 0, 0.75,'linear')
                doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0, 0.75,'linear')
        
                elseif curStep == 1151 then
                    doTweenAlpha('CreepyEye','CreepyEye', 0, 0.75,'linear')
                    doTweenAlpha('FunWarHallway','FunWarHallway', 0, 0.75,'linear')
                    
                    doTweenAlpha('HQFloor','HQFloor', 1, 0.75,'linear')
                    doTweenAlpha('gf', 'gf', 1, 0.75,'linear')
                    doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0.35, 0.75,'linear')
                    
                    
                    elseif curStep == 1663 then
                        doTweenAlpha('CreepyEye','CreepyEye', 0.5, 3,'linear')
                        doTweenAlpha('FunWarHallway','FunWarHallway', 1, 0.75,'linear')
                                
                        doTweenAlpha('gf', 'gf', 0, 0.75,'linear')
                        doTweenAlpha('HQFloor','HQFloor', 0, 0.75,'linear')
                        doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0, 0.75,'linear')
        
                        elseif curStep == 1919 then
                            doTweenAlpha('CreepyEye','CreepyEye', 0, 0.75,'linear')
                            doTweenAlpha('FunWarHallway','FunWarHallway', 0, 0.75,'linear')
                            
                            doTweenAlpha('HQFloor','HQFloor', 1, 0.75,'linear')
                            doTweenAlpha('gf', 'gf', 1, 0.75,'linear')
                            doTweenAlpha('PartygoerWithPartyHead','PartygoerWithPartyHead', 0.35, 0.75,'linear')

    end
end
