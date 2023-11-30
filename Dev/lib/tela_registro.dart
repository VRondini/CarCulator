import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'tela_produtos.dart';
import 'main.dart';

class TelaRegistro extends StatefulWidget {
  final int? userId;
  TelaRegistro({Key? key, required this.userId}) : super(key: key);
  @override
  _TelaRegistroState createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  bool isChecked = false;
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController sobrenomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController = TextEditingController();

  Future<void> inserirDados(String nome, String sobrenome, String email, String senha) async {
    final url = 'http://localhost:3000/inserir_usuario';

    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode({
          'nome': nome,
          'sobrenome': sobrenome,
          'email': email,
          'senha': senha,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        print('Registro bem-sucedido');
      } else {
        print('Erro ao registrar: ${response.statusCode}');
      }
    } catch (expection) {
      print('Erro ao inserir dados: $expection');
    }
  }

  @override
  Widget build(BuildContext TelaRegistroContext) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (BuildContext scaffoldContext) {
            return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Align(
                            child: Opacity(
                              opacity: 0.2,
                              child: Image.asset(
                                'assets/images/CarCulator_logo.png',
                                width: 460,
                                height: 420,
                              ),
                            ),
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '\n\n\nBem vindo(a) ao',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'CarCulator',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 58,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Preencha os campos abaixo:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 70),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      controller: nomeController,
                                      onChanged: (valor) => setState(() {}),
                                      decoration: InputDecoration(
                                        hintText: 'Nome',
                                        hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      controller: sobrenomeController,
                                      onChanged: (valor) => setState(() {}),
                                      decoration: InputDecoration(
                                        hintText: 'Sobrenome',
                                        hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      controller: emailController,
                                      onChanged: (valor) => setState(() {}),
                                      decoration: InputDecoration(
                                        hintText: 'E-mail',
                                        hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      controller: senhaController,
                                      onChanged: (valor) => setState(() {}),
                                      decoration: InputDecoration(
                                        hintText: 'Senha',
                                        hintStyle:
                                        TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                      style: TextStyle(color: Colors.black),
                                      obscureText: true,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                          color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      controller: confirmarSenhaController,
                                      onChanged: (valor) => setState(() {}),
                                      decoration: InputDecoration(
                                        hintText: 'Confirme sua senha',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                      style: TextStyle(color: Colors.black),
                                      obscureText: true,
                                    ),
                                  ),
                                ),

                                SizedBox(height: 40),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Row(

                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? newValue) {
                                          if (newValue != null) {
                                            setState(() {
                                              isChecked = newValue;
                                            });
                                          }
                                        },
                                      ),
                                      Flexible(
                                        child: Text(
                                            'Eu desejo receber notificações do tempo de vida útil da minha peça.'),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      Container(
                                        height: 48,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(TelaRegistroContext).push(
                                              PageRouteBuilder(
                                                pageBuilder: (TelaRegistroContext,
                                                    animation,
                                                    secondaryAnimation) {
                                                  return TelaInicial();
                                                },
                                                transitionsBuilder: (
                                                    TelaRegistroContext,
                                                    animation, secondaryAnimation,
                                                    child) {
                                                  const begin = Offset(-1.0, 0.0);
                                                  const end = Offset.zero;
                                                  const curve = Curves.easeInOut;

                                                  var tween = Tween(
                                                      begin: begin, end: end).chain(
                                                    CurveTween(curve: curve),
                                                  );

                                                  var offsetAnimation = animation
                                                      .drive(tween);

                                                  return SlideTransition(
                                                    position: offsetAnimation,
                                                    child: child,
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Voltar',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 48,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent[200],
                                          border: Border.all(
                                              color: Colors.white, width: 1.0),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            if (senhaController.text ==
                                                confirmarSenhaController.text) {
                                              inserirDados(
                                                nomeController.text,
                                                sobrenomeController.text,
                                                emailController.text,
                                                senhaController.text,
                                              );
                                              print('Inserindo dados');
                                              ScaffoldMessenger.of(scaffoldContext)?.showSnackBar(
                                                SnackBar(
                                                  content: Text('Registro bem-sucedido'),
                                                  duration: const Duration(seconds: 2),
                                                  backgroundColor: Colors.green,
                                                ),
                                              );
                                              Navigator.of(TelaRegistroContext).push(
                                                PageRouteBuilder(
                                                  pageBuilder: (context, animation,
                                                      secondaryAnimation) {
                                                    return TelaProdutos(userId: widget.userId);
                                                  },
                                                  transitionsBuilder: (
                                                      TelaRegistroContext, animation,
                                                      secondaryAnimation, child) {
                                                    const begin = Offset(1.0, 0.0);
                                                    const end = Offset.zero;
                                                    const curve = Curves.easeInOut;

                                                    var tween = Tween(
                                                        begin: begin, end: end).chain(
                                                      CurveTween(curve: curve),
                                                    );

                                                    var offsetAnimation = animation
                                                        .drive(tween);

                                                    return SlideTransition(
                                                      position: offsetAnimation,
                                                      child: child,
                                                    );
                                                  },
                                                ),
                                              );
                                            } else {
                                              // Senhas não coincidem, exiba uma mensagem de erro.
                                              ScaffoldMessenger.of(scaffoldContext)?.showSnackBar(
                                                SnackBar(
                                                  content: Text('As senhas não coincidem. Tente novamente.'),
                                                  duration: const Duration(seconds: 2),
                                                  backgroundColor: Colors.red,
                                                ),
                                              );
                                            }
                                          },
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Crie sua conta!',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 32),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
