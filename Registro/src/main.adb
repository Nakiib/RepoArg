with ada.Strings.Unbounded, ada,Text_IO;
use Ada.Strings.Unbounded, ada,Text_IO;

procedure Main is
   type Edad is range 0 .. 150;
--Crear variables para aceptar datos
   --  Nombre : Unbounded_String;
   --  Apellido : Unbounded_String;
   --  Edad_Persona : Edad;

   --Voy a definir un nnuevo de tipo dde dato que es la clase en POO
   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad_Persona : Edad;
   end record;

   Una_Persona : Persona;

begin
   Put_Line("Introduzca el nombre: ");
   --  Nombre:= To_Unbounded_String(Get_Line);
   Una_Persona.Nombre:= To_Unbounded_String(Get_Line);

   Put_Line("Introduzca el Apellido: ");
   --Apellido:= To_Unbounded_String(Get_Line);
   Una_Persona.apellido := To_Unbounded_String(Get_Line);

   Put_Line("Introduzca La Edad: ");
   --  Edad_Persona:= Edad(Integer'Value(Get_Line)); -- mejorable
   Una_Persona.Edad_Persona := Edad(Integer'Value(Get_Line));
   Put_Line("Hola "& To_String(Una_Persona.Nombre) & " " & To_String(Una_Persona.Apellido) & " de "& Una_Persona.Edad_Persona'Image);
   --  null;
end Main;
