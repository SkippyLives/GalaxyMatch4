var i, j, spr, check;
i = argument0;
j = argument1;
spr = argument2;
check = false;
testCell[i,j].occupied = true;
testCell[i,j].sprite = spr;

var offset;

for (offset = 0; offset < NUM_MATCH_NEEDED; offset += 1)
{
    // col check
    if (scrCheckCol(i, (j - offset) ))
    {
        check = true;
    }
    
    // diag / check
    if (scrCheckUpDiag( (i + offset), (j - offset) ))
    {
        check = true;
    }
    
    // diag \ check
    if (scrCheckDownDiag( (i - offset), (j - offset) ))
    {
        check = true;
    }
    
    
    // row check
    if (scrCheckRow( (i - offset), j ))
    {
        check = true;
    }
    
}
testCell[i,j].occupied = false;
testCell[i,j].sprite = -1;

return check;
     

