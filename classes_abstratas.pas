// Exemplo classe abstrata Vladwoguer Bezerra Dezembro 2015
{$mode objfpc}
{$m+}
program classe_abstrata;
type
        Abstrata =  class abstract
                procedure executa; virtual; abstract;
        end;

        Classe = class(Abstrata)
                procedure executa;
        end;

        procedure Classe.executa;
        begin
                writeln('Executa');

        end;
var
        teste : Classe;

begin
        teste := Classe.Create;
        teste.executa;
        teste.Destroy;
        readln;
end.
