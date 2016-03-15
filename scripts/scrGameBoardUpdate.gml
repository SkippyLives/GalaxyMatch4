// independant of states
//check music
soundInst = instance_find(objSound, 0);
if (soundInst.sound == soundInst.sound_Off)
{
    if ( audio_is_playing(sndBackground) )
    {
        audio_pause_music();
    }
} else {
    if ( !audio_is_playing(sndBackground) )
    {
        audio_resume_music();
    }
}

restartInst = instance_find(objRestart, 0);
if (restartInst.restart == true)
{
    restartInst.restart = false;
    scrResetGame();
}

optionsInst = instance_find(objOptions, 0);
if (optionsInst.options == true)
{
    gameStart = gameState_Options;
    optionsInst.options = false;
    room_goto(rmOptions);
}

// Setup the list of states the game can be in
switch (gameState)
{
    case gameState_Playing:
    {
        if ( (gameTurn == gameTurn_Player2) && (global.playerType == playerType_AI) )
        {
            scrUpdateAI();
        }  else {
           var xx, yy, i;
            xx = boardLayout.x;
            yy = boardLayout.y;

            for (i = 0; i < BOARD_COLS; i += 1)
            {
                // Check to see if mouse is within this location
                if ((mouse_x >= xx) && (mouse_x < (xx + boardLayout.cellWidth)) &&
                    (mouse_y >= yy) && (mouse_y < (yy + boardLayout.cellHeight)))
                {
                    token.x = gameCell[i,0].x;
                    token.y = gameCell[i,0].y;
                    
                    if (gameTurn == gameTurn_Player1)
                    {
                        token.sprite = sprO;
                    } else {
                        token.sprite = sprX;
                    }
                }
                xx += boardLayout.cellWidth;
       
            }
        }
    }
    break;

    case gameState_Moving:
    {
            
        if (token.y < targetCell.y)
        {
            token.y += 8;
        } else {
            targetCell.sprite = token.sprite;
            targetCell.occupied = true;
            gameState = gameState_Playing;
            scrChangeTurn();
        }
    }
    break;    

    case gameState_P1Win:
    case gameState_P2Win:
    case gameState_StaleMate:
        break;
}

