program conjuntos;
uses
        crt;
type
        dias = (sengunda, terca, quarta, quinta, sexta, sabado);
        letras = set of char;
        sub_dias = set of dias;
        alfabetos = set of 'A' .. 'Z';
        idades = set of 0..145;
var
        conj_a, conj_b : letras;



begin
        conj_a := ['A','B','C','D'];
        conj_b := ['B','C','F','Z'];

        writeln('A' in conj_a);
        writeln('Z' in conj_a);
        writeln('A' in conj_a + conj_b);  {Uniao}
        writeln('A' in conj_a - conj_b);  {Diferenca}
        writeln('A' in conj_a * conj_b);  {Interseccao}
        writeln('A' in conj_a >< conj_b);  {Diferenca simetrica}

        writeln(conj_a = conj_b); {Testa igualdade}
        writeln(conj_a <> conj_b); {Testa diferenca}
        writeln('E' in conj_a);
        Include(conj_a, 'E'); {Inclue E no conjunto a}
        writeln('E' in conj_a);
        writeln('F' in conj_b);
        Exclude(conj_b, 'F'); {Exclue F do conjunto b}
        writeln('F' in conj_b);

        readkey;


end.
