import 'package:flutter/material.dart';
import 'package:flutterfood/screens/auth/login_page.dart';
import 'package:flutterfood/screens/auth/widgets/heading.dart';

class RegisterScreen extends StatelessWidget {
  double _deviceWidth = 0;
  double _deviceHeight = 0;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _loginPageUI(context, _deviceWidth),
    );
  }
}

Widget _loginPageUI(context, _deviceWidth) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
    child: Column(
      children: <Widget>[
        Container(height: 50),
        Heading(),
        Container(height: 20),
        _formLogin(context),
        Container(height: 15),
        _loginButton(context, _deviceWidth),
        Container(height: 30),
        _textRegister(context),
      ],
    ),
  );
}

Widget _formLogin(context) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(143, 148, 251, 0.6),
              blurRadius: 20.0,
              offset: Offset(0, 10))
        ]),
    child: Column(
      children: <Widget>[
        _nameTextField(context),
        _emailTextField(context),
        _passwordTextField(context)
      ],
    ),
  );
}

Widget _nameTextField(context) {
  return TextFormField(
    autocorrect: false,
    autofocus: true,
    style: TextStyle(color: Theme.of(context).primaryColor),
    cursorColor: Theme.of(context).primaryColor,
    decoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        contentPadding: EdgeInsets.all(10),
        hintText: 'Nome',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
  );
}

Widget _emailTextField(context) {
  return TextFormField(
    autocorrect: false,
    autofocus: false,
    style: TextStyle(color: Theme.of(context).primaryColor),
    cursorColor: Theme.of(context).primaryColor,
    decoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        contentPadding: EdgeInsets.all(10),
        hintText: 'E-mail',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
  );
}

Widget _passwordTextField(context) {
  return TextFormField(
    autocorrect: false,
    autofocus: true,
    obscureText: true,
    style: TextStyle(color: Theme.of(context).primaryColor),
    cursorColor: Theme.of(context).primaryColor,
    decoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor)),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.all(10),
        hintText: 'Senha',
        hintStyle: TextStyle(color: Theme.of(context).primaryColor)),
  );
}

Widget _loginButton(context, _deviceWidth) {
  return Container(
    width: _deviceWidth,
    child: MaterialButton(
      onPressed: () {
        print('clicou');
        Navigator.pushReplacementNamed(context, '/restaurants');
      },
      color: Theme.of(context).primaryColor,
      child: Text('Cadastrar'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}

Widget _textRegister(context) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Text('Já tem cadastro? faça login.',
          style: TextStyle(color: Theme.of(context).primaryColor)));
}
