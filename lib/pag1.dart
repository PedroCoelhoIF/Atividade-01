import 'package:flutter/material.dart';
import 'pag2.dart';

class Pag1 extends StatefulWidget {
  const Pag1({super.key});

  @override
  State<Pag1> createState() => _Pag1State();
}

class _Pag1State extends State<Pag1> {
  final _nomeController = TextEditingController();
  final _senhaController = TextEditingController();
  var _visivel = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(39),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage("https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png"),
           ),
           SizedBox(height: 30),
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Digite seu nome de usuário",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _visivel,
              controller: _senhaController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _visivel = !_visivel;
                    });
                  },
                  icon: _visivel
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
                labelText: "Digite sua senha",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {
                    var usuario = _nomeController.text;
                    var senha = _senhaController.text;
                    if (usuario.isEmpty || senha.isEmpty) {
                    // Se um dos campos estiver vazio
                    showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                    title: Text("Atenção"),
                    content: Text("Por favor, preencha todos os campos."),
                    actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("OK"),
                              ),
                            ],
                    ),
      );
    } else if (usuario == "admin" && senha == "1234") {
      // Se os dados estiverem corretos, vai para a próxima tela
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Cadastro(usuario: usuario,)),
      );
    } else {
      // Se os dados estiverem incorretos
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Erro"),
          content: Text("Usuário ou senha incorretos."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
                    
            },
             child: Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 200, vertical: 15),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
             ),)
          ],
        ),
      ),
    );
  }
}
