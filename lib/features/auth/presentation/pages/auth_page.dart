import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Clr.background,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SizedBox(
                      height: 123,
                      width: 168,
                      child: Image.asset('assets/images/logo.png')),
                ),
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/register'),
                    child: Text(
                      'Регистрация',
                      style: Theme.of(context).textTheme.button,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: Text(
                      'Вход',
                      style: Theme.of(context).textTheme.button,
                    )),
              ),
            ],
          ),
        ));
  }
}
