/*
    restores the game to the initial status

*/
global.state = global.PLAY
if file_exists(global.sv) file_delete(global.sv)
global.pLives = global.numLives