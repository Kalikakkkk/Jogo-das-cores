
//Vetor das cores
/*cores = [
c_aqua	,
c_black	,
c_blue	,
c_dkgray,
c_fuchsia,
c_gray	,
c_green	,
c_lime	,
c_ltgray,
c_maroon,
c_navy	,
c_olive	,
c_orange,
c_purple,
c_red	,
c_silver,
c_teal	,
c_white	,	
c_yellow
]
*/

//Variavel que controla a rotação
randomise();
roda = 0;
pedaco = irandom_range(12 , 8);
//A velocidade da roda
spd   = choose(.3 , .6 , 1 , 1.5 , 2 , 1 , 0.15 );
//A direção se é negativa ou positiva
direcao = choose(-1 ,1)
//A distancia que o pedaço vai ser criado de mim
dist   = pedaco * 20;
//O vetor com o tamanho dos pedaços
//Que é 0
filho[pedaco] = 0;
ang = 360 / pedaco
cores = [c_red , c_blue , c_yellow , c_green];
//Variavel que controla o valor da cor

var _cor = irandom(3)
//Variavel que pega o tamanho das cores
//var _size = array_length(cores);

//Informações basica
for (var i = 0;i < pedaco;i++)
{
	var _xx = lengthdir_x(dist ,roda+ i * ang);
	var _yy = lengthdir_y(dist ,roda+ i * ang);
    filho[i] = instance_create_layer(x + _xx , y + _yy , layer , obj_cor);
	//ped.image_blend = cores[irandom(_size)];
	filho[i].image_blend = cores[_cor]


	filho[i].valor		 = _cor
	filho[i].image_angle = i * ang + 90;

	_cor++;
	//Retorna o resto da divisão
	//Resto da divisão de 4 e 4 é 0
	_cor = _cor mod 4;
}
//Criando um obj_novo
instance_create_layer(x , y + 300 , layer , obj_novi);
