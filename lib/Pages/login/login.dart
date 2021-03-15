import 'package:code_group_test/Pages/start/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  bool status = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        toolbarOpacity: 1,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.grey),
          tooltip: 'Voltar',
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            )
          },
        ),
      ),
      body: Padding(
        // padding: EdgeInsets.all(30.0),
        padding: EdgeInsets.all(5.0),
        child: _body(context),
      ),
    );
  }

  String _validaLogin(String text) {
    if (text.isEmpty) {
      return "Login ou Senha Inválida.";
    }
    return null;
  }

  String _validaSenha(String text) {
    if (text.isEmpty) {
      return "Login ou Senha Inválida.";
    }
    return null;
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          // logo(context),
          login(context),
          Divider(
            color: Colors.white,
          ),
          textFormFieldEmail(),
          SizedBox(
            height: 20.0,
          ),
          textFormFieldSenha(),
          SizedBox(
            height: 10,
          ),
          containerButton(context),
        ],
      ),
    );
  }

  Container login(BuildContext context) {
    return Container(
      height: 50.0,
      width: 20.0,
      margin: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: new EdgeInsets.all(5.0),
              // height: 200.0,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontFamily: 'Comfortaa',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container containerButton(BuildContext context) {
    return Container(
      height: 50.0,
      width: 20,
      margin: EdgeInsets.only(top: 20.0),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.black,
          side: BorderSide(color: Colors.black),
        ),
        child: Text(
          "LOG IN",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        onPressed: () {
          (context);
        },
      ),
    );
  }

  Container textFormFieldEmail() {
    return Container(
      child: Form(
        autovalidate: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              //   controller: name,
              keyboardType: TextInputType.emailAddress,

              decoration: InputDecoration(
                labelText: "E-mail",
                fillColor: Colors.black,
                labelStyle: TextStyle(color: Colors.black),
                errorStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              validator: (value) {
                if (value == null || value == '') {
                  return "E-mail inválido, por favor verifique!";
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Container textFormFieldSenha() {
    return Container(
      child: Form(
        autovalidate: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              //   controller: name,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black),
                  errorStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              validator: (value) {
                if (value == null || value == '') {
                  return "Senha Inválida, por favor verifique!";
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
