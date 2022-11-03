package body Procedimientos is

   function EsAlfanumerico (Cadena : String) return Boolean is
      type Tipo_Alfanumericos is array (Positive range <>) of String (1 .. 1);
      Alfanumericos : Tipo_Alfanumericos :=
        ("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D",
         "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
         "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f",
         "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
         "u", "v", "w", "x", "y", "z");
      Cont : Integer := 0;
   begin
      for Letra of Cadena loop

         for Elemento of Alfanumericos loop
            --  Put_Line(Letra'Image & " " & Elemento);
            if Letra'Image = Elemento (1)'Image then
               Cont := Cont + 1;
            end if;
         end loop;

      end loop;

      if Cont = Cadena'Length then
         return True;
      else
         return False;
      end if;
   end EsAlfanumerico;
end Procedimientos;
