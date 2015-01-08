var n0, n1, inst
if !file_exists(global.sv) return -1
ini_open(global.sv)
n0 = 0
n1 = 0
inst = 0
    
/* 
    load the view
*/
view_xview[0] = ini_read_real("View", "x", 0)
view_yview[0] = ini_read_real("View", "y", 0)

/*
    load all the object
*/

// load PlayerShip
xx = ini_read_real("PlayerShip", "x", 0)
yy = ini_read_real("PlayerShip", "y", 0)
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

return 1
