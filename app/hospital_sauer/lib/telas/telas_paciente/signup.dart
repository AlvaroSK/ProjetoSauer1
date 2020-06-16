import 'package:flutter/material.dart';
import 'package:flutter_login_ui/telas/telas_ambos/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: SignUp(),
            );
          },
        );
      },
    );
  }
}

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);

  static final String id = 'signup';
  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15 * SizeConfig.heightMultiplier,),
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset("assets/creatingprofile.png", fit: BoxFit.cover, height: 150.0, width: 150.0,),
              ),
              SizedBox(height: 5 * SizeConfig.heightMultiplier,),
              Text("Cadastre-se", style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 4 * SizeConfig.textMultiplier
              ),),
              SizedBox(height: 3 * SizeConfig.heightMultiplier,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text("Cadastre-se usando email e senha",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 2 * SizeConfig.textMultiplier
                  ),),
              ),
              SizedBox(height: 3 * SizeConfig.heightMultiplier,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Email",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(
                              color: Colors.blueGrey
                          )
                      )
                  ),
                  validator: (val){
                    if(val.length ==0){
                      return "O e-mail não pode ficar vazio";
                    }
                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                      color: Colors.blueGrey
                  ),
                ),
              ),
              SizedBox(height: 3 * SizeConfig.heightMultiplier,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  decoration: new InputDecoration(
                      labelText: "Senha...",
                      fillColor: Colors.white,
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                          borderSide: new BorderSide(
                              color: Colors.blueGrey
                          )
                      )
                  ),
                  validator: (val){
                    if(val.length ==0){
                      return "Senha não pode ser vazia";
                    }
                    else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.visiblePassword,
                  style: new TextStyle(
                      color: Colors.blueGrey
                  ),
                ),
              ),
              SizedBox(height: 5 * SizeConfig.heightMultiplier,),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                child: Container(
                  height: 7 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Center(
                    child: Text("Crie uma conta", style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 2 * SizeConfig.heightMultiplier,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Já tem conta?", style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 1.7 * SizeConfig.textMultiplier
                  ),),
                  SizedBox(width: 1 * SizeConfig.widthMultiplier,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("Entre", style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 1.7 * SizeConfig.textMultiplier
                    ),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}