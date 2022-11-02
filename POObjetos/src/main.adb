with Personaje, ada.Strings.Unbounded, ada.Text_IO;
use Personaje, ada.Strings.Unbounded, ada.Text_IO;
--1. Agregar un paquete nuevo para la clase (Para cada Clase un Paquete)
--2. Generar la clase como tipo tagged private
--             type <Clase_NNN> is tagged private
--      Esto se hace para que todos los atributos sean privados y respetar el encapsulamiento
--3. Generar una seccion private en el ads paquete
--                tyoe clase_MMM is tagged record
--                end record;
--         tagged record = class
--4. Generar un access(REferencia) para la clase abajo del tagged private
--                type NNN is access Ckase_NNN
--      Esto es para manejar los objetos como referencias al igual que java
--5. Generar un constructor (una funcion que devuelva una referencia a un objeto)
--    Le podemos poner el nombre que deseemos, sugrencia : Create
--                 function create() returns NNN;
--    5.1. Implementar el constructor en el cuerpo del paquete ADB
--6 Generar Getters y Setters
--         function Get_<NombreAtributo>(This:Clase_NNN) returns ...;
procedure Main is
   Khalix : Campeon;

begin
   --  Insert code here.
   --  Khalix := new Clase_Personaje;
   --  Khalix.Nombre:= To_Unbounded_String("Khalix");
   Khalix := Create("Khalix");
   --  Khalix.Nivel := 5;
   --  Khalix.Experiencia := 0;
   Put_Line(Khalix.To_String);
   Put_Line("Nivel "& Khalix.Get_Nivel'Image);
   Put_Line("Nombre "& Khalix.Get_Nombre);


end Main;
