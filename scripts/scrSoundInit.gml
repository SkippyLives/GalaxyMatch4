// Setup the difficulty levels
sound_On = 0;
sound_Off = 1;
sound_Max = sound_Off + 1;

sound = sound_On;

// Position the object
x = (room_width - ( (room_width - (sprite_get_width(sprGrid) + 10))/2)) - (sprite_get_width(sprOnOff)/2);
y = room_height - (sprite_get_height(sprOnOff) * 4);

