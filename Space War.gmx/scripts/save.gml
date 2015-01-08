/*
    save the game status
    
    Note: game_save("save.ini") only works on Windows.
*/

var file, inst_num, inst, n0, n1

file = "save.ini"

if file_exists(file){
    file_delete(file)
}

ini_open(file)
n0 = 0;
n1 = 0;
/* 
    save the room(level/map) related informations 
*/
ini_write_real("room", "room_idx", room)


/* 
    save all the object
    Note: in this game, only the save to the active objects are good enough,
          but in the empty-soul project, save all the objects are necessary
*/

// save PlayerShip
if instance_exists(oPlayerShip){
    ini_write_real("PlayerShip", "x", oPlayerShip.x)
    ini_write_real("PlayerShip", "y", oPlayerShip.y)
    ini_write_real("PlayerShip", "lives", global.pLives)
}

// save the view
ini_write_real("View", "x", view_xview[0])
ini_write_real("View", "y", view_yview[0])


// save Enemies
inst_num = instance_number(oEnemy)

while inst_num>0{
    inst = instance_find(oEnemy, inst_num-1)
    ini_write_real("Enemy", string(n0)+string(n1), inst.object_index)
    n1+=1
    ini_write_real("Enemy", string(n0)+string(n1), inst.x)
    n1+=1
    ini_write_real("Enemy", string(n0)+string(n1), inst.y)
    inst_num -= 1
    n0 += 1
    n1 = 0
}
ini_close()
if file_exists(file){
    show_debug_message("saved!")
}
       
