program arquivp_texto;
uses
        crt;
const
        caminho = 'C:\Users\Vladwoguer\workspace\Pascal\';
type
        arq_texto = text;
var
        nome : string;
        arquivo : arq_texto;
        entrada : string;
begin
        writeln('Qual o nome do arquivo que deseja criar?');
        readln(nome);
        nome := concat(caminho, nome);
        Assign(arquivo, nome);
        rewrite(arquivo);
        writeln('O que deseja escrever ?');
        readln(entrada);
        writeln(arquivo, entrada);
        close(arquivo);
        append(arquivo);
        writeln('Seu nome ?');
        readln(entrada);
        writeln(arquivo, entrada);
        close(arquivo);

        readkey;


end.