with ada.Strings.Unbounded, ada.Text_IO;
use ada.Strings.Unbounded, ada.Text_IO;
package Selva is
   
   
   type Clase_Animal is abstract tagged private ;
   type Animal is access Clase_Animal'Class; 
   --El atributo 'Class para que puedas usar sus heredadas
   --Como animal es clase abstracta le sobra el constructor
   --Constructores
   
   --Getter &
   function Get_Nombre (this: in Clase_Animal) return String ;
   
   --metodos
   procedure Hablar (this: in Clase_Animal) is abstract;
   
   --subclases
   type Clase_Leon is new Clase_Animal with private ; --herencia
   Function Create_Leon(Un_Nombre : String) return Animal;
   overriding procedure Hablar(this: in Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   Function Create_Jirafa(Un_Nombre : String) return Animal;
   overriding procedure Hablar(this: in Clase_Jirafa);
   
   type Clase_Aguila is new Clase_Animal with private;
   Function Create_Aguila(Un_Nombre : String) return Animal;
   overriding procedure Hablar(this: in Clase_Aguila);

private
   type Clase_Animal is  abstract tagged record
      --tagged pone etiqueta al record
      Nombre : Unbounded_String;   
   end record;
   type Clase_Jirafa is new Clase_Animal with Record
      null;
   end record;
   type Clase_Leon is new Clase_Animal with Record
      null;
   end record;
   type Clase_Aguila is new Clase_Animal with Record
      null;
   end record;
end Selva;
