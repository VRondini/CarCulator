import 'package:postgres/postgres.dart';

Future<void> conexaoBanco() async {
  final connection = PostgreSQLConnection(
    'localhost',
    5432,
    'login_carculator',
    username: 'postgres',
    password: 'Gatoumdois10',
  );

  await connection.open();


  await connection.close();
}
