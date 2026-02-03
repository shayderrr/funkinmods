function onCreate()
	makeLuaSprite('bg', 'duet_stage', 0, 0);
	setScrollFactor('bg', 0.9, 0.9);
	addLuaSprite('bg', false);
	setProperty('bg.scale.x', 1.5, 1.5)
	setProperty('bg.scale.y', 1.5, 1.5)
	
	makeLuaSprite('light', 'light', 0, 0);
	setScrollFactor('light', 0.2, 0.2);
	addLuaSprite('light', true);
	setProperty('light.scale.x', 1.35, 1.35)
	setProperty('light.scale.y', 1.35, 1.35)
end