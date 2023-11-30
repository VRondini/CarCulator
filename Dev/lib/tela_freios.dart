import 'package:flutter/material.dart';
import 'calculo_pneu.dart';
import 'tela_produtos.dart';

class TelaFreios extends StatefulWidget {
  final int? userId;

  TelaFreios({Key? key, this.userId}) : super(key: key);
  @override
  _TelaFreiosState createState() => _TelaFreiosState();
}

class _TelaFreiosState extends State<TelaFreios> {
  final CalculoDesgaste calculadora = CalculoDesgaste();

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
                              'Insira os valores abaixo:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 70), // Espaço vertical
                            Padding(
                              padding: const EdgeInsets.all(64),
                              child: Column(
                                children: [
                                  //Container massa do veículo
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          calculadora.massa = double.tryParse(value) ?? 0.0;
                                          print(calculadora.massa);
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Massa do veículo (kg)',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  //Container velocidade média do veículo
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          calculadora.aceleracao = double.tryParse(value) ?? 0.0;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Velocidade média do veículo (km/h)',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  //Container Qualidade do Pneu
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          calculadora.qualidadePneu = double.tryParse(value) ?? 0.0;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Qualidade do pneu',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  //Container Desgaste Maximo
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          calculadora.desgasteMaximo = double.tryParse(value) ?? 0.0;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Desgaste Máximo (mm)',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16),

                                  //Container distancia percorrida
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          calculadora.distanciaPercorrida = double.tryParse(value) ?? 0.0;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Distância percorrida (km)',
                                        hintStyle: TextStyle(color: Colors.grey[600]),
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(12),
                                      ),
                                    ),
                                  ),

                                  //Botões
                                  SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(TelaPrincipalContext).push(
                                              PageRouteBuilder(
                                                pageBuilder: (context, animation,
                                                    secondaryAnimation) {
                                                  return TelaProdutos(userId: widget.userId);
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
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent[200],
                                          border: Border.all(
                                              color: Colors.white, width: 1.0),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            double resultado = calculadora.porcentagemVidaUtilRemanescente();
                                            print('Resultado: $resultado');
                                          },
                                          child: Text(
                                            'Calcular',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
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
