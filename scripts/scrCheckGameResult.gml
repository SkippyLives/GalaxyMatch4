// Check for winning state
var i, j;

scrBuildTestCells();

for (i = 0; i < BOARD_COLS; i += 1)
{
    for (j = 1; j < BOARD_ROWS; j += 1)
    {
        // for each cell we will check all possibilities

        // first see if there is even a piece here
        if (gameCell[i, j].occupied)
        {
            // check col first (down, down-right, down-left) then row

            // down
            if (scrCheckCol(i, j))
            {
                return boardState_Winner;
            }
            // down left (diag /)
            if (scrCheckUpDiag(i, j))
            {
                return boardState_Winner;
            }
            // down right (diag \)
            if (scrCheckDownDiag(i, j))
            {
                return boardState_Winner;
            }
            // check row right
            if (scrCheckRow(i, j))
            {
                return boardState_Winner;
            }        
        }            
    }      
}
 
// Check for Stalemate/No result yet   
for (i = 0; i < BOARD_COLS; i += 1)
{
    for (j = 1; j < BOARD_ROWS; j += 1)
    {
        if (gameCell[i, j].occupied == false)
        {
            return boardState_NoResult;
        }
    }
}
return boardState_Stalemate;

