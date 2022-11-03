--  Hacer una función en la que dado un String como input, verifique si todos
--  los caracteres que conforman el string, son alfanuméricos (no usar la función
--  ADA que ya nos lo indica). Si alguno de los caracteres no es un alfanumérico,
--  devuelve FALSE. En caso contrario, la función devuelve TRUE.
with Ada.Text_IO, Procedimientos;
use Ada.Text_IO,Procedimientos;

procedure Main is
begin
   Put_Line("Introduzca la cadena a comprobar:");
   if EsAlfanumerico (Get_Line) then
      Put_Line ("Es alfanumérico");
   else
      Put_Line ("No es alfanumérico");
   end if;

end Main;
