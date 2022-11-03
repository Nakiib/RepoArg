with Ada.Text_IO, ada.Integer_Text_IO;
use Ada.Text_IO, ada.Integer_Text_IO;
--  Crear un procedimiento, que traslade el contenido de ese string que
--  tiene longitud 5 (se recibe el string como input), a un String
--  de cualquier longitud (la longitud de ese string output, vendrá
--  marcada por la longitud que se haya declarado ese String antes de
--  llamar al procedimiento). Los caracteres sobrantes, se rellenan con
--  el carácter que se pase como parámetro a la propia función (el carácter
--  también se pasa como input). No podemos usar las funciones de las librerías
--  ADA para trasladar el contenido de un string a otro, tenemos que programarlo nosotros.
procedure Main is
   num: Integer;
   Entrada : String (1 .. 5);
begin
   Put_Line("Introduzca el texto de 5 letras");
   Entrada :=Get_Line;
   Put_Line("¿Que tamaño quieres que tenga la salida?");
   get(num);

   declare
      Salida : String (1 .. num);
      procedure Copiar_String (Sobrante : Character) is

      begin
         if Salida'Length > Entrada'Length then

            Salida (1 .. 5) := Entrada;
            for I in Salida'Range loop
               if I > Entrada'Length then
                  Salida (I) := Sobrante;
               end if;
            end loop;

         else
            Salida (1 .. 5) := Entrada;
         end if;
         Put_Line (Salida);
         end Copiar_String;

   begin
      Copiar_String ('*');
   end;


end Main;
