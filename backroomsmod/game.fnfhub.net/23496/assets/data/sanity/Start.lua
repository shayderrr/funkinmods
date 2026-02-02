function onCreate()
    makeLuaSprite('Lesson2', 'Lesson2', -1000, -550);
    addLuaSprite('Lesson2', true);
    scaleLuaSprite('Lesson2', 1.3, 1.3);
    setLuaSpriteScrollFactor('Lesson2',0,0)
    setProperty('Lesson2.alpha',0)
    setProperty('Lesson2.alpha',1)
end

function onUpdate(elapsed)
    
     if curStep == 25 then
        doTweenAlpha('Lesson2','Lesson2', 0, 3,'linear')
    end
end
