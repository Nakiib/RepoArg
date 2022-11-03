package body Procedimientos is

   function Division (Parametro1: Integer; Parametro2 : Integer) return Float is 
      Result : Float;
   begin
      Result := Float(Parametro1/Parametro2);
      
      return Result;
   exception
      when others =>
         Put_Line("No se puede realizar esta division");
         
   end;
   
   function Conversor_String_To_Int (parm : String) return Integer is
      Resultado : Integer;
   begin
      Resultado := Integer'Value(parm);
   exception
      when others => 
         Put_Line("Error de conversion, introduzca un numero valido");
   end;
   
end Procedimientos;
