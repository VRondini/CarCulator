class CalculoDesgaste {
  late double massa, aceleracao, qualidadePneu, forcaY = 891, semanas = 20, distanciaPercorrida, desgasteMaximo;

  double calculaForcaHorizontal() {
    _checkInitialization();
    return massa * aceleracao;
  }

  double calculaDesgasteMilimetros() {
    _checkInitialization();
    double forcaX = calculaForcaHorizontal();
    return qualidadePneu * (forcaX.abs() + forcaY.abs()) * distanciaPercorrida;
  }

  double porcentagemVidaUtilRemanescente() {
    _checkInitialization();
    double desgastePneuPorcentagem= (calculaDesgasteMilimetros() / desgasteMaximo) * 100;

    double valorFinal = 100 - desgastePneuPorcentagem;
    double divisaoContaFinal = desgastePneuPorcentagem / semanas;
    double resultado = valorFinal / divisaoContaFinal;

    resultado = double.parse(resultado.toStringAsFixed(2));
    return resultado.abs();
  }

  void _checkInitialization() {
    if (!isInitialized()) {
      throw Exception("Os campos da classe CalculoDesgaste não foram inicializados.");
    }
  }

  bool isInitialized() {
    return massa != null &&
        aceleracao != null &&
        qualidadePneu != null &&
        forcaY != null &&
        semanas != null &&
        distanciaPercorrida != null &&
        desgasteMaximo != null;
  }
}
