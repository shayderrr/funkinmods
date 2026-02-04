function onCreate()




	
	makeLuaSprite('gravityfront', 'gravityfront', -2900, -1000 );

	scaleObject('gravityfront', 1, 1);

	addLuaSprite('gravityfront', false);

	makeLuaSprite('vignette2', 'vignette2', 0, 0,true);


	makeAnimatedLuaSprite('pibby','pibby',1100,490)
	makeAnimatedLuaSprite('pibby2','pibby2',1100,490)
    addAnimationByPrefix('pibby','pibby1','pibby1',20,true)
	addAnimationByPrefix('pibby','pibby2','pibby2',20,true)
    addLuaSprite('pibby',false)
	scaleObject('pibby', 0.8, 0.8);



	scaleObject('vignette2', 1, 1);
	setObjectCamera('vignette2', 'camhud',true)
	addLuaSprite('vignette2',true,true)
	setObjectCamera('vignette2', 'camother')
	doTweenAlpha('textAlpha', 'vignette2', 2, 3, 'linear');

	makeAnimatedLuaSprite('minibill','minibill',600,100,true)
    addAnimationByPrefix('minibill','billani','billani',20,false)
	setObjectCamera('minibill', 'camhud',true)
    addLuaSprite('minibill',true,true,true)
	setObjectCamera('minibill', 'camother',true)
	scaleObject('minibill', 0.8, 0.8);


end
