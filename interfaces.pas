// Exemplo interfaces Vladwoguer Bezerra Dezembro 2015
{$mode objfpc}
{$m+}
program interfaces;
type
        Executa = interface
                procedure executa;
        end;

        AtorTipoA = class (TInterfacedObject, Executa)
                procedure executa;
        end;
        AtorTipoB = class (TInterfacedObject, Executa)
                procedure executa;
        end;

        procedure AtorTipoA.executa;
        begin
                writeln('A');
        end;

        procedure AtorTipoB.executa;
        begin
                writeln('B');
        end;


var
        a : AtorTipoA;
        b : AtorTipoB;
        c : Executa;
begin
        a := AtorTipoA.Create;
        b := AtorTipoB.Create;
        a.executa;
        b.executa;

        c := a;
        c.executa;
        c := b;
        b.executa;

        readln;
end.