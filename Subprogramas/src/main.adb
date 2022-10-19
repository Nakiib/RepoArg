with ada.Text_IO, ada.Float_Text_IO;
use ada.Text_IO, ada.Float_Text_IO;
procedure Main is

   --declaro funciones en el bloque declarativo
   function Sumar (N1 : Integer; N2 : Integer) return Integer is
   begin
      return N1 + N2;
   end;


   function Exponente (Base : Integer;  Expoente : Integer := 2) return Float is
      V_Resultado : Float;
   begin
      if Expoente = 0 then
         return 1.0;
      end if;

      if Expoente = 1 then
         return Float(Base);
      end if;

      V_Resultado := Float(Base);
      for index in 2 .. Expoente loop
          V_Resultado := V_Resultado * float(Base);
      end loop;

      if Expoente<0 then
         return  1.0 / V_Resultado;

      end if;
      return V_Resultado;
   end Exponente;

   --nuevo procedimiento xk hay muchos put_line
   procedure Show_float(Value : Float) is
      use ada.Float_Text_IO; --se puede poner el use en bloque declarativo
   begin
      put(Value, Exp => 0, fore => 0);
      Put_Line("");

   end Show_float;

   procedure Put_Line (Value : Float) renames Show_float; --ada permite renombrar metodos(aunque sean propios
   --  de las librerias de ada)

   --metodos que devuelven valores *out para salida *in parametro de entrada
   procedure Swap_Integers (Param1 : in out integer; Param2 : in out integer ) is
      Aux : integer;
   begin
      Aux := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end Swap_Integers;


   --Metodo que devuelve dos valores *modificador in opcional
   function Resta (Izquierda : in integer; Derecha : in Integer; Negativo :
                    out Boolean) return Integer is Resultado : Integer;
   begin
      Resultado := Izquierda - Derecha;
      Negativo := Resultado<0; -- variable explicativa
      return Resultado;
   end Resta;

   function Resta (Izquierda : in integer; Derecha : in Integer) return Integer is
   begin
      return Izquierda - Derecha;
   end Resta;

   --  function MayorMenor (Param1 : integer; Param2 : Integer) return Boolean is
   --     Bol : Boolean;
   --  begin
   --     if Param1 > Param2 then
   --        Bol := True;
   --     else
   --        Bol := False;
   --     end if;
   --
   --     return Bol;
   --  end MayorMenor;
   procedure Mayor_Menor(Parametro1: in Integer; --in solo entrada no se modifica
                         Parametro2: in Integer;
                         Mayor: out Integer; -- out se modifica
                         Menor:out Integer)
   is
   begin
      Mayor := (if (Parametro1>Parametro2) then Parametro1 else Parametro2);
      Menor := (if (Parametro1<Parametro2) then Parametro1 else Parametro2);
   end Mayor_Menor;


   --  V_Primer_Valor : Integer;
   --  V_Segundo_valor : Integer;

   --  V_Resultado : Integer;
begin
   --  Como invocar una funcion.
   --  V_Primer_Valor := 6;
   --  V_Segundo_valor := 9;
   --  V_Resultado := Sumar(V_Primer_Valor, V_Segundo_valor);
   --  Put_Line("El resultado de sumar" & V_Primer_Valor'Image & " y" & V_Segundo_valor'Image & " es" &V_Resultado'Image);

   --Invocar una funcion con parametros con nombre (named parameters)
   --  V_Primer_Valor := 16;
   --  V_Segundo_valor := 39;
   --  V_Resultado := Sumar(N2 => V_Primer_Valor,
   --                       N1=> V_Segundo_valor);
   --  Put_Line("El resultado de sumar" & V_Primer_Valor'Image & " y" & V_Segundo_valor'Image & " es" &V_Resultado'Image);


   --nueva funcion
--     declare
--        Res : Float;
--
--     begin
--
--        Res:=Exponente(2);
--        --  Put (Res , 2, 0, Exp => 0);
--        --Show_float(Res); --usamos el procedimiento creado para mostrar resultado
--        Put_Line(Res);
--
--        Res := Exponente(2,3);
--        --  Put (Res , 2, 0, 0);
--        --Show_float(Res);
--        Put_Line(Res);
--  end;

   --usamos el swap_integers
   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --  begin
   --     Put_Line("Antes "& A'Image & " " & B'Image );
   --     Swap_Integers(A, B);
   --     Put_Line("Despues "& A'Image & " " & B'Image );
   --
   --  end;

   --  declare
   --     A : Integer := 20;
   --     B: Integer := 10;
   --     Es_Negativo : Boolean;
   --     Resultado : Integer;
   --  begin
   --     --REsta
   --     Put(Resta(20,30)'Image);
   --     --invocamos sobrecarga
   --     Resultado := Resta(A,B, Es_Negativo);
   --     Put_Line(" Resultado "& Resultado'Image & (if Es_Negativo then
   --                 " Es Negativo " else " Es positivo"));
   --
   --
   --
   --  end;

   --Ejercicio
   --Realizar el procedimiento MayorMenor que recibe 2 numeros y devuelva 2 variables
   -- una con la mayor y otro con la menor. 4 parametros
   declare
      A : Integer := 20;
      B: Integer := 10;
   begin

      Mayor_Menor(Parametro1 => A,
                  Parametro2 => B,
                  Mayor      => B,
                  Menor      => A);
      Put_Line("Mayor "& B'Image);
      Put_Line("Menor "& A'Image);

end;

end Main;
