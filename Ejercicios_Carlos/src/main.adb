--  Hacer una funci�n en la que dado un String como input, verifique si todos
--  los caracteres que conforman el string, son alfanum�ricos (no usar la funci�n
--  ADA que ya nos lo indica). Si alguno de los caracteres no es un alfanum�rico,
--  devuelve FALSE. En caso contrario, la funci�n devuelve TRUE.
with ada.Text_IO, ada.Strings.Unbounded, Procedimientos;
use ada.Text_IO, ada.Strings.Unbounded, Procedimientos;
procedure Main is
   Nombre : String := "Nakiib";
begin
   --  Insert code here.
   --Nombre := "Nakiib";
   if Alfanumericos(Nombre) then
      Put_Line("Todos son alfanumericos "& Nombre);
   else
      Put_Line("Hay algun colado");
   end if;

end Main;
