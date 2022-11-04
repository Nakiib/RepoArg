package Figuras is
   
   type tipo is float;
   type Figuras_Clase is abstract tagged private;
   --puntero
   type Ac_Figuras is access Figuras_Clase'Class;
   --metodo abstracto
   function Calcular_Area(This: Figuras_Clase) is abstract;
   
   --subclases 
   type Rectangulo_Clase is new Figuras_Clase with private;
   --constructor
   function Create_Rectangulo (Lado1 : Float, Lado2 : Float) return Ac_Figuras;
   --metodo
   overriding function Calcular_Area (This: in Rectangulo_Clase) return Float;
   function Get_Base (this: Rectangulo_Clase) return Float ;
   function Get_Altura (this: Rectangulo_Clase) return Float ;
   
   type Circulo_Clase is new Figuras_Clase with private;
   --constructor
   function Create_Circulo (Radius : Float) return Ac_Figuras;
   overriding function Calcular_Area (This: in Circulo_Clase) return Float;
   function Get_Radio (this:Circulo_Clase) return Float ;
   
   
   
private
   type Figuras_Clase is abstract tagged record 
   end record;
   type Rectangulo_Clase is new Figuras_Clase with record
      Base : Float;
      Altura : Float;
   end record;
   type Circulo_Clase is new Figuras_Clase with record
      Radio : Float;
   end record;
   
   

end Figuras;
