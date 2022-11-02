with Movil, ada.Text_IO;
use Movil, ada.Text_IO;
procedure Main is
   Movil : Puntero_Movil;
begin
   --  generar la clase movil con los siguientes atributos
   --PosicionX, PosicionY, VelocidadX, VelocidadY
   --Los objetos de esa clase se inicializan en el (0,0) con una
   -- velocidad X e Y que debe ser dinida al momento de instanciar
   -- un objeto
   --Agregar un metodo   --
   --To_String() que muestra la posicion actual del movil
   --Agregar un metodo
   ----Actualizar que recibe un delta de tiempo
   --y actualiza la posicion del movil
   Put_Line(Movil.To_Sring);

   null;
end Main;
