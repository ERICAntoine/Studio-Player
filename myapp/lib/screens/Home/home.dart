import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/components/customButton/customButton.dart';
import 'package:myapp/screens/Login/login.dart';
import 'package:myapp/screens/Register/register.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black,
                Colors.black,
                Colors.black12,
                Colors.white24,
              ],
            ),
          ),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 200,
                    left: 150,
                ),
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(-0.3,-0.2),
                      child: SizedBox(
                        height: 45,
                        width: 45,
                        child: SvgPicture.asset("assets/play-button.svg"),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: Text(
                        "Studio",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Laila',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Padding(
              padding: const EdgeInsets.only(
                right: 55,
                left: 55,
              ),
              child: CustomButton(
                  title: 'Login',
                  press: () {
                    Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return Login();
                    }));   
                  },
                )
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 55,
                    left: 55,
                    top: 25,
                ),
                child: CustomButton(
                    title: 'Register',
                    press: () {
                      Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                          return Register();
                      }));   
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}