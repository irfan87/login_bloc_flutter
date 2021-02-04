import 'package:flutter/material.dart';
import 'package:login_bloc/src/blocs/provider.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Log Me In',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
