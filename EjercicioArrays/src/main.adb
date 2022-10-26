--  Crear un tipo para un registro de personas que tengan
--Nombre Apellido Edad
--Crear un tipo para un array unconstrained de personas
--  Preguntar al usuario cuantas personas ingresar
--  Leer las personas una a una de forma segura y agregarla al array
--Podemos utilizar el paquete de lectura segura de datos que hicimos
--  Mostrar la lista de forma bonitaTienen 25 mintos!Subirlo a Git
with ada.Strings.Unbounded, ada.Text_IO, IO, ada.Integer_Text_IO;
use ada.Strings.Unbounded, ada.Text_IO, IO, ada.Integer_Text_IO;

procedure Main is
   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad : Integer;
   end record;
   type Array_Personas is array (Positive range <>) of Persona;
   Num_Personas : Integer;
begin
   --  Insert code here.
   Put_Line("Introduzca la cantidad de personas que quiere para el array:");
   Num_Personas := Get_Integer;
   declare
      Personitas : Array_Personas(1 .. Num_Personas);
      --  Nombre : Unbounded_String;
      --  Apellido : Unbounded_String;
      --  Edad : Integer;
   begin
      for index in Personitas'Range loop
         Put_Line("Introduzca el nombre de la persona" & index'Image);
         --  Personitas(index).Nombre := get_NotEmpty_Line; --recibe un String no un unbounded
           Personitas(index).Nombre := To_Unbounded_String(Get_Line);
         Put_Line("Introduzca el apellido de la persona" & index'Image);
         --  Personitas(index).Apellido := get_NotEmpty_Line;
         Personitas(index).Apellido := To_Unbounded_String(Get_Line);
         Put_Line("Introduzca la Edad de la persona" & index'Image);
         Personitas(index).Edad := Get_Integer;

         --  Personitas(index) :=(Nombre, Apellido, Edad);
      end loop;

      for index in Personitas'Range loop
         Put_Line("");
         Put(to_String(Personitas(index).Nombre));
         Put(To_String(Personitas(index).Apellido));
         Put(Personitas(index).Edad'Image);
end loop;

end;
end Main;
