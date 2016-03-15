var row,col;

for (col = 0; col < BOARD_COLS; col += 1)
{
    for (row = 0; row < BOARD_ROWS; row += 1)
    {
        testCell[col, row] = gameCell[col, row];
    }
}
