import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/main.dart';
import 'package:hosptec/services/LoginService.dart';
import 'package:hosptec/views/Login.dart';

class LoginTest {
  
  static Test() async{
    test('Campo Login', () {
      LoginService loginService = LoginService();

      String valor1 = "teste.santos";         /*V�lido */
      String valor2 = ".Teste";               /*Inv�lido */
      String valor3 = ".";                    /*Inv�lido */
      String valor4 = "AAAAAAAAAAAAAAAAAAAA"; /*Inv�lido */
      String valor5 = "ABCDE";                /*Inv�lido */
      String valor6 = "";                     /*Inv�lido */
      String valor7 = "@Teste";               /*Inv�lido */
      String valor8 = "@@Teste";              /*Inv�lido */
      String valor9 = "Teste.";               /*Inv�lido */
      String valor10 = "Teste@";              /*V�lido */
      String valor11 = "Teste123";            /*V�lido */
      String valor12 = "abc def";             /*Inv�lido */
      String valor13 = " abcdef";             /*Inv�lido */
      String valor14 = "abcdef ";             /*Inv�lido */

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

      String valor1 = "AAAAAAAAAAAAAAAAAAAA"; /*Inv�lido */
      String valor2 = "";                     /*Inv�lido */
      String valor3 = "AAAAAAAAAAAAA@";       /*V�lida*/
      String valor4 = "ABCDE?";               /*Inv�lido */
      String valor5 = "?ABCDE";               /*Inv�lido */
      String valor6 = "?ABC�DE?";             /*Inv�lido */
      String valor7 = "@Teste";               /*Inv�lido */
      String valor8 = "@@Teste";              /*Inv�lido */
      String valor9 = "Teste.";               /*Inv�lido */

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