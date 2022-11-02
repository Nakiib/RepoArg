with ada.Strings.Unbounded;
use ada.Strings.Unbounded;
package Personaje is

   type Vida is new Integer range 0 .. 1000;
   type Niveles is new Integer range 1 .. 20;
   type Puntos_Experiencia is new Integer range 0 .. 2000;
   type Clase_Personaje is tagged private;

   
   type Campeon is access  Clase_Personaje;
   --se crea un puntero al igual que en java
   
   --Constructor 
   function Create (Nombre : String) return Campeon;
   --Metodo clase Campeon cuando hay un this en params
   -- Se da cuando el prumer parametro es un tagged Record
   --Get & Set
   function Get_Nombre (This:Clase_Personaje) return String ;
   function Get_Nivel (This:Clase_Personaje) return Niveles ;
   function To_String (This:Clase_Personaje) return String;
   
private
      type Clase_Personaje is tagged record --tagged record = Clase java 
      Nombre : Unbounded_String;
      HP : Vida := 1000;
      Nivel : Niveles;
      Experiencia : Puntos_Experiencia := 1;
   end record;
end Personaje;
