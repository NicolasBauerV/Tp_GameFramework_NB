unit Objet;

interface

uses Vecteur;



type GameObject = record
	Texture : integer;
	position: Vect2D;
end;

//Declaration des fonction et procédures
function getObjTexture(obj: GameObject) : integer;

function getObjVecteur(obj: GameObject) : Vect2D;

procedure setObjTexture(var obj: GameObject; TextureTmp : integer);

procedure setObjVecteur(var obj: GameObject; VecteurTmp : Vect2D);

implementation


//On donne une Texture
function getObjTexture(obj: GameObject) : integer;
begin
	getObjTexture:= obj.Texture;


//On donne un vecteur

end;

function getObjVecteur(obj: GameObject) : Vect2D;
begin
	getObjVecteur:= obj.position;

end;

//On introduis une texture

procedure setObjTexture(var obj: GameObject; TextureTmp : integer);
	begin
		obj.Texture:= TextureTmp;

	end;
// On introduis un vecteur
procedure setObjVecteur(var obj: GameObject; VecteurTmp : Vect2D);
	begin
		obj.position:= VecteurTmp;
	end;

end.