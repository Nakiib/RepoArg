package body IO_Enums is
   --  Paquete generico
   function Try_Get_Enum (Enum : out Enum_Type) return boolean 
   is 
   begin
      Enum := Enum_Type'Value(get_NotEmpty_Line);
      return True;
   exception
      when others => return False;
         
   end;
   
   function Get_Enum (Promt : String := "";
                      Error_Message :String := Default_Error_Message) 
                      return Enum_Type is
      Result : Enum_Type;
      Entrada_Correcta : Boolean;
   begin
       if Promt'Length >0 then
         Put_Line(Promt);
      end if;

      for P in Enum_Type loop
         --  Put_Line(To_String(P));
         Put_Line(P'Image);
      end loop;

      loop
         Entrada_Correcta := Try_Get_Enum(Enum => Result);
         if Entrada_Correcta then
            return Result;
         end if;
         Put_Line(Error_Message);
      end loop;


   end;
   

end IO_Enums;
