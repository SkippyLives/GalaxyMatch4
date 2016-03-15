// If it is the PCs turn to play decide what to do
var result;

if (gameTurn == gameTurn_Player2)
{
    
    var i, j;
    // if game difficulty is difficulty we will make the most educated move
    // for easy we randomly chose.
    // meduim isn't much different right now than hard.
    scrBuildTestCells(); 
    if (global.gameDifficulty != gameDifficulty_Easy)
    {
        // Check to see if there is a winning move available
        for (i = 0; i < BOARD_COLS; i += 1)
        {
            j = scrFindOpenCell(i);

            if (j > 0)
            {
                if (scrTestCellForResult(i, j, sprX))
                {
                    scrUseCell(i, j, sprX);
                    exit;
                }
            }
        }
        
        // Check for blocking move
        for (i = 0; i < BOARD_COLS; i += 1)
        {
            j = scrFindOpenCell(i);
            if (j > 0)
            {
                if (scrTestCellForResult(i, j, sprO))
                {
                    scrUseCell(i, j, sprX);
                    exit;
                }
            }
        }
        // Otherwise we just chose random
    }

    // PC on easy will always just go random
    var tries, maxtries;
    maxtries = 5;
    tries = 0;
        
    while (true)
    {
        i = floor(random(BOARD_COLS));
        j = scrFindOpenCell(i);
        if ((!gameCell[i, j].occupied) && (j > 0)) //make sure we are on the board and it is open. 
        {
            // on hard we want to make sure our move doesn't allow them to win.
            if ((global.gameDifficulty == gameDifficulty_Hard) && (tries < maxtries))
            {
                if (j > 1) 
                {
                    testCell[i, j].occupied = true;
                    testCell[i, j].sprite = sprX;

                    result = scrTestCellForResult(i, (j-1), sprO );
                
                    testCell[i, j].occupied = false;
                    testCell[i, j].sprite = -1;            

                    if (result == false)
                    {
                        scrUseCell(i, j, sprX);
                        exit;
                    }

                } else {
                    scrUseCell(i, j, sprX);
                    exit;
                }
                                
            } else {
                       
                scrUseCell(i, j, sprX);
                exit;
            }
            tries += 1;
        }
    }
}    
