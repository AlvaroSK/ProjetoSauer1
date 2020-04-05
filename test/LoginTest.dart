import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/main.dart';
import 'package:hosptec/services/LoginService.dart';
import 'package:hosptec/views/Login.dart';

class LoginTest {
  
  static Test() async{
    test('Campo Login', () {
      LoginService loginService = LoginService();

      String valor1 = "teste.santos";         /*Válido */
      String valor2 = ".Teste";               /*Inválido */
      String valor3 = ".";                    /*Inválido */
      String valor4 = "AAAAAAAAAAAAAAAAAAAA"; /*Inválido */
      String valor5 = "ABCDE";                /*Inválido */
      String valor6 = "";                     /*Inválido */
      String valor7 = "@Teste";               /*Inválido */
      String valor8 = "@@Teste";              /*Inválido */
      String valor9 = "Teste.";               /*Inválido */
      String valor10 = "Teste@";              /*Válido */
      String valor11 = "Teste123";            /*Válido */
      String valor12 = "abc def";             /*Inválido */
      String valor13 = " abcdef";             /*Inválido */
      String valor14 = "abcdef ";             /*Inválido */

      expect( loginService.login(valor1, "abc123@"), true);
      expect( loginService.login(valor2, "abc123@"), true);
      expect( loginService.login(valor3, "abc123@"), true);
      expect( loginService.login(valor4, "abc123@"), true);
      expect( loginService.login(valor5, "abc123@"), true);
      expect( loginService.login(valor6, "abc123@"), true);
      expect( loginService.login(valor7, "abc123@"), true);
      expect( loginService.login(valor8, "abc123@"), true);
      expect( loginService.login(valor9, "abc123@"), true);
      expect( loginService.login(valor10, "abc123@"), true);
      expect( loginService.login(valor11, "abc123@"), true);
      expect( loginService.login(valor12, "abc123@"), true);
      expect( loginService.login(valor13, "abc123@"), true);
      expect( loginService.login(valor14, "abc123@"), true);
    });
    
    test('Campo Senha', () {
      LoginService loginService = LoginService();

      String valor1 = "AAAAAAAAAAAAAAAAAAAA"; /*Inválido */
      String valor2 = "";                     /*Inválido */
      String valor3 = "AAAAAAAAAAAAA@";       /*Válida*/
      String valor4 = "ABCDE?";               /*Inválido */
      String valor5 = "?ABCDE";               /*Inválido */
      String valor6 = "?ABC•DE?";             /*Inválido */
      String valor7 = "@Teste";               /*Inválido */
      String valor8 = "@@Teste";              /*Inválido */
      String valor9 = "Teste.";               /*Inválido */

      expect( loginService.login("login.valido", valor1), true);
      expect( loginService.login("login.valido", valor2), true);
      expect( loginService.login("login.valido", valor3), true);
      expect( loginService.login("login.valido", valor4), true);
      expect( loginService.login("login.valido", valor5), true);
      expect( loginService.login("login.valido", valor6), true);
      expect( loginService.login("login.valido", valor7), true);
      expect( loginService.login("login.valido", valor8), true);
      expect( loginService.login("login.valido", valor9), true);
    });

    testWidgets('Widget Login', (WidgetTester widgetTester) async{
      await widgetTester.pumpWidget(MyApp());

      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Senha'), findsOneWidget);
      expect(find.text('Continue'), findsOneWidget);

    });
  }
}