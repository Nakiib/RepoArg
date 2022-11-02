package Movil is

   type Velocidades is new Integer range 0 .. 100;
   type Posiciones is new Integer range 0 .. 500;
   type Clase_Movil is tagged private;
   type Puntero_Movil is access  Clase_Movil;
   function To_Sring (this:Clase_Movil) return String ;
   function Get_PosicionX (this:Clase_Movil) return Posiciones;
   function Get_PosicionY (this:Clase_Movil) return Posiciones;
   function Get_VelocidadX (this:Clase_Movil) return Velocidades;
   function Get_VelocidadY (this:Clase_Movil) return Velocidades;
private
   type Clase_Movil is tagged record
      PosicionX : Posiciones := 0;
      PosicionY : Posiciones := 0;
      VelocidadX : Velocidades;
      VelocidadY : Velocidades;
   end record;

end Movil;
