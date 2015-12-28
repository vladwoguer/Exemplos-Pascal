{Exemplo Object Pascal Dezembro 2015}
program object_pascal_heranca;
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
        ContatoEspecial = object (Contato)
        private
                cargo : string;
        public
                procedure setcargo(_cargo:string);
                function getcargo():string;
                constructor init;
                constructor create(_nome, _telefone, _cargo: string);
        end;

        procedure Contato.setnome(_nome:string);
        begin
            self.nome := _nome;
        end;
        procedure Contato.settelefone(_telefone:string);
        begin
            self.telefone := _telefone;
        end;
        function Contato.getnome():string;
        begin
                getnome := self.nome;
        end;
        function Contato.gettelefone():string;
        begin
            gettelefone := self.telefone;
        end;
        constructor Contato.init;
        begin
                self.nome := 'Pai';
                self.telefone := '8333339909';
        end;
        destructor Contato.done;
        begin
        end;
        procedure ContatoEspecial.setcargo(_cargo:string);
        begin
                self.cargo := _cargo;
        end;
        function ContatoEspecial.getcargo():string;
        begin
                getcargo := self.cargo;
        end;
        constructor ContatoEspecial.init;
        begin
                inherited init;
                self.cargo := 'Pai';
        end;
        constructor ContatoEspecial.create(_nome, _telefone, _cargo : string);
        begin
                self.nome := _nome;
                self.telefone := _telefone;
                self.cargo := _cargo;
        end;
var
        contact : ContatoEspecial;
        ptrContact : ^ContatoEspecial;
begin
        contact.init;
        Writeln(contact.nome);
        Writeln(contact.telefone);
        Writeln(contact.cargo);
        contact.done;

        new(ptrContact, init);
        Writeln(ptrContact^.nome);
        Writeln(ptrContact^.telefone);
        Writeln(ptrContact^.cargo);
        ptrContact^.done;

        contact.create('Teste', '1234', 'teste');
        Writeln(contact.nome);
        Writeln(contact.telefone);
        Writeln(contact.cargo);
        contact.done;

        readkey;

end.
