// Setup the difficulty levels
gameDifficulty_Easy = 0;
gameDifficulty_Medium = 1;
gameDifficulty_Hard = 2;
gameDifficulty_Max = gameDifficulty_Hard + 1;

// Position the object
//x = (room_width - ( (room_width - (sprite_get_width(sprGrid) + 10))/2)) - (sprite_get_width(sprDifficulty)/2);
x = ( (room_width/2) - (sprite_get_width(sprDifficulty)/2));
//x = sprite_get_width(sprGrid) + 10;
y = room_height - sprite_get_height(sprDifficulty);

