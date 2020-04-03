import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:_LoginPage()
    );
  }
}

class _LoginPage extends StatefulWidget{
  _LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageStateless createState() => _LoginPageStateless();
}

class _LoginPageStateless extends State<_LoginPage>{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            maxLength: 20,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                          hintText: "Login",
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
          )),

          TextField(
            maxLength: 20,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                          hintText: "Senha",
                          counterText: "",

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
          )),
        ],
      ),
    );
  }

}