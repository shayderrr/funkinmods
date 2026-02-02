local allowCountdown = false
function onStartCountdown()
    -- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
    if not allowCountdown and isStoryMode and not seenCutscene then
        setProperty('inCutscene', true);
        runTimer('startDialogue', 0.8);
        allowCountdown = true;
        makeLuaSprite('BlackBox', 'BlackBox', -1200, -500);
        scaleObject('BlackBox', 5.5, 5.5)
        addLuaSprite('BlackBox', true);
        return Function_Stop;
    end
    doTweenAlpha('BlackBox','BlackBox', 0, 2,'linear')
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'startDialogue' then -- Timer completed, play dialogue
        startDialogue('dialogue', 'gameOver');
    end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
    -- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
    -- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end
