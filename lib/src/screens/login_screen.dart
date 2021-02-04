import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailInput(),
          passwordInput(),
          SizedBox(
            height: 8.0,
          ),
          loginButton(),
        ],
      ),
    );
  }

  Widget emailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@email.com',
        labelText: 'Email Address',
      ),
    );
  }

  Widget passwordInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Passsword',
      ),
      obscureText: true,
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Login'),
    );
  }
}
