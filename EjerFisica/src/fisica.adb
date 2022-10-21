package body Fisica is

   function Calcular_Velocidad (Distancia , Velocidad, aceleracion, Tiempo : float) return Float is
      Velocidad_final : Float;
      begin
      Velocidad_final := (Velocidad +  0.5*aceleracion + Tiempo * Tiempo);
      return Velocidad_final;
   end Calcular_Velocidad;
   

end Fisica;
