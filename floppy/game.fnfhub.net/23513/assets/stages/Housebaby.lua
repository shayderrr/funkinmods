function onCreate()
	-- background shit
	makeLuaSprite('HousenightBack', 'HousenightBack', -600, -300);
	setScrollFactor('HousenightBack', 0.9, 0.9);
	
	makeLuaSprite('Housefront', 'Housefront', -650, 600);
	setScrollFactor('Housefront', 0.9, 0.9);
	scaleObject('Housefront', 1.1, 1.1);

	makeAnimatedLuaSprite('bgbaby','bgbaby',-650,-600)addAnimationByPrefix('bgbaby','dance','yas',24,true)
	objectPlayAnimation('bgbaby','dance',false)
	setScrollFactor('bgbaby', 0.9, 0.9);

	addLuaSprite('HousenightBack', false);
	addLuaSprite('Housefront', false);
	addLuaSprite('bgbaby', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end