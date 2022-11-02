package Generic_Demo is
   generic type T is private; --Private=>  cualquier tipo
   procedure Generic_Swap (value1 :in out T;
                           Value2 : in out T);

end Generic_Demo;
