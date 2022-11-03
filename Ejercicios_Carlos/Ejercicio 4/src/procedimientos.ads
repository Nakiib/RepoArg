with Ada.Integer_Text_IO, ada.Float_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, ada.Float_Text_IO, Ada.Text_IO;
package Procedimientos is

   --  y devuelve como output, el resultado de la divisi�n entre ellos.
   --  Dentro de ese procedimiento, tenemos que capturar la excepci�n para que
   --  si hay una divisi�n entre 0, el procedimiento no casque, y devuelva en otro
   --  par�metro del output (un booleano), un flag indicando que no se pueden dividir.	
   function Division (Parametro1, Parametro2 : Integer) return Float ;
   

   --  tiene que convertir ese String a entero (investigar c�mo se puede hacer un casteo 
   -- para pasar de String a entero), y devolverlo. Meter capturador de excepci�n en la 
   -- funci�n, para que si el string contiene alg�n car�cter no num�rico, podamos capturar la excepci�n.
   function Conversor_String_To_Int (parm : String) return Integer;

end Procedimientos;
