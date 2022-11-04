package body Figuras is

   
   
   
   --RECTANGULO
   function Create_Rectangulo (Lado1 : Integer, Lado2 : integer) return Ac_Figuras is
      Result : Ac_Figuras := new Rectangulo_Clase;
   begin
      Result.Base := Lado1;
      Result.Altura := Lado2; 
      
   end;
   overriding function Calcular_Area (This: in Rectangulo_Clase) return Float is
      Area : Float;
   begin
      Area := Float(this.Get_Base*this.Get_Altura);
      return 
   end;
   function Get_Base (this: Rectangulo_Clase) return Integer is
   begin
      return this.Base;
   end;
   function Get_Altura (this: Rectangulo_Clase) return Integer  is
   begin
      return this.Altura;
   end;
   
   --CIRUCULO
   function Create_Circulo (Radius : Integer) return Ac_Figuras is 
      Result : Ac_Figuras := new Circulo_Clase;
   begin
      Result.Radio := Radius;
      return Result;
   
   end;
   overriding function Calcular_Area (This: in Circulo_Clase) return Float is 
      Area:Float;
   begin
      Area := Float(3.14159 * this.Radio*this.Radio);
   end;
   function Get_Radio (this:Circulo_Clase) return Integer is 
   begin
      return this.Radio;
   end;
   

end Figuras;
