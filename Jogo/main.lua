-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local physics = require("physics")
physics.start()


l1 = display.newLine(0,0,0,display.actualContentHeight)
l1.anchorX = 0
l1.anchorY = 0

l2 = display.newLine(0,0,display.actualContentWidth,0)
l2.anchorX = 0
l2.anchorY = 0

l3 = display.newLine(display.actualContentWidth,0,display.actualContentWidth,display.actualContentHeight)
l3.anchorX = 0
l3.anchorY = 0

l4 = display.newLine(display.actualContentWidth,display.actualContentHeight,0,display.actualContentHeight)
l4.anchorX = 0
l4.anchorY = 0

physics.addBody(l1,"static",{density = 1.0, friction = 0.3, bounce = 1})
physics.addBody(l2,"static",{density = 1.0, friction = 0.3, bounce = 1})
physics.addBody(l3,"static",{density = 1.0, friction = 0.3, bounce = 1})
physics.addBody(l4,"static",{density = 1.0, friction = 0.3, bounce = 1})

linha = display.newLine(0,display.contentCenterY,display.actualContentWidth,display.contentCenterY)
linha.anchorX = 0
linha.anchorY = 0


local rec_1 = display.newRect(display.contentCenterX,display.actualContentHeight*0.01,125,20)

local rec_2 = display.newRect(display.contentCenterX, display.actualContentHeight * 0.9,125,20)

local bola = display.newCircle(display.contentCenterX,display.contentCenterY,10)

physics.addBody(bola,{density = 1.0, friction = 0.3, bounce = 0.2})
physics.addBody(rec_1, "static", {density = 1.0, friction = 0.3, bounce = 2})
physics.addBody(rec_2, "static", {density = 1.0, friction = 0.3, bounce = 2})
rec_1.gravityScale = 0
rec_2.gravityScale = 0

function aplicarAceleracao(event)
    rec_2.x = rec_2.x + (event.xGravity * 50)
end
Runtime:addEventListener("accelerometer", aplicarAceleracao)