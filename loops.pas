{Vladwoguer Bezerra, Novembro 2015}
program loops;

uses
        crt;
label 1;
var
        a, i :integer;
begin
        writeln('10 .. 100:');
        a := 10;
        while(a <=100)do {Imprime 10 at‚ 100}
                begin
                        writeln(a);
                        a := a + 10;
                end;
        writeln('1 .. 10');
        for i := 0 to 10 do {imprime de 1 at‚ 10}
                begin
                        writeln(i);
                end;
        writeln('10 .. 1');
        for i := 10 downto 1 do  {Imprime de 10 ate 1}
                begin
                        writeln(i);
                end;
        a :=0;
        writeln('Pares de 0 a 10');
        repeat        {Imprime os numeros pares de 0 a 10}
                writeln(a);
                a := a+2;
        until a = 12;

         writeln('10 .. 5');
          for i := 10 downto 1 do  {Imprime de 10 ate 5 o loop eh interrompido por um break}
                begin
                        writeln(i);
                        if (i=5) then
                                begin
                                        break;
                                end;
                end;

         writeln('10 .. 0 pulando 6');
          for i := 10 downto 0 do  {Imprime de 10 ate 0 pulando o 6}
                begin

                        if (i=6) then
                                begin
                                        continue;
                                end;
                        writeln(i);
                end;
          goto 1;    {Desvio incondicional}
          writeln('Nao imprime');
          1: writeln('Imprime');

        readkey;
end.