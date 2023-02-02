if (instance_exists(obj_player))
{
alvo = obj_player;	
}else
{
alvo = id;	
}

x=lerp(x,alvo.x,.1)
var _yy =lerp(y,alvo.y,.1)
//y =min(y,_yy)
y =max(y,_yy)

if (alvo.y < y - 550)room_restart();

if (y + 500 >= room_height)
{
	room_height+=1000;
}