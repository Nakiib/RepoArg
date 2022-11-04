with Figuras, , ada.Text_IO, IO, ada.Numerics.Float_Random;
use Figuras , ada.Text_IO, IO, ada.Numerics.Float_Random;
procedure Main is
   type Array_Figuras is array (Positive range <>) of Ac_Figuras;
   Cantidad:Integer:=10;
   figuras: Array_Figuras(1 .. Cantidad) := (others =>null);
   G :Generator;
   Azar : Uniformly_Distributed;
   Azar1 : Uniformly_Distributed;

begin
   --  Insert code here.
   Reset(G);
   for index in Figuras'range loop
      Azar:=Random(G);
      Azar1:=Random(G)
      Figuras(index):= Create_Circulo(Azar, Azar1);
end loop;

   null;
end Main;
--Figuras!
-- Crear un paquete
--Clase abstracta figurta, metodo abstracto area
--Heredan el cuadrado y el circulo
--Rectangulo base y altura
-- cirulo tiene radio
-- Importante los getters y los constructores
-- las subclases implementan metodo area
--En el main un array de 10 figuras en forma aleatoria
--tenga ciruclos y Rectangulo con tamaño aleatorio
--mostrar la sumatoria del area de todas las figuras despues de cargar el arrray

