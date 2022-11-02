with IO, ada.Text_IO; 
use IO, ada.Text_IO;
generic
   Type Enum_Type is (<>); -- es un tipo discreto 4ex numerico
package IO_Enums is
   --Paquete generico
   Default_Error_Message :  String :=  "Entrada  invalida";
   
   function Try_Get_Enum (Enum : out Enum_Type) return boolean ;
   function Get_Enum (Promt : String := "";
                      Error_Message :String := Default_Error_Message) 
                      return Enum_Type; 

end IO_Enums; 
