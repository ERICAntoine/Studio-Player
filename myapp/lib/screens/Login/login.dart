import "package:flutter/material.dart";
import 'package:myapp/components/customButton/customButton.dart';
import 'package:myapp/components/customContainer/customContainer.dart';
import 'package:myapp/components/customInput/customInput.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

bool isEmail(value)
{
  Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return false;
  else
    return true;
}

class LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body:CustomContainer(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                ),
                child: Text(
                  "Se connecter",
                  style: TextStyle(fontSize: 27),
                ),
              ),
              SizedBox(height: 110),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                  bottom: 30,
                ),
                child: CustomInput(
                  controller: email,
                  title: "Email",
                  isPassword: false,
                  validator: (value) {
                    if (value.isEmpty || !isEmail(value)) {
                      return "Entrer un email";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: CustomInput(
                  controller: password,
                  title: "Password",
                  isPassword: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Entrer un mot de passe";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 312,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25
                  ),
                  child: CustomButton(
                    title: "Se connecter",
                    press: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('Processing Data')));               
                      }
                    },
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}