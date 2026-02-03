function onCreate()
	makeLuaSprite('wall', 'bars/1', -758, -400);
	setScrollFactor('wall', 0.7,0.7);
	scaleObject('wall',1.5,1.5);

	makeLuaSprite('floor', 'bars/2', -900, -500);
	--setScrollFactor('floor',0.8, 0.8);
	scaleObject('floor',1.5,1.5);
	
	makeLuaSprite('sit', 'bars/3', -920, -500);
	--setScrollFactor('sit', 0.8, 0.8);
	scaleObject('sit',1.5,1.5);

	makeLuaSprite('light', 'bars/4', -900, -600);
	scaleObject('light',1.5,1.5);
	setProperty('light.alpha',0.9)
	makeLuaSprite('front', 'bars/5', -830, -500);
	scaleObject('front',1.5,1.5);


	makeAnimatedLuaSprite('marvin', 'bars/Jolastor_and_Marvin', 120, -100);
	addAnimationByPrefix('marvin','dance','Jolastor and Marvin0',24,true);
	scaleObject('marvin',0.7,0.7);

    makeAnimatedLuaSprite('bitch', 'bars/Criminal_Bitch', 2100, 140);
	addAnimationByPrefix('bitch','dance','criminal jumpscare0',24,true);
    addAnimationByPrefix('bitch','bozo','criminal get big shot0',24,false);
	scaleObject('bitch',0.9,0.9);
--1100

	

	addLuaSprite('wall', false);
	addLuaSprite('floor', false);
    addLuaSprite('marvin', false);
	addLuaSprite('sit', false);
    addLuaSprite('bitch', false);
	addLuaSprite('light', true);
    addLuaSprite('front', true);

   

	--objectPlayAnimation('marvin','dance')
	objectPlayAnimation('bitch','dance')

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-conan-dead');
end

function onBeatHit()
    if curBeat % 1 == 0 then
        if getProperty('marvin.animation.curAnim.name') == 'dance' then
            objectPlayAnimation('marvin','dance',true)
		end

        if getProperty('bitch.animation.curAnim.name') == 'dance' then
            objectPlayAnimation('bitch','dance',true)
		end
    end
	
end

function onCountdownTick(counter)
	if curBeat % 1 == 0 then
        if getProperty('marvin.animation.curAnim.name') == 'dance' then
            objectPlayAnimation('marvin','dance',true)
		end

        if getProperty('bitch.animation.curAnim.name') == 'dance' then
            objectPlayAnimation('bitch','dance',true)
		end
    end
end


function onStepHit()
	if curStep == 1290 then
        setProperty('defaultCamZoom',0.7);
	end

    if curStep == 1290 then
        setProperty('defaultCamZoom',0.5);
	end

	
end