{Vladwoguer Bezerra, Novembro 2015}
program funcoes_procedures;
uses
        crt;

function bem_vindo(nome:string):string; {Funcao bem vindo recebe um nome e retorna uma string contendo 'Bem vindo nome'}
begin
        bem_vindo := concat('Bem vindo ', nome);
end;

procedure boas_vindas;
var
        nome:string;
begin
        writeln('Digite seu nome');
        readln(nome);
        writeln(bem_vindo(nome));
end;

begin
        boas_vindas;
        readkey;
end.


