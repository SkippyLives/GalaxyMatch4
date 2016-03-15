var offset, check;
col = argument0;
row = argument1;
check = false; // set to false so if we don't have room below.

if ( (col <= (BOARD_COLS - NUM_MATCH_NEEDED)) && (col >= 0) ) // ensure we have room for 4 in a row.
{

    check = true;
    for (offset = 0; offset < NUM_MATCH_NEEDED; offset += 1)
    {
        if (testCell[(col + offset), row].occupied && (testCell[(col + offset), row].sprite == testCell[col, row].sprite))
        {
        } else {
            check = false;
        }
    }
}
return check;
