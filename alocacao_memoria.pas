{Vladwoguer Bezerra, Novembro 2015}
program usando_alocacao_memoria_para_tratar_textos;
uses
        crt;
var
       texto : ^string;


begin

        texto := getmem(300); {Pega 300 de memoria}
        if( not assigned(texto)) then
                writeln('Nao foi possivel alocar memoria')
        else begin
                texto^ := 'Agora podemos colocar aqui uma string de tamanho arbritario';
                reallocmem(texto, 400); {Aumenta pra 400}
                texto^ := concat(texto^, 'E aumentar seu tamanho');

                writeln(texto^);
         end;
         freemem(texto); {Libera memoria}
         readkey;
end.