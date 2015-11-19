program operadores;
uses
        crt;
var
        a,b : integer;
        c,d : boolean;
begin
    writeln('Insira dois inteiros');
    write('a:');
    readln(a);
    write('b:');
    readln(b);

    writeln('Soma= ', a + b);
    writeln('Subtracao= ', a - b);
    writeln('Divisao inteira= ', a div b);
    writeln('Resto= ', a mod b);
    writeln('Igualdade= ', a = b);
    writeln('Diferen‡a= ', a <> b);
    writeln('Maior que= ', a > b);
    writeln('Menor que= ', a < b);
    writeln('Maior ou igual que= ', a >= b);
    writeln('Menor ou igual que= ', a <= b);
    writeln('And binario= ', a and b);
    writeln('Or binario= ', a or b);
    writeln('Xor binario= ', a xor b);
    writeln('Shift left de 3 casas para a= ', a<<3);
    writeln('Shift right de 3 casas para a= ', a>>3);
    writeln('0001 base 2 and a= ', %0001 and a);
    writeln('22 base 8 and a= ', &0001 and a);
    writeln('FA base 16 and a= ', $FA and a);

    writeln('Insira dois booleanos(0 ou 1)');
    write('c:');
    readln(a);
    writeln('');
    write('d:');
    readln(b);
    c := a = 0;
    d := b = 0;
    writeln('And= ', c and d);
    writeln('Or= ', c or d);
    writeln('Not c= ', not c);
    writeln('Xor= ', c xor d);




    readkey;

end.