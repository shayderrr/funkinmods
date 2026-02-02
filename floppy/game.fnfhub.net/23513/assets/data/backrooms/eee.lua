--MSG ME ON DISCORD OR @ ME IN MODDING COMMUNITY SERVER FOR HELP: @lunarcleint#8859 will code for your fnf mod if its cool:) 

--SCRIPT FUNCTIONS(+ SPIN SHIT) [FUNCTIONS BY LUNARCLEINT(credit would be nice :)]: https://drive.google.com/file/d/1yKXShM214oCe2Dkg1JNvFsfh5eK0CJeG/view?usp=sharing
--MADNESS VANDALIZTION MODCHART: https://www.youtube.com/watch?v=_vU9ygQ4kUo
--TUTORIAL VIDEO: https://youtu.be/cE3RiizvGsg
--LUA API WIKI: https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API

local defaultNotePos = {};
local spin = false;
local arrowMoveX = 0;
local arrowMoveY = 0;

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
    end
end

function onUpdate(elapsed)

    songPos = getPropertyFromClass('Conductor', 'songPosition');

    currentBeat = (songPos / 1000) * (bpm / 60)

    if spin == true then 
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + arrowMoveX * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + arrowMoveY * math.cos((currentBeat + i*0.25) * math.pi))
        end
    end
end

function onStepHit()
    stepdev = curStep % 16;
    if stepdev == 0 then 
        section = curStep / 16;
    end
end

function coolresetStrums(time)
    for i = 4,7 do
        noteTweenX("movementX " .. i, i, defaultNotePos[i + 1][1], time, "linear")
        noteTweenY("movementY " .. i, i, defaultNotePos[i + 1][2], time, "linear")
        noteTweenAngle("movementAngle " .. i, i, 360, time, "linear")
    end
end

function randomNote()
    for i = 4,7 do 
        setPropertyFromGroup('strumLineNotes', i, 'x', 
        defaultNotePos[i + 1][1] + math.floor(math.random(-150,150)))

        if downscroll == true then 
            ylowest = 50;
            yhighest = -150;
        else 
            ylowest = -150
            yhighest = 150;
        end

        setPropertyFromGroup('strumLineNotes', i, 'y', 
        defaultNotePos[i + 1][2] + math.floor(math.random(ylowest,yhighest)))
    end
end

function bumpArrows(time, amount, smallamount)
    for i = 0,7 do
        shit = 0;
        if i % 4 == 0 then
            shit = -amount
        end
        if i % 4 == 1 then
            shit = -smallamount
        end
        if i % 4 == 2 then
            shit = smallamount
        end
        if i % 4 == 3 then
            shit = amount
        end
        setPropertyFromGroup('strumLineNotes', i, 'x', getPropertyFromGroup('strumLineNotes', i, 'x') + shit)
        noteTweenX("movementXbump " .. i, i, getPropertyFromGroup('strumLineNotes', i, 'x') - shit, time, "linear")
    end
end

function fadeStrums(alpha,time,movebf,movedad)
    if time <= 0 then
        if movebf == true then
            for i = 4,7 do 
                setPropertyFromGroup('strumLineNotes', i, 'alpha', alpha)
            end
        end
        if movedad == true then
            for i = 0,3 do 
                setPropertyFromGroup('strumLineNotes', i, 'alpha', alpha)
            end
        end
    else
        if movebf == true then
            for i = 4,7 do 
                noteTweenAlpha("movementAlpha " .. i, i, alpha, time, "linear")
            end
        end
        if movedad == true then
            for i = 0,3 do 
                noteTweenAlpha("movementAlpha " .. i, i, alpha, time, "linear")
            end
        end
    end
end

function movebyStrumLine(x,y,time,movebf,movedad) --based on left arrow postion -lunar
    if y == nil then 
        if downscroll == true then -- acounts for scrolling - lunar
            y = 570
        else
            y = 50
        end
    end

    if time <= 0 then
        if movebf == true then
            for i = 4,7 do 
                setPropertyFromGroup('strumLineNotes', i, 'x', x + ((i - 4) * 112))
                setPropertyFromGroup('strumLineNotes', i, 'y', y)
            end
        end
        if movedad == true then
            for i = 0,3 do 
                setPropertyFromGroup('strumLineNotes', i, 'x', x + (i * 112))
                setPropertyFromGroup('strumLineNotes', i, 'y', y)
            end
        end
    else
        if movebf == true then
            for i = 4,7 do 
                noteTweenX("movementX " .. i, i, x + ((i - 4) * 112), time, "linear")
                noteTweenY("movementY " .. i, i, y, time, "linear")
            end
        end
        if movedad == true then
            for i = 0,3 do 
                noteTweenX("movementX " .. i, i, x + (i * 112), time, "linear")
                noteTweenY("movementY " .. i, i, y, time, "linear")
            end
        end
    end
end

function resetStrums()
    for i = 0,7 do
        setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
        setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 1)
        setPropertyFromGroup('strumLineNotes', i, 'angle', 0)
    end
end 

function moveAllStrums(x,y,time,movebf,movedad)
    if time <= 0 then
        if movebf == true then
            for i = 4,7 do 
                setPropertyFromGroup('strumLineNotes', i, 'x', x)
                setPropertyFromGroup('strumLineNotes', i, 'y', y)
            end
        end
        if movedad == true then
            for i = 0,3 do 
                setPropertyFromGroup('strumLineNotes', i, 'x', x)
                setPropertyFromGroup('strumLineNotes', i, 'y', y)
            end
        end
    else
        if movebf == true then
            for i = 4,7 do 
                noteTweenX("movementX " .. i, i, x, time, "linear")
                noteTweenY("movementY " .. i, i, y, time, "linear")
            end
        end
        if movedad == true then
            for i = 0,3 do 
                noteTweenX("movementX " .. i, i, x, time, "linear")
                noteTweenY("movementY " .. i, i, y, time, "linear")
            end
        end
    end
end

