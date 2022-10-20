with Ada.Text_IO, Geometria, ada.Float_Text_IO;
use Ada.Text_IO, Geometria, ada.Float_Text_IO;
procedure Main is
   --  type Cantidad is new Integer  -2^31 .. 2^31 -1;
   --  type Cantidad is new Natural;  0 .. 2^31 -1;
   --  type Cantidad is  range 0 ..
   --  type Cantidad is  range 0 .. Integer'Last;
   --  type Cantidad is range 0 .. 2**127-1; -- Uso 64 bits


   --  type Cantidad_Peras is new Integer;
   --  type Cantidad_Manzanas is new Integer;
   --  subtype Cantidad_Peras is Cantidad;
   --  subtype Cantidad_Manzanas is Cantidad;

   --  Peras : Cantidad_Peras;
   --  Manzanas : Cantidad_Manzanas;
   --  Frutas : Cantidad;
   --  Total : Integer;
begin
   --  Insert code here.
   --  Peras :=2;
   --  Manzanas := 4;
   --  Peras := Manzanas; -- En cualquier lenguaje esto seria correcto pero en ADA no es valida
   --  Frutas := Peras + Manzanas;
   --  Total := Peras + Manzanas;
   --  Put_Line("En total tengo " & Frutas'Image & " frutas");

   --  Frutas := 300;
   --  Frutas := Frutas + 50;
   --  Frutas := 3 ** 3; -- "**" es exponente, elvado
   --  Put_Line("Ahora tengo total "& Frutas'Image & " Frutas");

   --  declare
   --     type Mi_tipo is new Integer; -- puedo declarar tipos en el bloque declare
   --     variable : Mi_tipo;
   --  begin
   --     variable := 3;

   --  end;


   declare
      --  Type Distancia is new Float;
      --  Type Area is new Float;
      --  Base : Distancia;
      --  Altura : Distancia;
      --  Superficie : Area;

     procedure Procedure_En_Declare is
      begin
         null;
      end Procedure_En_Declare;

      --ada tiene cosas raras. Sobrecargar operadores va entre comillas el operador
      --  function "*" (Left : Distancia;  Right : in Distancia) return Area is --sobrecarga de operadores
      --  begin
      --
      --     return Area(FLoat(Left) * FLoat(Right));
      --
      --  end "*";
      --  nos lo llevamos al package de geometria

   begin
      --  Base := 10.0;
      --  Altura := 10.0;
      --Superficie := Base * Altura; --Falla xk Area y Superficie aunque vengan del mismo son distintos
                                   --Solo se puece mezclar si son subtipos. Hay que castear
      --  Superficie := Base * Altura; --usando la funcion declarada en el propio fiche main.adb
      -- para que use la funcion declarada en el paquete, en el fichero main no tiene que haber sobrecarga


      null;
   end;
   --  declare
   --     Base :Distancia := 10.0;
   --     Altura : Distancia := 5.0;
   --     Area_Triangulo : Area;
   --  begin
   --     Area_Triangulo := (Base * Altura)/ 2.0;
   --
   --  end;

   --  declare
   --     type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     type Meses is (Enero, Febrero, Marzo, Abril, Junio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
   --     Primer_Dia_Semana : Dias;
   --  begin
   --     Primer_Dia_Semana := Lunes;
   --     for Dia in Dias loop
   --
   --        Put_Line("Hoy es "& Dia'Image );
   --        case Dia is
   --        when Lunes =>
   --           Put_Line("Feliz comienzo de semana");
   --        when Sabado .. Domingo =>
   --           Put_Line("Feliz fin de semana");
   --        when Martes .. Jueves =>
   --           Put_Line("A tope en la semanan");
   --        when Viernes =>
   --              Put_Line("Tu cuerpo lo sabe");
   --        end case;
   --     end loop;
   --
   --  end;

   --Tipos de datos modulares
   --  declare
   --     type Max_1000 is mod 1000; -- va de 0 a 1000
   --     Numero : Max_1000;
   --  begin
   --     Numero :=500;
   --     Put_Line("Antes vale : "& Numero'Image);
   --     Numero := Numero + 400;
   --     Put_Line("Ahora vale: "& Numero'image);
   --     Numero := Numero + 102;
   --     Put_Line("Ahora vale: " & Numero'Image);
   --    -- Si se rellena el rango pues vuelve a empezar
   --  end;

   --Tipos de datos Flotantes con precision
   declare
      type Dinero is digits 2;
      Riqueza : Dinero;
   begin
      Riqueza := 100.4353;
      Put(Float(Riqueza), exp=>0, Aft=>Dinero'Digits);

   end;


end Main;
