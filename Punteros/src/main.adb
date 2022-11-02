with ada.Text_IO, IO_Enums, Juego;
use Ada.Text_IO, Juego;
--nueva libreria para la analogia de arraylist
with Ada.Containers.Vectors;
--EL objetivo de contenedor vector implementa arraylist
--  de java (analogia). Antes habia que definir la cantidad
--  de elementos. Los contenedores son dinamicos, el tamaño varia.
--  Para no hacer una libreria dianmica para cada dato, la libreria de
--  vectores es generica complementando las partes(Agregate)

procedure Main is

begin
   --  Insert code here.
   --  declare
   --     A : Integer;
   --     B : Integer;
   --     C : Integer;
   --
   --  begin
   --     A := 10;
   --     B := 20; --Memoria Stack
   --     c := A;
   --     A := 40;
   --     Put_Line(c'Image);
   --  end;
   --null;

   --  declare
   --     type Puntero_Integer is access Integer; --access no es compatible con otra igual
   --     PTR_A : Puntero_Integer :=null;
   --     PTR_B : Puntero_Integer:=null;
   --     PTR_C: Puntero_Integer :=null;
   --  begin
   --     --  PTR_A := new Integer'(10);--Pierdo la referencia al original
   --     --Un new es como llamar al constructor en poo java
   --     PTR_A := new Integer'(10);
   --     PTR_B := new Integer'(20);
   --     PTR_C := PTR_A;
   --     PTR_A.All :=40;
   --     --  Put_Line(PTR_A'Image); -- no funciona xk ek image no hay para los punteros
   --     Put_Line(PTR_C.All'image); --apunta al mismo espacio de memoria
   --  end;

   --declarar un tipo para un registro que sea un punto x/y
   --declarar un tipo que sea un puntero(access) a  un punto
   -- declarar un tipo  de arreglo a punteros de puntos..
   --  declare
   --
   --     type Puntos is record
   --        X : Integer;
   --        Y : Integer;
   --     end record;
   --     type Puntero_Punto is access Puntos;
   --     --  type Array_Punteros is  array (Natural Range <>) of Puntero_Punto;
   --     --  Mi_Punto : Puntero_Punto;
   --     --  Muchos_Puntos : Array_Punteros(0 .. 10) := (Others => null);
   --     package Vector_Puntos is new ADA.Containers.Vectors
   --       (Index_Type => Natural,
   --        Element_Type => Puntero_Punto);--el paquete
   --
   --     Mi_Punto : Puntero_Punto;
   --     Muchos_Puntos : Vector_Puntos.Vector;
   --
   --  begin
   --     --  Mi_Punto := new Puntos'(10, 20);
   --     --  for index in Muchos_Puntos'Range loop
   --     --     Muchos_Puntos(index):= new Puntos'(index+1, index+1);
   --     --  end loop;
   --     for index in 1 .. 10 loop
   --        --  Mi_Punto := Muchos_Puntos(index);
   --        --  --En principio co punteros para obtener un valor va el all
   --        --  --pero en registros me permite obviar el all
   --        --  Set_Col(Positive_Count(Mi_Punto.X));
   --        --  Set_Line(Positive_Count(Mi_Punto.Y));
   --        --  Put_Line("*");
   --        Mi_Punto := new Puntos'(index + 3, index + 2);
   --        --Ahora lo tenemos que meter en el vector
   --        Muchos_Puntos.Append(New_Item => Mi_Punto);
   --     end loop;
   --     for Punto_Actual of Muchos_Puntos loop
   --        Set_Col(Positive_Count(Punto_Actual.X));
   --        Set_Line(Positive_Count(Punto_Actual.Y));
   --        Put_Line("*");
   --     end loop;
   --
   --  end;

   declare
      Profesion : Profesiones;
      package Profesiones_IO is new IO_Enums(Enum_Type => Profesiones);
   begin
      Profesion := Profesiones_IO.Get_Enum;
   end;
end Main;
