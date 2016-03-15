// Setup the difficulty levels
gameRestart_Start = 0;
gameRestart_Restart = 1;
gameRestart_Max = gameRestart_Restart + 1;
gameRestart = gameRestart_Start;
restart = false;

// Position the object
x = (room_width - ( (room_width - (sprite_get_width(sprGrid) + 10))/2)) - (sprite_get_width(sprRestart)/2);

//x = ( (room_width/2) - (sprite_get_width(sprRestart)/2));
y = room_height - (sprite_get_height(sprRestart) * 5.5);

