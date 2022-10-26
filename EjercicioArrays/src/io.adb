with Ada.Text_IO, ada.Strings, ada.Strings.Fixed, ada.Integer_Text_IO;
use ada.Text_IO, ada.Strings, ada.Strings.Fixed, ada.Integer_Text_IO;
package body IO is

      function get_NotEmpty_Line 
        (ErrorMessage : String := "Entrada vacia. Vuelve a ingresar") return String is
      begin
         loop
            declare   
               
               Entrada : String := Get_Line; --Reserva cantidad para Entrada
            begin
              
            Trim(Entrada, Both); --saca espacios en blanco. 
                                 --intentamos solucionar lo de espacios en blanco
                                 
            declare
               Entrada_sin_espacios : String := Trim(Entrada, Both);
               
            begin
               if Entrada_sin_espacios'Length > 0 then 
                  return Entrada_sin_espacios; 
               end if;
   
            end;
            
         end;
         Put_Line(ErrorMessage);
              
         end loop;
         
      end get_NotEmpty_Line;
      

      function Try_Get_Integer 
     (Value : out Integer) 
      return Boolean  is
   begin
      --Get(Value); -- se queda pillado en el bucle
      Value := Integer'Value(Get_Line);
      return True;
      
      exception
      when others => return False;
           
   end Try_Get_Integer;
   
      
   function Get_Integer 
     (ErrorMessage : String := "No ingreso un numero. Vuelva a introducirlo") 
      return Integer is  
   begin      
      loop         
         declare            
            Edad: Integer ;         
         begin            
            loop
   
               if (Try_Get_Integer(Edad)) then               
                  Put_Line("Edad " & Edad'Image);               
                  return Edad;       
                  
               end if; 
               Put_Line("No ingresaste un numero");            
               
            end loop;
       
         end;      
      end loop;   
   end Get_Integer;
   
   --  function Get_Integer
   --    (ErrorMessage: String := "No Ingreso un Numero.Vuelva a intentar") return Integer
   --  is
   --     EntradaCorrecta : Boolean := false;
   --     Value : Integer;
   --  begin
   --     while not(EntradaCorrecta) loop
   --        EntradaCorrecta := Try_Get_Integer(Value);
   --        Put_Line(ErrorMessage);
   --     end loop;
   --     return Value;
   --  end Get_Integer;
   
end IO;
