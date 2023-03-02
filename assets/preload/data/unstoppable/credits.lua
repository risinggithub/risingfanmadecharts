
function onCreatePost()
	makeLuaText('Text', 'chart by me', 1000, 1500, 800)
		setTextSize('Text', 35)
		setObjectCamera('Text', 'game')
		setTextAlignment('Text', 'left')
		setScrollFactor('Text', 1, 1)
		enableTextMove('Text')
	addLuaText('Text')
end

local textX={}
local textY={}
function enableTextMove(var)
	textX[var]=getProperty(var..'.x')
	textY[var]=getProperty(var..'.y')
end

function updateTextPos(var, scroll)
	setProperty(var..'.x', (textX[var]-getProperty('camGame.target.x'))*scroll )
	setProperty(var..'.y', (textY[var]-getProperty('camGame.target.y'))*scroll )
end

function onUpdate()
	updateTextPos('Text', 1)
end