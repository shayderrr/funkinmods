function onCreate()
	-- background shit
	makeLuaSprite('shoppingList', 'shoppingList', -500, -300);
	setLuaSpriteScrollFactor('shoppingList', 0.9, 0.9);
	
	makeLuaSprite('blank', 'blank', -650, 600);
	setLuaSpriteScrollFactor('blank', 0.9, 0.9);
	scaleObject('blank', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'blank 2 electric boogaloo', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'blank 2 electric boogaloo', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('blank', 'blank', -500, -300);
		setLuaSpriteScrollFactor('blank', 1.3, 1.3);
		scaleObject('blank', 0.9, 0.9);
	end

	addLuaSprite('shoppingList', false);
	addLuaSprite('blank', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('blank', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end