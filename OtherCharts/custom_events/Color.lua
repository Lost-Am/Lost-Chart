-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Color' then
		duration = tonumber(value1);
		colour = tonumber(value2);
		if colour == 0 then
			doTweenColor('bfcolour', 'boyfriend', '000000', duration, 'linear');
			doTweenColor('gfcolour', 'gf', '000000', duration, 'linear');
			doTweenColor('dadcolour', 'dad', '000000', duration, 'linear');
			doTweenColor('skycolour', 'redsky', '000000', duration, 'linear');
		end
		if colour == 1 then
			doTweenColor('bfcolour', 'boyfriend', 'FFFFFF', duration, 'linear');
			doTweenColor('gfcolour', 'gf', 'FFFFFF', duration, 'linear');
			doTweenColor('dadcolour', 'dad', 'FFFFFF', duration, 'linear');
			doTweenColor('skycolour', 'redsky', '670101', duration, 'linear');
		end
		if colour == 2 then
			doTweenColor('bfcolour', 'boyfriend', 'FF0000', duration, 'linear');
			doTweenColor('gfcolour', 'gf', 'FF0000', duration, 'linear');
			doTweenColor('dadcolour', 'dad', 'FF0000', duration, 'linear');
			doTweenColor('skycolour', 'redsky', 'FF0000', duration, 'linear');
		end
		if colour == 3 then
			doTweenColor('bfcolour', 'boyfriend', '00FF00', duration, 'linear');
			doTweenColor('gfcolour', 'gf', '00FF00', duration, 'linear');
			doTweenColor('dadcolour', 'dad', '00FF00', duration, 'linear');
			doTweenColor('skycolour', 'redsky', '00FF00', duration, 'linear');
		end
		if colour == 4 then
			doTweenColor('bfcolour', 'boyfriend', '0000FF', duration, 'linear');
			doTweenColor('gfcolour', 'gf', '0000FF', duration, 'linear');
			doTweenColor('dadcolour', 'dad', '0000FF', duration, 'linear');
			doTweenColor('skycolour', 'redsky', '0000FF', duration, 'linear');
		end
		if colour == 5 then
			doTweenColor('bfcolour', 'boyfriend', 'ffff00', duration, 'linear');
			doTweenColor('gfcolour', 'gf', 'ffff00', duration, 'linear');
			doTweenColor('dadcolour', 'dad', 'ffff00', duration, 'linear');
			doTweenColor('skycolour', 'redsky', 'ffff00', duration, 'linear');
		end
		if colour == 6 then
			doTweenColor('bfcolour', 'boyfriend', '00FFFF', duration, 'linear');
			doTweenColor('gfcolour', 'gf', '00FFFF', duration, 'linear');
			doTweenColor('dadcolour', 'dad', '00FFFF', duration, 'linear');
			doTweenColor('skycolour', 'redsky', '00FFFF', duration, 'linear');
                end
		if colour == 7 then
			doTweenColor('bfcolour', 'boyfriend', 'ff00ff', duration, 'linear');
			doTweenColor('gfcolour', 'gf', 'ff00ff', duration, 'linear');
			doTweenColor('dadcolour', 'dad', 'ff00ff', duration, 'linear');
			doTweenColor('skycolour', 'redsky', 'ff00ff', duration, 'linear');
	    end
    end
end