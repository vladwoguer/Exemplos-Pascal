{Vladwoguer Bezerra, Novembro 2015}
program condicionais;
uses
        crt;
type
        nota = 0..10;
var
        a,b :integer;
        notaAluno :nota;
begin
    writeln('Insira dois numeros');
    write('a:');
    read(a);
    write('b:');
    read(b);
    if(a > b)then
        begin
                writeln(a, ' eh maior que ',b);
        end{Note que quando tem else o statment do if nao tem ponto e virgula }
    else
        begin
                writeln(b, ' eh maior que ',a);
        end;
    writeln('Digite uma nota de 0 a 10(inteiro)');
    readln(notaAluno);
    case(notaAluno) of
        10,9 : writeln('Parabens');
        6..8 : writeln('Bom');
        else  writeln('Precisa se aplicar mais');
    end;

    readkey;



end.
