import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:projetocarculator/tela_produtos.dart';

class TelaHistorico extends StatefulWidget {
  final int? userId;

  TelaHistorico({Key? key, required this.userId}) : super(key: key);

  @override
  _TelaHistoricoState createState() => _TelaHistoricoState();
}

class _TelaHistoricoState extends State<TelaHistorico> {
  List<dynamic> historico = [];

  @override
  void initState() {
    super.initState();
    carregarHistorico();
  }

  Future<void> carregarHistorico() async {
    final response = await http.get(
      Uri.parse(
          'http://localhost:3000/historico_usuario?id_usuario=${widget.userId}'),
    );

    if (response.statusCode == 200) {
      setState(() {
        historico = json.decode(response.body)['historico'];
      });
    } else {
      print(
          'Erro ao carregar histórico. Código de resposta: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
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
                              'Histórico de cálculos:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 30),

                            Container(
                              height: 400,
                              child: ListView.builder(
                                itemCount: historico.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    margin: EdgeInsets.only(left: 64, right: 64, bottom: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    color: Colors.grey[300],
                                    child: ListTile(
                                      title: Text('Cálculo ${historico[index]['id']}'),
                                      subtitle: Text('Resultado: ${historico[index]['resultado']}%'),
                                    ),
                                  );
                                },
                              ),
                            ),

                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.all(64),
                              child: Column(
                                children: [
                                  SizedBox(height: 16),
                                  SizedBox(height: 32),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 48,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border: Border.all(
                                              color: Colors.black, width: 1.0),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              PageRouteBuilder(
                                                pageBuilder: (context, animation, secondaryAnimation) {
                                                  return TelaProdutos(userId: widget.userId);
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
                                            );// Volta para a tela anterior
                                          },
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Voltar',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
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
