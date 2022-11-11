import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/widgets/button_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset('assets/logo.jpeg'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Cirugia WEB',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Facilitando sua cirugia',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ButtonLogin(text: 'ENTRAR'),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonLogin(text: 'CRIAR CONTA'),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        width: 45,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/google.png',
                        width: 45,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
