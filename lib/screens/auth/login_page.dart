import 'package:flutter/material.dart';

class LoginScrenn extends StatelessWidget {
  const LoginScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Text(
          'Login',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
