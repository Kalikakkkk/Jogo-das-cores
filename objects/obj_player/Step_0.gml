var _pulo = mouse_check_button_pressed(mb_left);

if (_pulo)
{
	if (velv < 0)
	{
	//Dimnuindo minha velocidade em 50%
	velv*= .5;	
	}
	velv+=-vel
}

if (velv < vel){
	velv = vel
}
if (velv > -vel)velv = -vel
y+=velv
velv+=grv;
//Colidindo com o quadrado
var _cor = instance_place(x , y , obj_cor);
//Se eu estou colidindo
if (_cor)
{
if (_cor.valor != valor)	
{
game_restart();	
}
}