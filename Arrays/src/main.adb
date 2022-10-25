with  Ada.Text_IO, ada.Numerics.Float_Random, ada.Strings.Unbounded;
use Ada.Text_IO, ada.Numerics.Float_Random, ada.Strings.Unbounded;
procedure Main is
   --lo primero es el tipo
   --  type Indice_Diez_Numeros is range 1.. 10;
   --  type Array_Diez_Numeros is array (Indice_Diez_Numeros) of Integer ;
   --  Generador : Generator;
   --ahora que tenemos el tipo creamos la var;
   --  Diez_Numeros : Array_Diez_Numeros;
begin
   --  Insert code here.
   --En Ada puedes poner el comienzo de array donde quieras
   --para recorrer el array hay varrias formas;
   --  for index in Indice_Diez_Numeros loop
   --     -- Diez_Numeros(index) := integer(index);
   --        Diez_Numeros (index) := Integer((Random(Generador) * Float(Integer'Last))- 1.0);
   --
   --  end loop;
   --  Diez_Numeros := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

   --  for index in Diez_Numeros'First .. Diez_Numeros'Last loop
   --     Put_Line(Diez_Numeros(index)'Image);

   --  end loop;


   --  declare
   --     function "+"(Value: in String) return Unbounded_String renames To_Unbounded_String;
   --     type Dia is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
      --  Dia_Ingles : array (dia) of Unbounded_String := (To_Unbounded_String("Monday"), To_Unbounded_String("Tuesday"),
      --                                                   To_Unbounded_String("Wednesday"),To_Unbounded_String("Thursday"),
      --                                                   To_Unbounded_String("Friday"), To_Unbounded_String("Saturday"),
      --                                                   To_Unbounded_String("Sunday"));
      --  Dia_Ingles : array (dia) of Unbounded_String := (+("Monday"), +("Tuesday"),
                                                       --  +("Wednesday"),+("Thursday"),
                                                       --  +("Friday"), +("Saturday"),
                                                       --  +("Sunday"));
      --  V_Dia :Dia;
   --  begin
      --  V_Dia := Miercoles;
      --  Put_Line(To_String(Dia_Ingles(V_Dia)));
      --Otra forma de recorrer con range
      --  for V_Dia in Dia_Ingles'Range loop
      --     Put_Line(To_String(Dia_Ingles(V_Dia)));
      --  end loop;

      --  null;
      --  end;

   --  --VAMOS CON UN EJERCICIO
   --  declare
   --     --DEcalrar un tipo para un arreglo de 5 numeros
   --     --declarar  una funcion que devuelve el aarray anterior cargado con num aleatorios
   --     type Indice_Cinco_Numeros is range 1.. 5;
   --     type Array_Cinco_Numeros is array (Indice_Cinco_Numeros) of Natural ;
   --
   --     function Array_Cinco_Numeros_Al_Azar  return Array_Cinco_Numeros is
   --        Generador :Generator;
   --        Cinco_Numeros : Array_Cinco_Numeros;
   --     begin
   --        for index in Indice_Cinco_Numeros loop
   --           Reset(Generador);
   --           Cinco_Numeros(index) := Natural((Random(Generador) * 100.0)+ 1.0);
   --        end loop;
   --        return Cinco_Numeros;
   --     end;
   --
   --     --Lo declaro y lo uso
   --     Cinco_Numeros : Array_Cinco_Numeros := Array_Cinco_Numeros_Al_Azar;
   --
   --  begin
   --     for index in Indice_Cinco_Numeros'First .. Indice_Cinco_Numeros'Last loop
   --        Put_Line(Cinco_Numeros(index)'image);
   --     end loop;
   --  end;
   --

   --
--     declare
--        --Se repite la declaracion, quiero automatizarlo
--        --  type Array_Cinco_numeros is array (1 .. 5) of Positive;
--        --  type Array_Siete_numeros is array (1 .. 7) of Positive;
--        --  type Array_Diez_numeros is array (1 .. 10) of Positive;
--        --Esta es la automatizacion   * "<>" significa que puede ser cualquier cosa. Se llama anotacion BOX
--       -- type Array_Numeros is array (Integer range <>) of Positive;
--        --para el maximo
--        type Rango_Maximo is range 1 .. 50;
--        type Array_Numeros is array (Rango_Maximo range <>) of Positive;
--        Diez_Numeros : Array_Numeros(1 .. 10);
--
--     begin
--        --  Diez_Numeros := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
--        --  Diez_Numeros := (1 => 3, 5 => 5, 7 => 7, others =>1);
--        Diez_Numeros := (1 => 3, 5 => 5, 7 => 7, others => <>);
--        Put_Line("El array tiene"& Diez_Numeros'Length'Image & " Elementos");
--        for index in Diez_Numeros'Range loop
--           Put_Line(Diez_Numeros(index)'Image);
--        end loop;
--
--        null;
--
--  end;

   declare
      --Declarar un tipo que es un array de numeros
      type Array_Numeros is array (Integer range <>) of Integer;
      --Declarar una funcion que reciba el array y devuelva el maximo
      function Maximo_Array (Array_N : Array_Numeros) return Integer is
      Maximo : Integer := 0;
      begin
         for index in Array_N'Range loop
            if Array_N(index) > Maximo  then
               Maximo:= Array_N(index);
            end if;
         end loop;
         return Maximo;
      end;
      Longitud_Ingresada : Integer;
   begin
      Put_Line("Cuantos numeros desea ingresar: ");
      Longitud_Ingresada := Integer'Value(Get_Line);
      declare
         Numeros : Array_Numeros(1 .. Longitud_Ingresada);
      begin
         for index in Numeros'Range loop
            Put_Line("Ingrese el numero "& index'Image);
            Numeros(index) := Integer'Value(Get_Line);
         end loop;
         Put_Line("El maximo de este array es: " & Maximo_Array(Numeros)'Image);

      end;

   null;
   end;


end Main;
