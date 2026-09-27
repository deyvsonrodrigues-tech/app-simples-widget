import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_simples_widget/main.dart';

void main() {
  testWidgets('Tela de perfil renderiza corretamente e aciona o SnackBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifica a presença do título no AppBar
    expect(find.text('Meu Perfil'), findsOneWidget);

    // Verifica o nome do usuário em destaque
    expect(find.text('Deyvson Mendes'), findsOneWidget);

    // Verifica as informações de contato
    expect(find.text('deyvson.rodrigues@estudante.ifgoiano.edu.br'), findsOneWidget);
    expect(find.text('(62) 99999-0000'), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.phone), findsOneWidget);

    // Verifica o botão Seguir
    final followButton = find.widgetWithText(ElevatedButton, 'Seguir');
    expect(followButton, findsOneWidget);

    // Clica no botão e verifica o SnackBar
    await tester.tap(followButton);
    await tester.pump(); // Inicia a animação do SnackBar

    expect(find.text('Você agora segue este perfil!'), findsOneWidget);
  });
}
