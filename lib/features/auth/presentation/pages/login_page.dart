import 'package:eco_trade/core/clr.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Clr.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Добро пожаловать',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Авторизуйтесь',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Введите номер',
                                style: Theme.of(context).textTheme.headline2),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 20),
                              child: input(context, '+7 (123) 456-78-90',
                                  TextInputType.number),
                            ),
                            Text('Пароль',
                                style: Theme.of(context).textTheme.headline2),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: input(context, '********',
                                  TextInputType.visiblePassword),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: Center(
                    child: TextButton(
                      onPressed: () =>
                          Navigator.popAndPushNamed(context, '/register'),
                      child: const Text('Нет аккаунта?',
                          style: TextStyle(
                              color: Color(0x80000000),
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                      child: Text(
                        'Зарегистрироваться',
                        style: Theme.of(context).textTheme.button,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget input(BuildContext context, String hint, TextInputType textInputType) {
  return Container(
    height: 36,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(8)),
    child: TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          hintMaxLines: 1,
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6),
    ),
  );
}
