local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('Cutscene5');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
