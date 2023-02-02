randomize();
if (keyboard_check_pressed(vk_enter)) game_restart();


//Fazendo os retangulos girarem
roda+=spd * direcao;

for(var i = 0; i < pedaco;i++)
{
	var _xx = lengthdir_x(dist ,roda+ i * ang);
	var _yy = lengthdir_y(dist ,roda+ i * ang);
	filho[i].image_angle = (i * ang + 90) + roda
	filho[i].x = x + _xx;
	filho[i].y = y + _yy;
}

if (obj_player.y > y + 600){
instance_destroy();
}