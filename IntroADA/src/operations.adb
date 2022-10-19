package body Operations is
   Last_Increment : Integer :=1;
   function Increment_by (I :Integer; Incr : Integer:=0) return integer is
      begin
      if Incr /= 0 then
         Last_Increment:= Incr;
      end if;
      return I + Last_Increment;
      
   end Increment_by;
   
   function Get_increment_value  return Integer is
   begin
      return Last_Increment;
   end Get_increment_value;
   
   

end Operations;
