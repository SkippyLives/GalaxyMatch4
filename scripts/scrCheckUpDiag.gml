var offset, check;
col = argument0;
row = argument1;
check = false;

if ( (row <= (BOARD_ROWS - NUM_MATCH_NEEDED)) && (row >= 0) ) // if we are too low down then we can't have 4 in a row
{

    if ( (col >= (NUM_MATCH_NEEDED - 1)) && (col < BOARD_COLS) ) // if we are too far left then we can't have 
    {
    
        check = true;
        for (offset = 0; offset < NUM_MATCH_NEEDED; offset += 1)
        {
            if (testCell[(col - offset), (row + offset)].occupied && (testCell[(col - offset), (row + offset)].sprite == testCell[col, row].sprite))
            {
            } else {
                check = false;
            }
        }
    }
}
return check;
