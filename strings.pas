{Vladwoguer Bezerra, Novembro 2015}
program strings;
uses
        crt,sysutils;

var
        string1: string;
        string2: packed array[1..10] of char;
        string3: string[10];
        string4: pchar;
        string5: ansistring;
begin
        string1 := 'Cinco ';
        string2 := 'Exemplos ';
        string3 := 'de ';
        string4 := 'representacao ';
        string5 := 'de strings';
        writeln(string1,string2,string3,string4,string5);
        readkey;
end.