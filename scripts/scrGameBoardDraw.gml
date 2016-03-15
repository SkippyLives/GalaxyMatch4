var boardLayout;
boardLayout = instance_find(objBoardLayout, 0);
draw_sprite(sprGrid, 0, boardLayout.x, boardLayout.y);
draw_set_color(c_silver);

switch (gameState)
{
    case gameState_Playing:
        if (gameTurn == gameTurn_Player1)
        {
            draw_text(sprite_get_width(sprGrid)+10, 20, "PLAYER 1s Turn");
        } else {
            draw_text(sprite_get_width(sprGrid)+10, 20, "PLAYER 2s Turn");
        }
        break;
    case gameState_P1Win:
        draw_text(10, 20, "PLAYER 1 WINs! CLICK TO PLAY AGAIN.");
        break;
    case gameState_P2Win:
        draw_text(10, 20, "PLAYER 2 WINS1 CLICK TO PLAY AGAIN.");
        break;
    case gameState_StaleMate:
        draw_text(10, 20, "OK, WE'LL CALL IT A DRAW. CLICK TO PLAY AGAIN.");
        break;
}


draw_text(sprite_get_width(sprGrid)+10, 70, "WINS");
draw_text(sprite_get_width(sprGrid)+10, 85, "PLAYER1: " + string(winsPlayer1));
draw_text(sprite_get_width(sprGrid)+10, 100, "PLAYER2: " + string(winsPlayer2));

