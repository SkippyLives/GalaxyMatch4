show_debug_message("Clearing board...");

gameState = gameState_Playing;
gameTurn = gameTurn_Player1;

//Get setting from the Options Page
var playerTypeInst;
playerTypeInst = instance_find(objPlayerType, 0);
playerType = playerTypeInst.playerType;

// Find out the game difficulty
var gameDifficultyInst;
gameDifficultyInst = instance_find(objGameDifficulty, 0);
gameDifficulty = gameDifficultyInst.gameDifficulty;


// Setup the set of game cells on the board
var i, j;
for (i = 0; i < BOARD_COLS; i += 1) 
{
    for (j = 0; j < BOARD_ROWS; j += 1)
    {
        with (gameCell[i, j])
        {
            scrBoardCellInit();
        }
    }
}

