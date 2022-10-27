with io, ada.Float_Text_IO, Juego, ada.Text_IO, ada.Strings.Unbounded;
use IO, ada.Float_Text_IO, Juego, ada.Text_IO, ada.Strings.Unbounded;
procedure Main is

   function Try_Get_Profesion (Profesion : out Profesiones) return Boolean is
   begin
      Profesion := Profesiones'Value(Get_NotEmpty_Line);
      return true;
   exception
      when others => return False;
   end Try_Get_Profesion;

   function Get_Profesion (Promt : String := "";
                           Error_Message : String := "Entrada de profesion invalida"
                          ) return Profesiones is
      Entrada_Correcta : Boolean;
      Profesion : Profesiones;
   begin
      if Promt'Length >0 then
         Put_Line(Promt);
      end if;

      for P in Profesiones loop
         Put_Line(To_String(P));
      end loop;

      loop
         Entrada_Correcta := Try_Get_Profesion(Profesion);
         if Entrada_Correcta then
            return Profesion;
         end if;
         Put_Line(Error_Message);
      end loop;

   end Get_Profesion;

begin
   --  Insert code here.
   --Put_Line("¿Cuantos Jugadores son? "); --Vamos a hacerlo con el Prompt *Una variable se ha creado en la funcion de getInteger
   declare
   Lista_Jugadores : Jugadores (1 .. Get_Integer(Promt => "¿Cuantos jugadores hay?"));
   begin
      for index in Lista_Jugadores'Range loop

         declare
            Nombre_Jugador : String := Get_NotEmpty_Line("Como se llama el Jugador " & index'Image);
            Campeon : Jugador := (Nombre => To_Unbounded_String(Nombre_Jugador), --puedes quitar el prompt
                                  Profesion => Get_Profesion(Promt => "Intrduzca su profesion: "),
                                  others => <>);
         begin
            Lista_Jugadores (index):=  Campeon;
         end;
      end loop;

      for Champ of Lista_Jugadores loop --of es un for each
         Put_Line(To_String(Champ));
      end loop;
   end;

   null;
end Main;
