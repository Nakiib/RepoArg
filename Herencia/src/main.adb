with Selva, ada.Text_IO;
use Selva, ada.Text_IO;
procedure Main is
   Un_Animal : Animal;
begin
   --  Insert code here.
   --  Leon := Create("Mufasa");
   --  Leon := new Clase_Leon("Mufasa");

   Un_Animal := Create_Leon("Alex");
   --  Un_Animal := Create_Jirafa("Jirafator");
   Put_Line("Hola soy "& Un_Animal.Get_Nombre);
   Un_Animal.Hablar;
   null;
end Main;
