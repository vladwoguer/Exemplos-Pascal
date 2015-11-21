{Vladwoguer Bezerra, Novembro 2015}
program passagem_parametros_por_valor_e_referencia;
uses
        crt;
var
        a_valor, a_referencia : integer;
procedure incremento(val1:integer;var val2:integer);
begin
       val1:=val1+1;
       val2:=val2+1;
end;

begin
        a_valor :=1;
        a_referencia :=1;
        incremento(a_valor, a_referencia);
        writeln(a_valor);   {Imprime 1}
        writeln(a_referencia);  {Imprime 2}
        readkey;
end.