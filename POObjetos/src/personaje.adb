package body Personaje is
   function Create (Nombre : String) return Campeon is 
   Result : Campeon;
   begin
      Result := new Clase_Personaje;
      Result.Nombre := To_Unbounded_String(Nombre);
      Result.Nivel :=1;
      Result.Experiencia := 0;
      return Result;
   end;
   function Get_Nombre (This:Clase_Personaje) return String is
   begin
      return To_String(this.Nombre);
        
   end;
   
   function Get_Nivel (This:Clase_Personaje) return Niveles is
   begin
      return this.Nivel;
   end;
   
   function To_String (This:Clase_Personaje) return String is
   begin
      return "Soy el campeon " &
        To_String(this.Nombre) &
        "(Hp :" & this.Hp'image & ","
        & "Nivel : " & This.Nivel'image & ")";
   end;

   
end Personaje;
