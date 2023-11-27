import 'package:flutter/material.dart';
import 'tela_registro.dart';
import 'tela_produtos.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: TelaInicial(),
  ));
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void _credenciaisInvalidas(BuildContext context, String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
      ),
    );
  }

  Future<void> realizarLogin(String email, String senha) async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/login?email=$email&senha=$senha'),
    );

    if (response.statusCode == 200) {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return TelaProdutos();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    } else {
      print('Erro no login: ${response.statusCode}');
      print('Detalhes do erro: ${response.body}');
      _credenciaisInvalidas(
          context, 'Email ou senha incorretos! Tente novamente.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext scaffoldContext) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/CarCulator_logo.png',
                    width: 260,
                    height: 220,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Bem-vindo(a) ao',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'CarCulator',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: senhaController,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: TextStyle(color: Colors.grey[600]),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                        ),
                        style: TextStyle(color: Colors.black),
                        obscureText: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: TextButton(
                      onPressed: () {
                        realizarLogin(
                            emailController.text, senhaController.text);
                      },
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent[200],
                        border: Border.all(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        onPressed: () {
                          realizarLogin(
                              emailController.text, senhaController.text);
                        },
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Você é novo aqui?',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) {
                            return TelaRegistro();
                          },
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end).chain(
                              CurveTween(curve: curve),
                            );

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Registre-se!',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
