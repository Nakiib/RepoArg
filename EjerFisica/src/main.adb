with ada.Text_IO, ada.Float_Text_IO, Fisica;
use ada.Text_IO, ada.Float_Text_IO, Fisica;
procedure Main is
   velocidad_final : Float;
begin
   --  Insert code here.
   ---TEstear una libreria que se llama fisica,
   -- Definir los siguientes tipos de  datos en esta libreria
   --Distancia
   -- Velocidad
   -- tiempo
   -- aceleracion
   -- Agregar un metodo que calcula la velocidad de un movil de x tiempo
   -- Vf = Vinicial + 1/2a + t**2
   -- Funcion Posicion final (Distamcia, VElocidad_inicial, Tiempo_transucrrido) return Distancia ..
   Put_Line("Bienvenido: ");
   velocidad_final:=Calcular_Velocidad(10.0, 5.5, 2.1, 10.0);
   Put (velocidad_final, 0, 2, 0);

   null;
end Main;
