import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/services/LoginService.dart';

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

      expect( loginService.login(valor1, "abc123@"), true);
      expect( loginService.login(valor2, "abc123@"), false);
      expect( loginService.login(valor3, "abc123@"), false);
      expect( loginService.login(valor4, "abc123@"), false);
      expect( loginService.login(valor5, "abc123@"), false);
      expect( loginService.login(valor6, "abc123@"), false);
      expect( loginService.login(valor7, "abc123@"), false);
      expect( loginService.login(valor8, "abc123@"), false);
      expect( loginService.login(valor9, "abc123@"), false);
      expect( loginService.login(valor10, "abc123@"), true);
      expect( loginService.login(valor11, "abc123@"), true);
    });
    test('Campo Senha', () {
      
    });
  }
}