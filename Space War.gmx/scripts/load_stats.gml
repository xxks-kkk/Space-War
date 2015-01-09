/*
    load the game status
    
    Note: game_load("save.ini") only works on Windows
*/

if !file_exists(global.sv) return -1
ini_open(global.sv)


global.room_idx = ini_read_real ("room", "room_idx", 1)
global.pLives = ini_read_real("PlayerShip", "lives", 2) //tested
score = ini_read_real("Score", "score", 0)

ini_close()

return 1;
