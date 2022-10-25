with ada.Text_IO, ada.Numerics.Float_Random, ada.Float_Text_IO;
use ada.Text_IO, ada.Numerics.Float_Random, ada.Float_Text_IO;
procedure Main is
   --  type Dinero is digits 2;
   --  type Montos is array (Positive range <>) of Dinero ;
   --  type Array_Natural is array (Natural range <>) of Dinero;
   --  type Array_Integer is array (Integer range <>) of Dinero;
   --
   --  --Ventas : Montos(1 .. 5);
   --  Ventas : Montos := (10.0, 2.3, 6.7);
   --  Ventas_Natural_Range : Array_Natural := (4.5, 3.5);
   --  Ventas_Integer_Range : Array_Integer := (1.7, 2.5);
begin
   --  --Ventas (1):=2.4;
   --  Put_Line("primera poscion en postivo "& Ventas'First'Image);
   --  Put_Line("primera poscion en integer "& Ventas_Integer_Range'First'Image);
   --  Put_Line("primera poscion en natural "& Ventas_Natural_Range'First'Image);
   --  null;

   declare
      --Declarar un tipo de arreglo de flotantes(abierto/ unconstrained)
      type Array_Float is array(Positive range <>) of Float;
      --declarar una funcion que recibe un num y me devuelve un arreglo
      --de numeros al azar de N posiciones
      function Rellena_Arrays (Posiciones : in Integer) return Array_Float is
         Generador :Generator;
         V_Array_float : Array_Float(1 .. Posiciones);
      begin
         for index in 1.. Posiciones loop
            Reset(Generador);
            V_Array_float(index) := Float((Random(Generador) *100.0)+1.0);

         end loop;

         return V_Array_float;


      end Rellena_Arrays;

      --declar una funcion que recibe un arreglo de ese tipo y me devuelve
      --la sumatoria

      function Sumatoria_Arreglo(Arreglo_Sum : in Array_Float) return Float is
         Result : Float := 0.0;
      begin
         for I in Arreglo_Sum'Range loop
            Result := Result + Arreglo_Sum(I);
         end loop;
         return Result;
      end;

      --declarar una funcion que reibe un arreglo de ese tipo y me devuelve
      --promedio
      function Promedio_Arreglo(Arreglo_Media : in Array_Float) return Float is

      begin

        return Sumatoria_Arreglo(Arreglo_Media)/Float(Arreglo_Media'Length);

      end;

      --un procedimiento que muestra el arreglo por pantalla
      procedure Muestra_Info (Numeros : Array_Float) is
      begin
         for index in reverse Numeros'Range loop
            Put(Numeros(index), Exp => 0);
            Put_Line("");
         end loop;
         Put_Line("La sumatoria es: ");
         put(Sumatoria_Arreglo(Numeros), Exp=>0);

         Put_Line("");
         Put_Line("El promedio es: ");
         Put(Promedio_Arreglo(Numeros), Exp=>0);
      end Muestra_Info;



      Numeros : Array_Float := Rellena_Arrays(10);
   begin
      Muestra_Info(Numeros);

   end;
end Main;
