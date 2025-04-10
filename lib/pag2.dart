import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  final String usuario;
  const Cadastro({super.key, required this.usuario});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _nome = TextEditingController();
  final _idade = TextEditingController();
  final _curso = TextEditingController();
  final _cidade = TextEditingController();
  final _pais = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Bem-Vindo!"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Olá, ${widget.usuario}",  style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
            TextField(
              controller: _nome,
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
            ),
            SizedBox(height: 20),
             TextField(
              controller: _idade,
              decoration: InputDecoration(
                labelText: "Idade",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
            ),
            SizedBox(height: 20),
             TextField(
              controller: _curso,
              decoration: InputDecoration(
                labelText: "Curso",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
            ),
            SizedBox(height: 20),
             TextField(
              controller: _cidade,
              decoration: InputDecoration(
                labelText: "Cidade",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
            ),
            SizedBox(height: 20),
             TextField(
              controller: _pais,
              decoration: InputDecoration(
                labelText: "País",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)))
                  ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              var nome = _nome.text;
                  var idade = _idade.text;
                  var curso = _curso.text;
                  var cidade = _cidade.text;
                  var pais = _pais.text;

                      if(nome.isEmpty || idade.isEmpty || curso.isEmpty || cidade.isEmpty || pais.isEmpty){
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Atenção!"),
                            content: Text("Por Favor Preencha todos os dados do Cadastro!"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                 child: Text("Ok"),
                                 ),
                            ],
                          ),
                          );
                      } else {
                        showDialog(
                          context: context,
                           builder: (context) => AlertDialog(
                            title: Text("Dados Salvos!"),
                            content: Text("\n Nome: $nome" + "\n Idade: $idade" + "\n Curso: $curso" + "\n Cidade: $cidade" + "\n País: $pais"),
                            actions: [
                                TextButton(onPressed: () => Navigator.pop(context),
                                child: Text("Ok"),
                                )
                            ],
                           ),
                           );
                      }

            },
             child: Text("Salvar / Guardar" ,
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
             ),
             style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
             ),
             ),
             SizedBox(height: 20),
             ElevatedButton(onPressed: (){
                  Navigator.pop(context);
            },
             child: Text("Voltar" ,
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
             ),
             style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
             ),
             )
          ],

        ),
      ),
      );
  }
}