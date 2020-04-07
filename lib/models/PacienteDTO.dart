class PacienteDTO{

  PacienteDTO(String nome, String sexo, String etnia,DateTime dataNascimento){
    this._nome = nome;
    this._sexo = sexo;
    this._etnia = etnia;
    this._dataNascimento = dataNascimento;
  }

  String _nome;
  String _sexo;
  String _etnia;
  DateTime _dataNascimento;

  String getNome() {return _nome;}
  String getSexo() {return _sexo;}
  String getEtnia(){return _etnia;}
  DateTime getDataNascimento() {return _dataNascimento;}

  void setNome(String nome){this._nome = nome;}
  void setSexo(String sexo){this._sexo = sexo;}
  void setEtnia(String etnia){this._etnia = etnia;}
  void setDataNascimento(DateTime dataNascimento){ this._dataNascimento = dataNascimento; } 
}