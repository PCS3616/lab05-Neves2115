LV =000
MM /100; PRIMEIRO CASO
SC SUBROTINA; Chamo a subrotina
HM /006; termino o programa


SUBROTINA JP /000; inicio
INICIO LV =063
SB I
JZ FIMSUBROTINA; se 63-i ==0, sai da subrotina. Ou seja, i vai de 0 a 62
LD I 
ML DOIS 
AD UM; 2i +1
AD RES
MM RES; somatoria acumulativa
LD POS; carrego a posicao a ser armazenada
AD DOIS; somo dois
MM POS; salvo para a proxima posicao
AD COLOCA9; coloco 9 na frente para a maquina interpretar como instrucao de move memory
MM EXECUTA; salvo a instrucao 9POS na linha executa
LD RES; carrego o valor que sera armazenado
EXECUTA K =0000; executo a instrucao 9POS com o valor de RES
LD I 
AD UM ; i = i+1
MM I
JP INICIO ; volto pro inicio


FIMSUBROTINA RS SUBROTINA


I K =000
UM K =001
DOIS K =002
RES K /000
POS K /100
COLOCA9 K /9000

