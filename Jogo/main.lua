-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local x = display.actualContentWidth 
local y = display.actualContentHeight
linha = display.newLine(0,y/2,x,y/2)
linha.anchorY = 0
linha.anchorX = 0

local rec_1 = display.newRect(0,20,125,20)
rec_1.x = display.contentCenterX

print(display.actualContentHeight)

local rec_2 = display.newRect(0, y - 20,125,20)
rec_2.x = display.contentCenterX


local bola = display.newCircle(display.contentCenterX,display.contentCenterY,10)
bola.anchorX = 0
bola.anchorY = 0