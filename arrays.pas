{Vladwoguer Bezerra, Novembro 2015}
program arrays;
uses
        crt;
type
        cor = (vermelho, azul, branco, verde, prata, dourado, ciano);
        array_inteiros = array[0..10] of integer; {Indices de 0 a 10}
        array_temperatura = array[-10..20] of -373..5000; {Indices de -10 a 20, note que indices negativos sao suportados}
        array_boolean = array[cor] of boolean;{Note que usamos um enumeration como indice}
        array_frequencia = array[char] of integer; {Note que o indice eh do tipo char}
        array_mult_dim_inteiros = array[0..10, 0..10] of integer;
        array_sem_tamanho_pre_fixado = array of integer;{O tamanho vai ser fixado posteriormente com setlength}
        texto = packed array[0..256] of char;    {packed array, dados como agrupamento de bits}
var

        inteiros : array_inteiros = (1,2,3,87,98,90,78,90,98,10,89); {Inicializando o array na declaracao}
        temperatura : array_temperatura;
        cor_presente : array_boolean;
        frequencia : array_frequencia;
        tabela : array_mult_dim_inteiros;
        n_inteiros : array_sem_tamanho_pre_fixado;
        nome : texto;
        i, j : integer;
 procedure imprime_array (var arr : array_inteiros; inicio, fim:integer); {Procedure que recebe um array}
 var
        i : integer;
 begin
      for i:=inicio to fim do
        begin
                writeln(arr[i]);
        end;
 end;

begin
    writeln('Imprimindo o array de inteiros');
    imprime_array(inteiros,0,10);
    cor_presente[vermelho] := false;
    cor_presente[azul] := true;
    temperatura[-10] := 100;
    frequencia['A'] := 898;

    for i := 0 to 10 do
        for j:= 0 to 10 do
                tabela[i][j] := 99;
    setlength(n_inteiros, 100);
    n_inteiros[0] := 989;
    nome := 'Nome qualquer';

    for i:=0 to 32 do
        if(nome[i] <> 'a') then
                writeln(nome[i]);

    readkey;

end.
