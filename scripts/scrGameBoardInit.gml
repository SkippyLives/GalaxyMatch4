//Setup Row and Collum Count
//boardRows = 7
//boardCollumns = 7

// Setup enum for the states the game can be in
gameState_Playing = 0;
gameState_Moving = 1;
gameState_Options = 2;
gameState_P1Win = 3;
gameState_P2Win = 4;
gameState_StaleMate = 5;
gameState = gameState_Options;

// setup the potential turns "enum"
gameTurn_Player1 = 0; // O's
gameTurn_Player2 = 1; // X's
gameTurn = gameTurn_Player1;

// Setup the board states "enum"
boardState_NoResult = 0;
boardState_Stalemate = 1;
boardState_Winner = 2;

// Setup the Player 2 type
playerType_AI = 0;
playerType_Human = 1;
global.playerType = playerType_AI;

// Setup the difficulty states "enum"
gameDifficulty_Easy = 0;
gameDifficulty_Medium = 1;
gameDifficulty_Hard = 2;
gameDifficulty_Max = gameDifficulty_Hard + 1;
global.gameDifficulty = gameDifficulty_Easy;

// Setup the difficulty levels
playerFirst_P1 = 0;
playerFirst_P2 = 1;
playerFirst_Random = 2
playerFirst_Max = playerFirst_Random + 1;
global.playerFirst = playerFirst_P1;

// Setup Wins
winsPlayer1 = 0;
winsPlayer2 = 0;

// Create the object that defines the layout of the on-screen board
boardLayout = instance_create(0, 0, objBoardLayout);

// Get the disparity between cell width/height
var widthOffset, heightOffset;
widthOffset = (boardLayout.cellWidth - sprite_get_width(sprX)) / 2;
heightOffset = (boardLayout.cellHeight - sprite_get_height(sprX)) / 2;

// Setup the set of game cells on the board
var xx, yy, i, j;
xx = boardLayout.x;
for (i = 0; i < BOARD_COLS; i += 1)
{
    yy = boardLayout.y;
    for (j = 0; j < BOARD_ROWS; j += 1)
    {
        // Create the instance, accounting for the disparity in cell
        // width/height and the size of the O/X sprites
        gameCell[i,j] = instance_create(xx + widthOffset, yy + heightOffset, objBoardCell);
        yy += boardLayout.cellHeight;
    }
    xx += boardLayout.cellWidth;
}

global.testCell = gameCell;
token = instance_create(0, 0, objBoardCell);
global.targetCell = token;

room_goto(rmOptions);

audio_play_music(sndBackground,0);

