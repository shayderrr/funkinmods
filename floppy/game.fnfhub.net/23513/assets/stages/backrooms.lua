function onCreate()
	-- background shit
	makeLuaSprite('backroomsfreebackroundback', 'backroomsfreebackroundbgback', -600, -300);
	setScrollFactor('backroomsfreebackroundback', 0.9, 0.9);
	
	makeLuaSprite('backroomsfreebackroundfront', 'backroomsfreebackroundbgfront', -600, -300);
	setScrollFactor('backroomsfreebackroundfront', 0.9, 0.9);
	
	addLuaSprite('backroomsfreebackroundback', false);
	addLuaSprite('backroomsfreebackroundfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end