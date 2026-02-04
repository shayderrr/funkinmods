function goodNoteHit(id, direction, noteType, isSustainNote)
    objectPlayAnimation('gf', 'bop');
end

function onCreate()
    makeLuaText('textlol', 'made by MarioSkoczek', 0, 9, 675)
    setTextSize('textlol', 40)
    setTextBorder('textlol', 2, '000000')
    setTextColor('textlol', 'ff0080')
    setTextAlignment('textlol', 'center')
    addLuaText('textlol')
    setObjectCamera('textlol', 'camHUD')
	setProperty('textlol.antialiasing',true)
	setProperty('vcr.antialiasing',true)
end

function onStartCountdown()
	doTweenY('da22dad', 'dad', 1230, 0.0001, 'linear');
end

function onStepHit()

    if curStep == 2099 then
        cameraFade('game', '000000', 0.1, true);
		cameraShake('camGame', 0.1, 2)

    end

    if curStep == 979  then
        objectPlayAnimation('minibill','billani',true)
      

    end

    if curStep == 724  then
        objectPlayAnimation('minibill','billani',true)
      

    end

    if curStep == 883  then
        objectPlayAnimation('minibill','billani',true)
      

    end

    if curStep == 1420  then
        objectPlayAnimation('minibill','billani',true)
      

    end


    if curStep == 1103 then
        objectPlayAnimation('minibill','billani',true)
      
   
    end
    if curStep == 1546 then
        objectPlayAnimation('minibill','billani',true)
      
   
    end

    if curStep == 1837 then
        objectPlayAnimation('minibill','billani',true)
      
   
    end


    if curStep == 138 then

        doTweenY('da22dad', 'dad', -1030, 1, 'sineIn');

    end

    if curStep == 176 then

        doTweenY('da22dad', 'dad', 1230, 1, 'sineIn');

    end

    if curStep == 246 then

        doTweenY('da22dad', 'dad', 150, 1, 'sineOut');

    end

    if curStep == 262 then

        makeLuaText('textb', 'oh oh oh  oh Gravity falls is good to be back', 0, 200, 300)
        setTextSize('textb', 30)
        setTextBorder('textb', 2, '000000')
        setTextColor('textb', '998925')
        setTextAlignment('textb', 'center')
        addLuaText('textb')
        setObjectCamera('textb', 'game')
        setProperty('textb.antialiasing',true)
        doTweenAlpha('hu222dAlpha', 'camHUD', 0.3, 1, 'linear');
    end



    if curStep == 328 then
        removeLuaText('textb')
        doTweenAlpha('hu222dAlpha', 'camHUD', 10, 0.7, 'linear');

    end
  
	if curStep == 1288 then
        doTweenY('hu222dAlp2ha', 'minibill', 60, 0.0001, 'linear');
        objectPlayAnimation('pibby','pibby2',true)
        cameraShake('camGame', 0.05, 2)
        addChromaticAbberationEffect('camGame',0.001)
		doTweenColor('timegored', 'timeBar', 'c23c3c', 0.00001, 'linear')
	    doTweenColor('timeg1ored', 'timeTxt', 'ff0000', 0.01, 'linear')
	    doTweenColor('thealfgored', 'healthBar', 'ff0000', 0.00001, 'linear')
        doTweenColor('time222222gored', 'glich', 'ed3e3e', 0.00001, 'linear')
	end
end


function onSongStart()

    objectPlayAnimation('pibby','pibby1',true)
	doTweenColor('timegored', 'timeBar', '827734', 0.00001, 'linear')
	doTweenColor('timeg1ored', 'timeTxt', '998925', 0.01, 'linear')


end


function onUpdate(elapsed)
    if curBeat >= 322 and curBeat < 111111 then
	
	    if mustHitSection == false then
		
			setProperty('defaultCamZoom',0.5)

	    else
			setProperty('defaultCamZoom',0.9)
	    end
    end
 


end

function opponentNoteHit()
    if curBeat >= 322 and curBeat < 111111 then
        health = getProperty('health')
     if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
     end
    end
end

