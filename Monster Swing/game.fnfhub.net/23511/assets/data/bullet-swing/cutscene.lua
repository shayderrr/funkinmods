function onCreate()
    makeLuaSprite('UpperBar', 'empty', 0, -120)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', false)
end

function onStepHit()


	

	if curStep == 1279 then
		doTweenY('Cinematics1', 'UpperBar', 0, 1, 'Linear')
	    doTweenY('Cinematics2', 'LowerBar', 600, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE1', 0, 0, 1, 'Linear')	
        noteTweenAlpha('NOTEMOVE2', 1, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE3', 2, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE4', 3, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE5', 4, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE6', 5, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE7', 6, 0, 1, 'Linear')
        noteTweenAlpha('NOTEMOVE8', 7, 0, 1, 'Linear')
	end

    if curStep == 1302 then
		doTweenX('bitchX', 'bitch',1100,0.1,'liner')
        
	end

    if curStep == 1305 then
		objectPlayAnimation('bitch','bozo')
        doTweenX('bitchX', 'bitch',2100,0.5,'liner')
		doTweenAngle('bitchX2', 'bitch',60,0.5,'liner')
	end
end