import 'package:core/core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Modular.to.pushNamedAndRemoveUntil('/home', (_) => false);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
