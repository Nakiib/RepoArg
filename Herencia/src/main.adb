with Selva, ada.Text_IO, IO, ada.Numerics.Float_Random;
use Selva, ada.Text_IO, IO, ada.Numerics.Float_Random;
procedure Main is
   --  Un_Animal : Animal;

   --Declaro un vector de animales
   type Array_Animales is array (Positive range <>) of Animal;
   cantidad : Integer;
begin
      --  Insert code here.
   --  Leon := Create("Mufasa");
   --  Leon := new Clase_Leon("Mufasa");

   --  Un_Animal := Create_Leon("Alex");
   --  --  Un_Animal := Create_Jirafa("Jirafator");
   --  Put_Line("Hola soy "& Un_Animal.Get_Nombre);
   --  Un_Animal.Hablar;
   Put_Line("Introduzca el numero de animales");
   cantidad:=Get_Integer;
   declare
      Animales : Array_Animales(1 .. cantidad) := (others => null);
      G : Generator;
      Azar : Uniformly_Distributed;
   begin
      Reset(G);
      for index in Animales'Range loop
         Azar := Random(G);
         if Azar< 0.3 then
            Animales(index):=Create_Leon("Mufasa");
         elsif Azar> 0.7 then
            Animales(index):=Create_Jirafa("Jiraf");
         else
            Animales(index):=Create_Aguila("EL Real");
         end if;
      end loop;
      Put_Line("Los ruidos de la selva ...");
      for Criatura of Animales loop
         Criatura.Hablar;
      end loop;
   end;

   null;
end Main;
