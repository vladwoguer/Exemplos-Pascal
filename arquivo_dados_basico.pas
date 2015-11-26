{Vladwoguer Bezerra, Novembro 2015}
program arquivos;
uses
        crt;
const
        caminho = 'C:\Users\Vladwoguer\workspace\Pascal\dados.dat';
type
        dados_aluno = record
                        nome : string;
                        idade : integer;
                        end;
        dados = file of  dados_aluno;
var
        arquivo : dados;
        atual : dados_aluno;
begin
        {Cria o arquivo e salva dois alunos}
        assign(arquivo,  caminho);
        Rewrite(arquivo, Sizeof(atual));

        atual.nome := 'Aluno 1';
        atual.idade := 28;
        Write(arquivo, atual);

        atual.nome := 'Aluno 2';
        atual.idade := 29;
        Write(arquivo, atual);

        Close(arquivo);



        {Le o arquivo}
        reset(arquivo);
        if(IoResult=0)then
        begin
               while not eof(arquivo) do
                begin
                        read(arquivo, atual);
                        writeln('Nome: ', atual.nome);
                        writeln('Idade: ', atual.idade);
                end;
        end
        else
                writeln('Arquivo nao encontrado');
        readkey;
        close(arquivo);



end.

