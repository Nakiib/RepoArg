with Ada.Text_IO, Generic_Demo;
use Ada.Text_IO, Generic_Demo;
procedure Main is
   C_Max_Jugadores : constant Integer := 23;
   C_Min_Jugadores : constant Integer := 11;

   type Equipos is (Real_Madrid, Barsa, Betis, Villareal, Getafe, Atelitco);
   type Cantidad_Jugadores is new Integer range C_Min_Jugadores .. C_Max_Jugadores;
   type Sueldo is range 0 .. 2**40;
   type Metros_Sobre_Segundo is delta 0.001 digits 4;

   C1 : Cantidad_Jugadores;
   C2 : Cantidad_Jugadores;

   Equipo_Favorito : Equipos;
   Equipo_Odiado : Equipos;
   --
   --  NumeroA : Natural;
   --  NumeroB : Natural;
   --
   Sueldo_Messi : Sueldo;
   Sueldo_Tesla : Sueldo;
   --
   --  Velocidad_Inicial : Metros_Sobre_Segundo;
   --  Velocidad_Final : Metros_Sobre_Segundo;
   --  procedure SWAP (C1 : in out Cantidad_Jugadores; C2 : in out Cantidad_Jugadores) is
   --     aux : Cantidad_Jugadores;
   --     begin
   --        aux:= C1;
   --        c1 := C2;
   --        C2:= aux;
   --
   --  end SWAP;
   --  procedure SWAP (E1 : in out Equipos; E2 : in out Equipos) is
   --     aux : Equipos;
   --  begin
   --     aux:= E1;
   --     E1 := E2;
   --     E2:= aux;
   --
   --  end SWAP;
   --  procedure Swap (Entrada1: in out Integer; Entrada2: in out Integer)   is
   --     Aux:Integer;
   --  begin
   --     Aux := Entrada1;
   --     Entrada1 := Entrada2;
   --     Entrada2 := Aux;
   --  end;

   procedure Swap is new Generic_Swap(T => Cantidad_Jugadores);
   procedure Swap is new Generic_Swap(T => Equipos);
   procedure Swap is new Generic_Swap(T =>Natural );
   procedure Swap is new Generic_Swap(T => Sueldo);

begin
   --  Insert code here.
   C1 := 23;
   C2 := 15;
   Put_Line("Antes (" & C1'Image & "," & C2'Image &")" );
      --  SWAP(C1 => C1,
      --       C2 => C2);
   Put_Line("Despues (" & C1'Image & "," & C2'Image &")" );

   Equipo_Favorito := Barsa;
   Equipo_Odiado := Villareal;
   Put_Line("Antes (" & Equipo_Odiado'Image & "," & Equipo_Favorito'Image &")" );
   SWAP(Equipo_Favorito, Equipo_Odiado);
   Put_Line("Despues (" & Equipo_Odiado'Image & "," & Equipo_Favorito'Image &")" );

   Sueldo_Messi := 10000000;
   Sueldo_Tesla := 20000000;
   Put_Line("Antes (" & Sueldo_Messi'Image & "," & Sueldo_Tesla'Image &")" );
   Swap(Sueldo_Messi, Sueldo_Tesla);
   Put_Line("Despues (" & Sueldo_Messi'Image & "," & Sueldo_Tesla'Image &")" );


   null;
end Main;

