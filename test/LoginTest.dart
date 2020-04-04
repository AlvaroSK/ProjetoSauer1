import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/services/LoginService.dart';

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