{Vladwoguer Bezerra, Novembro 2015}
unit CalculaArea;

interface
function quadrado(lado : integer):integer;
function retangulo(altura, largura : integer):integer;

implementation
function quadrado(lado : integer) : integer;
begin
    quadrado := lado * lado;
end;
function retangulo(altura, largura : integer) : integer;
begin
    retangulo := altura *  largura;
end;
end.