package body Generic_Demo is

      procedure Generic_Swap (value1 :in out T;
                           Value2 : in out T) is
      aux:t;
   begin
      aux := value1;
      value1 := value2;
      Value2 := aux;
end Generic_Swap;  

end Generic_Demo;
