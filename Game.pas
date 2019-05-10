program Game;

uses Ball, Vecteur, Objet, OpVectoriel;


var m_ball: TBall;
	v_vecteur: Vect2D;
	o_Objet: GameObject;
	x : integer;

BEGIN

	//La partie Objet

	o_Objet.Texture := 1;
	o_Objet.position.PosX := 0; 
	o_Objet.position.PosY := 0;

	setObjTexture(o_Objet, 10);

	v_vecteur.PosX:= 100;
	v_vecteur.PosY:= 25; 

	setObjVecteur(o_Objet, v_vecteur);

	writeln(o_Objet.position.PosX);
	writeln(o_Objet.position.PosX);
	
	writeln(o_Objet.Texture);




	// Partie Opération Véctoriel

	Writeln('Veuillez saisir la valeur x du vecteur A');
	readln(A.x);

	Writeln('Veuillez saisir la valeur y du vecteur A');
	readln(A.y);

	Writeln('Veuillez saisir la valeur x du vecteur B');
	readln(B.x);

	Writeln('Veuillez saisir la valeur y du vecteur B');
	readln(B.y);


	// On appelle les fonctions de la librairie OpVectoriel
	addition(A, B);
	soustraction(A, B);
	ProduitParUnScalaire(A, B, I);
	ProduitScalaire(A, B);
	ProduitVectoriel(A, B);




	readln;





end.