local composer = require("composer")
local widget = require("widget")

local scene = composer.newScene()

function Handler(event)
  --print("logging")
  if event.phase=="began" then
    if Amount>9 and Amount<14 then
        NumberText.size=NumberText.size-3
        NumberText.x=NumberText.x+10
    end
    if event.target.ID==1 then
      --print("logging")
       if Number~=0 then
        if Amount<14 then
            Number=Number*10+1
            NumberText.text=Number
            NumberText.x=NumberText.x-9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+1
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==2 then
      if Number~=0 then
        if Amount<14 then
            Number=Number*10+2
            NumberText.text=Number
            NumberText.x=NumberText.x-11.3
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+2
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==3 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+3
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+3
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==4 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+4
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+4
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==5 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+5
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+5
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==6 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+6
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+6
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==7 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+7
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+7
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==8 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+8
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+8
          NumberText.text=Number
          --print("das")
        end
      end
      if event.target.ID==9 then
        if Number~=0 then
        if Amount<14 then
            Number=Number*10+9
            NumberText.text=Number
            NumberText.x=NumberText.x-11.9
            Amount=Amount+1
        else
            local alert = native.showAlert( "Limit Reached", "You Reached Limit", { "OK"})
        end
      end
      if Number==0 then
          Number=Number*10+9
          NumberText.text=Number
          --print("das")
        end
      end
    end
end

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local background=display.newRect( display.contentCenterX, display.contentCenterY
    , display.actualContentWidth, display.actualContentHeight )

    background:setFillColor(200/255,0/255,0/255)



    local TypeScreen=display.newRect( display.contentCenterX, display.actualContentHeight*0.07
    , display.actualContentWidth*0.8, display.actualContentHeight*0.1 )

    TypeScreen.strokeWidth=3
    TypeScreen:setStrokeColor()
    --TypeScreen.isVisible=false

    Number=0
    Amount=1
    NumberText=display.newText( Number,TypeScreen.x+113,TypeScreen.y,
    native.systemFontBold,37 )
    NumberText:setFillColor()


    local button1 = widget.newButton
    {
        label = "1",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button1.x = NumberText.x-200
    button1.y = NumberText.y+100
    button1.ID=1

    local button2 = widget.newButton
    {
        label = "2",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button2.x = NumberText.x-100
    button2.y = NumberText.y+100
    button2.ID=2

    local button3 = widget.newButton
    {
        label = "3",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button3.x = NumberText.x
    button3.y = NumberText.y+100
    button3.ID=3


    local button4 = widget.newButton
    {
        label = "4",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button4.x = NumberText.x-200
    button4.y = NumberText.y+200
    button4.ID=4


    local button5 = widget.newButton
    {
        label = "5",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button5.x = NumberText.x-100
    button5.y = NumberText.y+200
    button5.ID=5

    
    local button6 = widget.newButton
    {
        label = "6",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button6.x = NumberText.x
    button6.y = NumberText.y+200
    button6.ID=6


    local button7 = widget.newButton
    {
        label = "7",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button7.x = NumberText.x-200
    button7.y = NumberText.y+300
    button7.ID=7

    local button8 = widget.newButton
    {
        label = "8",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button8.x = NumberText.x-100
    button8.y = NumberText.y+300
    button8.ID=8


    local button9 = widget.newButton
    {
        label = "9",
        onEvent = Handler,
        emboss = false,
        -- Properties for a rounded rectangle button
        shape = "roundedRect",
        cornerRadius = 2,
        width = display.actualContentWidth*0.2,
        height = display.actualContentHeight*0.1,
        fillColor = { default={1,0,0,1}, over={1,0.1,0.7,0.4} },
        strokeColor = { default={1,0.4,0,1}, over={0.8,0.8,1,1} },
        strokeWidth = 4
    }


    -- Center the button
    button9.x = NumberText.x
    button9.y = NumberText.y+300
    button9.ID=9


    sceneGroup:insert(background)
    sceneGroup:insert(TypeScreen)
    sceneGroup:insert(NumberText)
    sceneGroup:insert(button1)
    sceneGroup:insert(button2)
    sceneGroup:insert(button3)
    sceneGroup:insert(button4)
    sceneGroup:insert(button5)
    sceneGroup:insert(button6)
    sceneGroup:insert(button7)
    sceneGroup:insert(button8)
    sceneGroup:insert(button9)
end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
