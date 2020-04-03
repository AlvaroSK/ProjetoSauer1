class CredentialsDTO{

  String _login;
  String _password;

  void setLogin(String login){
    this._login = login;
  }
  void setPassword(String password){
    this._password = password;
  }
  String getLogin(){
    return this._login;
  }
  String getPassword(){
    return this._password;
  }
}