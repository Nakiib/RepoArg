--  Hacer una funci�n en la que dado un String como input, verifique si todos
--  los caracteres que conforman el string, son alfanum�ricos (no usar la funci�n
--  ADA que ya nos lo indica). Si alguno de los caracteres no es un alfanum�rico,
--  devuelve FALSE. En caso contrario, la funci�n devuelve TRUE.
with Ada.Text_IO, Procedimientos;
use Ada.Text_IO,Procedimientos;

procedure Main is
begin
   Put_Line("Introduzca la cadena a comprobar:");
   if EsAlfanumerico (Get_Line) then
      Put_Line ("Es alfanum�rico");
   else
      Put_Line ("No es alfanum�rico");
   end if;

end Main;
