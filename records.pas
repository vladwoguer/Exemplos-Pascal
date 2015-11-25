{Vladwoguer Bezerra / Novembro 2015}
program records;
uses
        crt;
const
        TAM = 1;
type
        livro = record
                titulo : string;
                autor : string;
                isbn : string;
                end;
var
        livros : array[0..TAM] of livro;
        cont : integer;
begin
        cont := 0;
        while (cont <= TAM) do
                begin
                        Writeln('Titulo:');
                        readln(livros[cont].titulo);
                        Writeln('Autor:');
                        readln(livros[cont].autor);
                        Writeln('ISBN:');
                        readln(livros[cont].isbn);
                        cont := cont + 1;
                end;
        for cont := 0 to TAM do
                with livros[cont] do
                begin
                        Writeln('Titulo: ', titulo, 'Autor: ',autor);
                end;

        readkey;

end.