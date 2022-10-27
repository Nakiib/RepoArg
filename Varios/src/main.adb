with ada.Text_IO, ada.Strings.Unbounded;
use ada.Text_IO, ada.Strings.Unbounded;
procedure Main is

begin
--     --  Insert code here.
--     declare
--        --array slices
--        type Nota is range 0 .. 10 with Default_Value => 7;
--        type A_Numeros  is array (Positive range <>) of Integer with Default_Component_Value => 10;
--        --  type Nota_Descriptiva is ('Excelente'; 'basico');
--        --  Muchos_Numeros : A_Numeros := (1, 3, 4, 5, 6, 7, 1, 3, 5); --incializar array
--        Muchos_Numeros : A_Numeros (1 .. 15):= (1 => 2,  2|3|4=>7, 5=><> ,others => 5);
--        Array_Vacio : A_Numeros(2 .. 1);
--        Pedacito : A_Numeros := Muchos_Numeros(1 .. 4); --Array Slices (SUBSTRING EN JAVA)
--        Muchos_Mas_Numeros : A_Numeros := Muchos_Numeros & Pedacito;
--        Mi_Nota : Nota;
--     begin
--        for I in Muchos_Mas_Numeros'Range loop
--           Put_Line("Valor:" & Muchos_Mas_Numeros(I)'Image);
--
--        end loop;
--        Put_Line("Pedacito de mi vida");
--        for I in Pedacito'Range loop
--           Put_Line("Valor:" & Pedacito(I)'Image);
--
--  end loop;
--        Put_Line(Mi_Nota'Image);
--        Put_Line("El tamaño del array vacio es " & Array_Vacio'Length'Image);
--        Put_Line("El tamaño del array mas grande es " & Muchos_Mas_Numeros'Length'Image);
--
--
--  end;
--
--     null;
   --  declare
   --     type Componente_Adn is (A, G, C, T);
   --     --  (Adenina, Guanina. Citosita, Timina);
   --     --  Componente_Adn_As_String : array (Componente_Adn) of Unbounded_String
   --     --    := (To_Unbounded_String("Adenina"),
   --     --        To_Unbounded_String("Guanina"),
   --     --        To_Unbounded_String("Citosita"),
   --     --        To_Unbounded_String("Timina"));
   --     --NO NOS GUSTA LA FORMA DE ARRIBA
   --
   --     function To_String (Enum : Componente_Adn) return String is
   --     begin
   --        return
   --          (case Enum is
   --              when A => "Adeninda",
   --              when G => "Guanina",
   --              when C =>"Citosina",
   --              when T => "Timina");
   --           end To_String;
   --
   --
   --
   --     Componente : Componente_Adn := A;
   --  begin
   --     Put_Line(To_String(Componente));
--  end;

   declare
      --  type Dia is range 1 ..31;
      --  type Mes is range 1 .. 12;
      type Fecha is record
   x

      Nacimiento : Fecha := (20,9,1980); -- esto es una inicilizacion posicional
      Nacimiento : Fecha := (Dia => 20, Mes => 9, Año => 1980);
   begin
      --Esto me permite cambiarle po nombres como java
      Nacimiento.Dia := 20;

end;
end Main;
