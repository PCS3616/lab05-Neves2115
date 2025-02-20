GD /000
SB FIXO; subtraio 3030
MM X
GD /000; pega os espacos
GD /000
SB FIXO; subtraio 3030
MM Y
AD X
MM RES
ML SOMA; desloco para ter somente o digito menos significativo
SB A3; subtraio 0A00 
JN FIM; se o digito menos significativo for menor que a 
LD RES ; se o digito menos significativo era maior ou igual a 
SB A0; subtraio 000A
AD SOMA; adiciono 0100 para fazer o vai um
MM RES
JP FIM



FIM LD RES
AD FIXO; adiciono 3030
MM RES
PD /100; imprimo no monitor
HM /1F0

@ /200
X K /000
Y K /000
RES K /000
SOMA K /0100
A3 K /0A00
A0 K /000A
FIXO K /3030