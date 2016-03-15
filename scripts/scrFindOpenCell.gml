col = argument0;
var row;
for (row = BOARD_ROWS - 1; row >= 0; row -= 1)
{
    if (testCell[col, row].occupied == false)
    {
        return row;
    }
}


