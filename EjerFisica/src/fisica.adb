package body Fisica is

   function Calcular_Velocidad (Distancia_total :Distnacia; Velocidad_inicial: Velocidad; aceleracion_t : Aceleracion ; Tiempo_t: tiempo) return Float is
      Velocidad_final : Float;
      begin
      Velocidad_final := (Float(Velocidad_inicial) +  Float(0.5*aceleracion_t) + Float(Tiempo_t * Tiempo_t));
      return Velocidad_final;
   end Calcular_Velocidad;
   

end Fisica;
