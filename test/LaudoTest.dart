import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/services/LaudoService.dart';

class LaudoTest {
  

  static void Test() async{
    
    LaudoService laudoService = LaudoService();
    test('Descrição do Laudo',(){

      String desc1 = "Estava com corona vírus";
      String desc2 = "";
      String desc3 = "Doente em estado grave ?";
      String desc4 = "12312412412";

      expect(laudoService.laudo(desc1),true);
      expect(laudoService.laudo(desc2),false);
      expect(laudoService.laudo(desc3),false);
      expect(laudoService.laudo(desc4),false);
    });

    test('Status',(){
      
    });
  }
}