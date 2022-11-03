package body Selva is


   Function Create_Leon(Un_Nombre : String) return Animal is
   Result : Animal := new Clase_Leon;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Leon;
   procedure Hablar(this: in Clase_Leon) is 
   begin
      Put_Line("ROOAAAAARR");
   end;
   
   Function Create_Jirafa(Un_Nombre : String) return Animal is
      Result : Animal := new Clase_Jirafa;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Jirafa;
   procedure Hablar(this: in Clase_Jirafa) is 
   begin
      Put_Line("Soy una jirafa y no emito sonidos");
   end;


   function Get_Nombre (this:Clase_Animal) return String is
   begin
      return To_String(this.Nombre);
   end;

end Selva;
