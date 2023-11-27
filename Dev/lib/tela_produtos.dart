import 'package:flutter/material.dart';
import 'main.dart';
import 'tela_pneus.dart';
import 'tela_freios.dart';

class TelaProdutos extends StatefulWidget {
  @override
  _TelaProdutosState createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
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
                              '\nCarCulator',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 58,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Selecione o produto:',
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
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Image.asset(
                                        'assets/images/Pneu.png',
                                        width: 120,
                                        height: 90,
                                      ),
                                    ),
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(TelaPrincipalContext).push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) {
                                                return TelaPneus();
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
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Pneus',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 20),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Image.asset(
                                        'assets/images/Freios.png',
                                        width: 90,
                                        height: 80,
                                      ),
                                    ),
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(TelaPrincipalContext).push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) {
                                                return TelaFreios();
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
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Freios',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Image.asset(
                                        'assets/images/Luzes.png',
                                        width: 100,
                                        height: 80,
                                      ),
                                    ),
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(TelaPrincipalContext).push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) {
                                                return TelaInicial();
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
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Luzes',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 64),
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Image.asset(
                                        'assets/images/Velas.png',
                                        width: 100,
                                        height: 80,
                                      ),
                                    ),
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(TelaPrincipalContext).push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) {
                                                return TelaInicial();
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
                                        child: const Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Velas',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 34,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Container(
                              height: 48,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.lightBlueAccent[200],
                                border: Border.all(
                                    color: Colors.transparent, width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(TelaPrincipalContext).push(
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                          secondaryAnimation) {
                                        return TelaInicial();
                                      },
                                      transitionsBuilder: (context,
                                          animation,
                                          secondaryAnimation,
                                          child) {
                                        const begin = Offset(-1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween =
                                        Tween(begin: begin, end: end)
                                            .chain(
                                          CurveTween(curve: curve),
                                        );

                                        var offsetAnimation =
                                        animation.drive(tween);

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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
