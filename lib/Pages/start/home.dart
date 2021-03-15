import 'package:code_group_test/Pages/Register/register.dart';
import 'package:code_group_test/Pages/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _message = "Todo's";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // padding: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(0.0),
        child: _body(context),
      ),
    );
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          containerHome(context),
          containerButtons(context),
        ],
      ),
    );
  }

  Widget containerImages(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0.0),
      child: Image.asset(
        'assets/images/background.png',
        height: 610,
        width: 200,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget containerHome(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/background.png',
          fit: BoxFit.cover,
          height: 580,
          width: 450,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " $_message",
              style:
                  TextStyle(color: Colors.black, fontFamily: 'Roboto-Regular'),
            ),
          ],
        )
      ],
    );
  }

  Widget containerButtons(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    BorderSide(width: 2, color: Colors.black),
                  ),
                ),
                child: Text(
                  "LOG IN",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: 'Roboto-Regular',
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                minWidth: 180,
                color: Colors.black,
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Roboto-Regular'),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registrar()),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
