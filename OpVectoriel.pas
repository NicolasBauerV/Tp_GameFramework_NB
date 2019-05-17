{addition : (x1 y1) + (x2 y2) = (x1+x2 y1+y2)
soustraction : (x1 y1) - (x2 y2) = (x1-x2 y1-y2)
produit par un scalaire : (x1 y1)a = (ax1 ay1)
produit scalaire : (x1 y1) . (x2 y2) = x1*x2 + y1*y2}

(*
            addition : (x1 y1) + (x2 y2) = (x1+x2 y1+y2)
            soustraction : (x1 y1) - (x2 y2) = (x1-x2 y1-y2)
            produit par un scalaire : (x1 y1)a = (ax1 ay1)
            produit scalaire : (x1 y1) . (x2 y2) = x1*x2 + y1*y2
*)

unit OpVectoriel;

interface

type
    vecteur = record
        x : integer;
        y : integer;
    end;

    //Déclarations des functions
    function addition(vecteur1, vecteur2 : vecteur):vecteur;
    function soustraction(vecteur1, vecteur2 : vecteur):vecteur;
    function ProduitParUnScalaire(vecteur1, vecteur2 : vecteur; I : integer):vecteur;
    function ProduitScalaire(vecteur1, vecteur2 : vecteur):vecteur;
    function ProduitVectoriel(vecteur1, vecteur2 : vecteur):vecteur;

//Déclaration variable
var 

	I : integer;
	A, B : vecteur;

implementation
//On addtionne les vecteurs
function addition(vecteur1, vecteur2 : vecteur):vecteur;
var VecAdd : vecteur;

begin
    VecAdd.x := vecteur1.x + vecteur2.x;
    VecAdd.y := vecteur1.y + vecteur2.y;

    addition := VecAdd;
end;
// On soustrait les vecteur
function soustraction(vecteur1, vecteur2 : vecteur):vecteur;
var VecSous: vecteur;

begin
    VecSous.x := vecteur1.x - vecteur2.x;
    VecSous.y := vecteur1.y - vecteur2.y;
    soustraction := VecSous;
end;
//On fait un Produit par un scalaire
function ProduitParUnScalaire(vecteur1, vecteur2 : vecteur; I : integer):vecteur;
var VecPPUS : vecteur;

begin
    VecPPUS.x := vecteur1.x * I;
    VecPPUS.y := vecteur1.y * I;
    ProduitParUnScalaire := VecPPUS;
end;
//Produit Scalaire
function ProduitScalaire(vecteur1, vecteur2 : vecteur):vecteur;
var VecPS : vecteur;

begin
    VecPS.x := vecteur1.x * vecteur2.x;
    VecPS.y := vecteur1.y * vecteur2.y;
    ProduitScalaire := VecPS;
end;
//Produit Vectoriel
function ProduitVectoriel(vecteur1, vecteur2 : vecteur):vecteur;
var VecPV: vecteur;

begin
    VecPV.x := vecteur1.x * vecteur2.y;
    VecPV.y := vecteur2.x * vecteur1.y;
    ProduitVectoriel := VecPV;
end;
end.