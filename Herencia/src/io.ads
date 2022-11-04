package IO is
   
   --Variables globales del paquete
   Default_Strimg_Error_Message : String :=" Entrada vacia. Vuelve a ingresar";
   Default_Integer_Error_Message : String := "No ingreso un numero. Vuelva a introducirlo";

   function get_NotEmpty_Line (Promt :String := "";
                               Error_Message : String := Default_Strimg_Error_Message) 
                               return String ;

   --funcion para entrada de datos seguro
   function Try_Get_Integer 
     (Value : out Integer) 
      return Boolean ;
   
   function Get_Integer 
     (Promt :String := "";
      Error_Message : String := Default_Integer_Error_Message) 
      return Integer ;
end IO;
