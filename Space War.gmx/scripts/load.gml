/*
    load the game status
    
    Note: game_load("save.ini") only works on Windows
*/
var file, n0, n1, inst

file = "save.ini"
if !file_exists(file) return -1
ini_open(file)

n0 = 0
n1 = 0
inst = 0
xx = 0
yy = 0

/*
    load the room (level/map) related information
*/
room_idx = ini_read_real ("room", "room_idx", 1)
room_goto(room)

/*
    load all the object
*/

// load PlayerShip
xx = ini_read_real("PlayerShip", "x", 0)
yy = ini_read_real("PlayerShip", "y", 0)
global.pLives = ini_read_real("PlayerShip", "lives", 2)
instance_create(xx, yy, oPlayerShip)

// load Enemies
while ini_key_exists("Enemy", string(n0)+string(n1)){
    inst=ini_read_real("Enemy", string(n0)+string(n1),0)
    n1 += 1
    xx = ini_read_real("Enemy", string(n0)+string(n1),0)
    n1 += 1
    yy = ini_read_real("Enemy", string(n0)+string(n1),0)
    instance_create(xx,yy,inst)
    n0 += 1
    n1 = 0
}
ini_close()

return 1;
