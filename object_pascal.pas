program objeto_pascal;
uses
        crt;
type
        Contato = object
        private
                nome : string;
                telefone : string;
        public
                constructor init;
                destructor done;
                procedure setnome(_nome:string);
                function getnome() : string;
                procedure settelefone(_telefone:string);
                function gettelefone():string;
        end;
        procedure Contato.setnome(_nome:string);
        begin
            nome := _nome;
        end;
        procedure Contato.settelefone(_telefone:string);
        begin
            telefone := _telefone;
        end;
        function Contato.getnome():string;
        begin
                getnome := nome;
        end;
        function Contato.gettelefone():string;
        begin
            gettelefone := telefone;
        end;
        constructor Contato.init;
        begin
                nome := '';
                telefone := '';
        end;
        destructor Contato.done;
        begin
        end;
var
        contact : Contato;

begin
        contact.setnome('Jose Silva');
        contact.settelefone('8333221234');

        writeln(contact.getnome());
        writeln(contact.gettelefone());
        readkey;
end.