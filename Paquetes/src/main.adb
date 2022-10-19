with Constantes, ada.Text_IO, IO, ada.Integer_Text_IO;
use Constantes, ada.Text_IO, IO, ada.Integer_Text_IO;

procedure Main is

begin
   --  Insert code here.
   Put_Line(Titulo);
   Put_Line("Version "& version'Image);
   New_Line(2);
   Put_Line("Introduzca su nombre");
   declare
      Nombre : String := get_NotEmpty_Line;

   begin
      Put_Line("Hola " & Nombre);

   end;
   Put_Line("Ingrese su edad");
   declare
      Edad : Integer;

   begin
        Edad := Get_Integer;
   end;

end Main;
