package body Juego is

   function To_String (Value : In Jugador) return String is 
   begin
      return (To_String(Value.Nombre) & " " & To_String(Value.Profesion) & " (" & Value.Nivel'Image & " lvl" &  Value.Hp'Image & " hp)");
   end;
   
   function To_String (Value : In Profesiones) return String is
   
   begin
      return To_Upper(Value'Image(1 .. 1)) &To_Lower(Value'Image(2 .. Value'Image'Length));
   end;


end Juego;
