function onCreate()
    makeLuaText('now playing song name', 'Now playing :: Raising! by -- KaiEmamaTouch!', 400, 500, 30)
    setTextSize('now playing song name', 42)
end

function onUpdate()

end

function onStepHit()
    if curStep == 1 then
        addLuaText('now playing song name')
    end
    if curStep == 32 then
        setTextSize('now playing song name', 0)
    end
end