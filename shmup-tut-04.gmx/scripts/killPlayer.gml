oGame.reviveTimer = 20;
instance_create(x, y, oExplosion);
global.pLives -= 1;
if (global.pLives < 0) oGame.state = 1; 
instance_destroy();