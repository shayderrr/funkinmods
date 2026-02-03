function onCreate()
	-- background shit
	makeLuaSprite('notebook', 'notebook', -500, -300);
	setLuaSpriteScrollFactor('notebook', 0.9, 0.9);
	
	makeLuaSprite('dokidoki', 'dokidoki', -650, 600);
	setLuaSpriteScrollFactor('dokidoki', 0.9, 0.9);
	scaleObject('dokidoki', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'blank 2 electric boogaloo', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'blank 2 electric boogaloo', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('dokidoki', 'dokidoki', -500, -300);
		setLuaSpriteScrollFactor('dokidoki', 1.3, 1.3);
		scaleObject('dokidoki', 0.9, 0.9);
	end

	addLuaSprite('notebook', false);
	addLuaSprite('dokidoki', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('dokidoki', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end