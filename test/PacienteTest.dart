import 'package:flutter_test/flutter_test.dart';
import 'package:hosptec/models/PacienteDTO.dart';
import 'package:hosptec/services/PacienteService.dart';

class PacienteTest{

  void Test() async{
    PacienteService serv = PacienteService();

    PacienteDTO paciente1 = PacienteDTO("Teste dos Santos","M","Pardo",DateTime(1992,12,21));
    PacienteDTO paciente2 = PacienteDTO("","M","Pardo",DateTime(1992,12,21));
    PacienteDTO paciente3 = PacienteDTO("Teste dos Santos","","Pardo",DateTime(1992,12,21));
    PacienteDTO paciente4 = PacienteDTO("Teste dos Santos","M","",DateTime(1992,12,21));
    PacienteDTO paciente5 = PacienteDTO("Teste dos Santos","M","Pardo",DateTime(2992,12,21));

    PacienteDTO paciente6 = PacienteDTO("12344661 2131","M","Pardo",DateTime(1992,12,21));
    PacienteDTO paciente7 = PacienteDTO("Teste dos Santos","FF","Pardo",DateTime(1992,12,21));
    PacienteDTO paciente8 = PacienteDTO("Teste dos Santos","M","abcvsd5",DateTime(1992,12,21));
    PacienteDTO paciente9 = PacienteDTO("Teste dos Santos","M","Pardo",null);

    test("Campos do paciente Vazios", (){
      expect(serv.registrarPaciente(paciente1), true);
      expect(serv.registrarPaciente(paciente2), false);
      expect(serv.registrarPaciente(paciente3), false);
      expect(serv.registrarPaciente(paciente4), false);
      expect(serv.registrarPaciente(paciente5), false);
    });

    test("Campos do paciente Inválidos", (){
      expect(serv.registrarPaciente(paciente6), false);
      expect(serv.registrarPaciente(paciente7), false);
      expect(serv.registrarPaciente(paciente8), false);
      expect(serv.registrarPaciente(paciente9), false);
    });
  }
}