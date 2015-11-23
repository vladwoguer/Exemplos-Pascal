(* Vladwoguer Bezerra, Novembro 2015*)
program aritmetica_apontadores;
uses
        crt;
var
        numero : integer; {Variavel inteira}
        iptr : ^integer; {Apontador pra um inteiro}
        iptr_outro : ^integer;
        endereco : ^word; {Variavel que armazena endereco do apontador}
        array_inteiros : array[1..10] of integer = (1,2,3,4,5,6,7,8,9,10);

begin
        numero := 100;  {incializa a variavel com valor 100}
        iptr := @numero; {O apontador agora aponta pra o endere‡o de memoria de numero}
        endereco := addr(iptr);
        writeln('A variavel numero esta no endereco de memoria ', endereco^);
        Inc(iptr); {Incrimenta o apontador em nbytes onde n eh o tamanho da variavel que o apontador aponta}
        writeln('O apontador agora aponta para o endereco de memoria ', endereco^);
        dec(iptr); {Decrementa o apontador para o valor original}

        iptr := @array_inteiros[1]; {Apontador iptr agora aponta pra o incio do array}
        iptr_outro := @array_inteiros[10]; {Apontador iptr_outro aponta pra o fim do array}
        {Vamos agora percorrer o array com apondador pelas posicoes de memoria}
        while (iptr <= iptr_outro) do {Verifica se a posicao de memoria de iptr eh menor ou igual a de iptr_outro}
                begin
                   writeln(iptr^);
                   Inc(iptr);
                end;
        readkey;

end.