grammar Boss;
r : ID EQUAL Expr EOI;

//Expresie matematica
Expr : Sum ;

//suma
Sum : Sub '+' Sum 
	| Sub
	;

//diferenta	
Sub : Exp '-' Sub 
	| Exp
	;


//impartire	
Div : Mul '/' Div 
	| Mul
	;

//inmultire
Mul : Pri '*' Mul 
	| Pri
	;

//prioritizarea operatiilor in functie de paranteza
Pri : INT
	| '('Sum')' 
	;

//numbers
INT : [0-9]+ ;
//numele variabilei
ID : [a-zA-Z]+ ;

//separator :
 
EQUAL : ' = ' ;

//End Of Input
EOI : ' $$' ;