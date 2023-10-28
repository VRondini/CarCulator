import 'package:flutter/material.dart';
import 'main.dart';

class TelaRegistro extends StatefulWidget {
  @override
  _TelaRegistroState createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  bool isChecked = false;

  @override
  Widget build(BuildContext TelaPrincipalContext) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
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
                            SizedBox(height: 70), // Espaço vertical
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
                            SizedBox(height: 24),// Espaço vertical
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
                            SizedBox(height: 24),// Espaço vertical
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
                            SizedBox(height: 24), // Espaço vertical
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
                                  decoration: InputDecoration(
                                    hintText: 'Confirme sua senha',
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
                                    child: Text('Eu desejo receber notificações do tempo de vida útil da minha peça.'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 24),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64), // Espaço de 64 pixels nas bordas esquerda e direita
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Para distribuir os botões igualmente nas extremidades
                                children: [
                                  Container(
                                    height: 48,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      border: Border.all(color: Colors.black, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(TelaPrincipalContext).push(
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) {
                                              return TelaInicial();
                                            },
                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                              const begin = Offset(-1.0, 0.0);
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
                                      border: Border.all(color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(TelaPrincipalContext).push(
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) {
                                              return TelaInicial();
                                            },
                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                              const begin = Offset(-1.0, 0.0);
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
        ),
      ),
    );
  }
}
