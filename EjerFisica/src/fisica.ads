package Fisica is
   type Distnacia is new Float;
   type Velocidad is new FLoat;
   Type Aceleracion is new Velocidad;
   type tiempo is new Float;
   
   function Calcular_Velocidad (Distancia_total :Distnacia; Velocidad_inicial: Velocidad; aceleracion_t : Aceleracion ; Tiempo_t: tiempo) return Float;

end Fisica;
