with ada.Numerics.Float_Random, ada.Float_Text_IO, ada.Integer_Text_IO, ada.Text_IO;
use ada.Numerics.Float_Random, ada.Float_Text_IO, ada.Integer_Text_IO, ada.Text_IO;
procedure Main is
   V_Valor_Aleatorio : Integer;
   Gen : Generator;
   V_Intento : Integer;
   indice : Integer := 1;
begin
   --  La computadora determina un numero al azar entre 1 .. 100
   -- La computadora da 5 oportunidades al user para acertar el numero.
   -- El usuario arriesga y la computadora dice si dicho numero es mayor o menor al numero
   -- Si adivina antes de 5 intentos gana
   -- si no adivina en 5 intentos pierde;
   Reset(Gen);
   V_Valor_Aleatorio := Integer(Random(Gen) * 99.0)+1;
   Put_Line(V_Valor_Aleatorio'Image);
   Put_Line("******************************Bienvenidos al juego de la adivinanza. ******************************");
   Put_Line("*************************Tienes 5 intentos para acertar el numero magico :*************************");
   loop
      Put_Line("************* Introduzca el numero. Este es el "& indice'Image & "º Intento *******************************");
      Get(V_Intento);
      if V_Intento= V_Valor_Aleatorio then
         indice := 7;
      else
         if V_Intento>V_Valor_Aleatorio then
            Put_Line("************* El numero es menor al introducido ********************************************");
         else
            Put_Line("*************El numero es mayor al introducido********************************************");
         end if;

         indice := indice + 1;
         Put_Line("***Intentalo de nuevo***");
      end if;

   exit when indice = 6 or indice = 7;
   end loop;
   if indice = 7 then
      Put_Line("*************Enhorabuena ganador, has acertado. El numero es "& V_Valor_Aleatorio'Image & "**************");
   else
      Put_Line("*************Mala suerte, El numero es "& V_Valor_Aleatorio'Image & "************************************");
end if;



end Main;
