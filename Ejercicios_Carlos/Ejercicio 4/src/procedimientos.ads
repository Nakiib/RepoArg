with Ada.Integer_Text_IO, ada.Float_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, ada.Float_Text_IO, Ada.Text_IO;
package Procedimientos is

   --  y devuelve como output, el resultado de la división entre ellos.
   --  Dentro de ese procedimiento, tenemos que capturar la excepción para que
   --  si hay una división entre 0, el procedimiento no casque, y devuelva en otro
   --  parámetro del output (un booleano), un flag indicando que no se pueden dividir.	
   function Division (Parametro1, Parametro2 : Integer) return Float ;
   

   --  tiene que convertir ese String a entero (investigar cómo se puede hacer un casteo 
   -- para pasar de String a entero), y devolverlo. Meter capturador de excepción en la 
   -- función, para que si el string contiene algún carácter no numérico, podamos capturar la excepción.
   function Conversor_String_To_Int (parm : String) return Integer;

end Procedimientos;
