package body Movil is

   
   function Get_PosicionX (this:Clase_Movil) return Posiciones is 
   begin
      return this.PosicionX;
   end;
   function Get_PosicionY (this:Clase_Movil) return Posiciones is 
   begin
      return this.PosicionY;
   end;
   function Get_VelocidadX (this:Clase_Movil) return Velocidades is 
   begin
      return this.VelocidadX;
   end;
   function Get_VelocidadY (this:Clase_Movil) return Velocidades is 
   begin
      return this.VelocidadY;
   end;
   function To_Sring (this:Clase_Movil) return String is
   begin
      return ("Posciones ("& Get_PosicionX'Image & "," & Get_PosicionY'Image & ") Velocidad (" & Get_VelocidadX'Image & "," & Get_VelocidadY'Image);
   end;

end Movil;
