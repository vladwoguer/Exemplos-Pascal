{Exemplo sobre apontadores em Pascal
Vladwoguer Bezerra, Fevereiro de 2015}
program apontadores;
uses crt; {apenas pra readkey para nao fechar o programa}
type
        ponteiro = ^elemento; {Criamos aqui um tipo apontador para elemento}

        elemento = record       {Elemento eh um registro que contem a informacao e um apontador para o proximo elemento}
                info : integer;       {dado}
                proximo : ponteiro;    {aponta pro proximo}
                end;

var comeco : elemento;
    inicio : ponteiro;
    ultimo : ponteiro;
    novoElemento : ponteiro;
    outros : integer;
    i : integer;
begin
    writeln('Bem vindo ao exemplo sobre apontadores, vamos construir uma lista encadeada');
    writeln('Eh uma lista de inteiros, qual o primeiro valor que deseja inserir ?');
    readln(comeco.info); {Le o primeiro inteiro e coloca no registro}
    inicio := @comeco;  {inicio agora deixa der ser nil e passa  a apontar pro endereco do primeiro elemento}
    ultimo := inicio;   {atualiza o ultimo}

    writeln('Quantos mais ainda deseja inserir ?');
    readln(outros);
    for i := 1 to outros do
        begin
            new(novoElemento); {Aloca um novo endereco para proximo}
            writeln('Qual valor ?');
            readln(novoElemento^.info);   {obs:  o ^ depois do nome eh a referencia ao endereco}
            ultimo^.proximo:= novoElemento; {o antigo ultimo aponta para o proximo}
            ultimo := novoElemento;  {atualiza o ultimo}
        end;

    writeln('Agora vamos imprimir a lista');
    novoElemento := inicio; {Vamos usar novo elemento pra percorrer a lista}

    repeat
        write(novoElemento^.info,' ->');
        novoElemento := novoElemento^.proximo; {percorrendo a lista}
    until (novoElemento =  nil);  {quando o proximo eh nil para}

    readkey; {Somente pro console nao fechar}







end.
