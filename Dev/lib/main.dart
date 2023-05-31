import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
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
                  'images/CarCulator_logo.png',
                   width: 260,
                   height: 220,
                ),

                SizedBox(height: 16),

                Text(
                  'Bem-vindo(a) ao',
                  style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  'CarCulator',
                  style: TextStyle(color: Colors.black, fontSize: 64, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 64),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Usuário',
                        hintStyle: TextStyle(color: Colors.grey[400]),
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
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.grey[400]),
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
              // Lógica para lidar com o clique em "Esqueceu sua senha?"
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
                      // Lógica para lidar com o clique em "Esqueceu sua senha?"
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
                    // Lógica para lidar com o clique em "Registre-se!"
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
        ),
      ),
    );
  }
}
