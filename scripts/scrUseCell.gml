var i, j;
i = argument0;
j = argument1;
spr = argument2;

var row;

if (i >= 0 && i < BOARD_COLS && j >= 0 && j < BOARD_ROWS)
{
    token.x = gameCell[i,0].x;
    token.y = gameCell[i,0].y;
    token.sprite = spr;
    targetCell = gameCell[i,j];
    
//    gameCell[i,j].occupied = true;
//    gameCell[i,j].sprite = spr;
    gameState = gameState_Moving;
//    scrChangeTurn();
}

