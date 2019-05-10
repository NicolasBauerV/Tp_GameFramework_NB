{addition : (x1 y1) + (x2 y2) = (x1+x2 y1+y2)
soustraction : (x1 y1) - (x2 y2) = (x1-x2 y1-y2)
produit par un scalaire : (x1 y1)a = (ax1 ay1)
produit scalaire : (x1 y1) . (x2 y2) = x1*x2 + y1*y2}

unit OpVectoriel;

interface

type vecteur = record
	x : integer;
	y : integer;

end;

//Déclaration dees procédures
procedure addition(vecteur1, vecteur2 : vecteur);
procedure soustraction(vecteur1, vecteur2 : vecteur);
procedure ProduitParUnScalaire(vecteur1, vecteur2 : vecteur; I : integer);
procedure ProduitScalaire(vecteur1, vecteur2 : vecteur);
procedure ProduitVectoriel(vecteur1, vecteur2 : vecteur);


//Déclaration variable
var 

	I : integer;
	A, B : vecteur;

implementation


//On addtionne les vecteurs
procedure addition(vecteur1, vecteur2 : vecteur);
	var VecAdd : vecteur;

	begin
		VecAdd.x := vecteur1.x + vecteur2.x;
		VecAdd.y := vecteur1.y + vecteur2.y;
		writeln('La somme des coordonnees x est', VecAdd.x, ' et la somme des coordonnees y est ', VecAdd.y);
	end;

// On soustrait les vecteur
procedure soustraction(vecteur1, vecteur2 : vecteur);
	var VecSous: vecteur;

	begin
		VecSous.x := vecteur1.x - vecteur2.x;
		VecSous.y := vecteur1.y - vecteur2.y;
		writeln('La difference des coordonnees x est ', VecSous.x, ' et la difference des coordonnees y est ', VecSous.y);
	end;

//On fait un Produit par un scalaire

procedure ProduitParUnScalaire(vecteur1, vecteur2 : vecteur; I : integer);
	var VecPPUS : vecteur;

	begin
		VecPPUS.x := vecteur1.x * I;
		VecPPUS.y := vecteur1.y * I;
		writeln('Le produit par un scalaire des coordonnees x est ', VecPPUS.x, ' et le produit par un scalaire des coordonnees y est ', VecPPUS.y);
	end;

//Produit Scalaire
procedure ProduitScalaire(vecteur1, vecteur2 : vecteur);
	var VecPS : vecteur;

	begin
		VecPS.x := vecteur1.x * vecteur2.x;
		VecPS.y := vecteur1.y * vecteur2.y;
		writeln('Le produit scalaire des coordonnees x est ', VecPS.x, ' et le produit scalaire des coordonnees y est ', VecPS.y);
	end;


//Produit Vectoriel
procedure ProduitVectoriel(vecteur1, vecteur2 : vecteur);
	var VecPV: vecteur;

	begin
		VecPV.x := vecteur1.x * vecteur2.y;
		VecPV.y := vecteur2.x * vecteur1.y;
		writeln('Le produit vectoriel des coordonnees x est ', VecPV.x, ' et le produit vectoriel des coordonnees y est ', VecPV.y);
	end;


end.