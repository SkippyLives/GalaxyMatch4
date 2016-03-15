// If the game is playing an animation just ignore it.
if (gameState == gameState_Moving)
{
    exit;
}

// If the game has the Options screen open just ignore it.
if (gameState == gameState_Options)
{
    exit;
}

// If the game is waiting for input after a game is completed then react
if ( gameState != gameState_Playing)
{
    scrResetGame();
    exit;
}

// If it's not the player's turn then don't process the mouse button
if (gameTurn != gameTurn_Player1)  // in a hotseat game this isn't used.
{
    if (global.playerType == playerTypeInst.playerType_AI)
    {
        exit;
    }
}

var xx, yy, i, j, row;
xx = boardLayout.x;
for (i = 0; i < BOARD_COLS; i += 1)
{
    yy = boardLayout.y;
    for (j = 0; j < 1; j += 1)
    {
        // Check to see if mouse is within this location
        if ((mouse_x >= xx) && (mouse_x < (xx + boardLayout.cellWidth)) &&
            (mouse_y >= yy) && (mouse_y < (yy + boardLayout.cellHeight)))
        {
            // Check the collumn at this location to find open slot
            for (row = BOARD_ROWS - 1; row > 0; row -= 1)
            {
                if (!gameCell[i,row].occupied)
                {
                    if (gameTurn == gameTurn_Player1)
                    {
                        scrUseCell(i, row, sprO);
                    } else {
                        scrUseCell(i, row, sprX);
                    }
                    exit;
                }
            }
        }
        yy += boardLayout.cellHeight;
    }
    xx += boardLayout.cellWidth;
}

