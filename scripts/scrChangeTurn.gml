switch (scrCheckGameResult())
{
    case boardState_NoResult:
    {
        if (gameTurn == gameTurn_Player1)
        {
            gameTurn = gameTurn_Player2;
        } else {
            gameTurn = gameTurn_Player1;
        }
    }
    break;
    
    case boardState_Winner:
    {
        if (gameTurn == gameTurn_Player1)
        {
            gameState = gameState_P1Win;
            show_debug_message("PLAYER 1 WINS");
            winsPlayer1 += 1;
        } else {
            gameState = gameState_P2Win;
            show_debug_message("PLAYER 2 WINS");
            winsPlayer2 += 1;
        }
    }
    break;
    
    case boardState_Stalemate:
    {
        gameState = gameState_StaleMate;
        show_debug_message("STALE MATE");
    }
    break;
}

