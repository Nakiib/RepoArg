package body Procedimientos is

   function Alfanumericos (x : String) return Boolean is
      caracter : Character;
      i : Integer;
      
   begin
      i := 0;
      for index in 0.. x'Length loop
  
         caracter := x(index);
            
         if Is_Alphanumeric(caracter) then
            i := i + 1;
         else
            return false;
         end if;
         
         
      end loop;
      return True;
   end;


end Procedimientos;
