package body Clase_Prueba is

   function create (Names : Unbounded_String) return Ac_Prueba is 
      Result : Ac_Prueba;
   begin
      return Result.Nombre :=Names;
   end;
   
end Clase_Prueba;
