package IO is

   function get_NotEmpty_Line (ErrorMessage : String := "Entrada vacia. Vuelve a ingresar") 
                               return String ;

   --funcion para entrada de datos seguro
   function Try_Get_Integer 
     (Value : out Integer) 
      return Boolean ;
   
   function Get_Integer 
     (ErrorMessage : String := "No ingreso un numero. Vuelva a introducirlo") 
      return Integer ;
end IO;
