{Autor: Vladwoguer Bezerra, 19 Novembro 2015}
program lidando_com_tipos;
uses
        crt;

type {Declaracao de tipos}
        quantia = real;   {Definindo um nome de tipo mais semantico}
        idade = 1..145; {Sub range de inteiros validos para idade}
        estado_civil = (Solteiro,Casado,Viuvo,Divorciado); {Enumeration de estado civil}
const  {Declaracao de constantes}
        fator_idade = 0.28; {Fator do calculo por ano de vida}
var  {Declaracao de variaveis, alocacao de posicoes de memoria conforme os tipos}
        idadePessoa : idade;
        estadoCivilPessoa : estado_civil;
        valor : quantia;
        total : quantia;
        nomePessoa : string;
begin
        writeln('Por favor entre com seu nome');
        readln(nomePessoa);
        writeln('Por favor entre com sua idade');
        readln(idadePessoa);
        writeln('Por favor entre com seu estado civil');
        readln(estadoCivilPessoa);
        writeln('Por valor entre com o valor que deseja simular');
        readln(valor);
        total := valor + (valor * (idadePessoa * fator_idade) / 100); {Calculo da simulacao armazenado na variavel total}
        writeln('Total= ', total:10:2);
        readkey;
end.
