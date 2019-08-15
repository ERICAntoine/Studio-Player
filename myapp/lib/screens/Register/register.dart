import "package:flutter/material.dart";
import 'package:myapp/components/customButton/customButton.dart';
import 'package:myapp/components/customContainer/customContainer.dart';
import 'package:myapp/components/customInput/customInput.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() {
    return RegisterState();
  }
}

bool isEmail(value) {
  Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return false;
  else
    return true;
}

class RegisterState extends State<Register> {

  final _formKey = GlobalKey<FormState>();
  final pseudo = TextEditingController();
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
      body: Builder(
        builder: (context) =>
        CustomContainer(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 45,
                  ),
                  child: Text(
                    "S'enregistrer",
                    style: TextStyle(fontSize: 27),
                  ),
                ),
                SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    bottom: 15,
                  ),
                  child: CustomInput(
                    controller: pseudo,
                    title: "Pseudo",
                    isPassword: false,
                    validator: (value) {
                      if (value.isEmpty)
                        return "Entrer un pseudo";
                      else if (value.length < 3 || value.length > 16)
                        return "Entrer un pseudo compris entre 3 et 16 caracteres";
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    bottom: 15,
                  ),
                  child: CustomInput(
                    controller: email,
                    title: "Email",
                    isPassword: false,
                    validator: (value) {
                      if (value.isEmpty || !isEmail(value))
                        return "Entrer un email";
                      return null;
                    },
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: CustomInput(
                    controller: password,
                    title: "Mot de Passe",
                    isPassword: true,
                    validator: (value) {
                      if (value.isEmpty)
                        return "Entrer un mot de passe";
                      return null;
                    },
                  )
                ),
                SizedBox(
                  width: 312,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15
                    ),
                    child: CustomButton(
                      title: "S'enregistrer",
                      press: () {
                        if (_formKey.currentState.validate()) {
                          print([pseudo.text, email.text, password.text]);
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
      ),
    );
  }
}