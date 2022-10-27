with ada.Strings.Unbounded, ada.Characters.Handling;
use ada.Strings.Unbounded, ada.Characters.Handling;
package Juego is
   Default_Max_Hp : constant Integer  := 1000;
   Default_Max_lvl : constant Integer := 20;
   
   type Profesiones is (Guerrero, Mago, Sanador, Asesino, Ninja) with Default_Value => Guerrero ;
   type Niveles is range 1 .. Default_Max_lvl with Default_Value => 1;
   type Vida is range 1 .. Default_Max_Hp with Default_Value => 100;
   
   type Jugador is record
      Nombre : Unbounded_String;
      Profesion : Profesiones;
      Nivel : Niveles;
      Hp : Vida;
   end record;
   
   type Jugadores is array (Positive range <>) of Jugador;
   
   function To_String (Value : In Jugador) return String ;
   function To_String (Value : In Profesiones) return String ;

end Juego;
