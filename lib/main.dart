import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:eco_trade/features/auth/presentation/pages/register_page.dart';
import 'package:eco_trade/features/basket/presentation/pages/basket_page.dart';
import 'package:eco_trade/features/history/presentation/pages/history_page.dart';
import 'package:eco_trade/features/home/presentation/pages/company_page.dart';
import 'package:eco_trade/features/home/presentation/pages/home_page.dart';
import 'package:eco_trade/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:eco_trade/features/profile/presentation/pages/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

import 'features/auth/presentation/pages/auth_page.dart';
import 'features/auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  FirebaseAuth auth = FirebaseAuth.instance;

  void register() {
    registerWithMail();
  }

  Future<UserCredential?> registerWithMail() async {
    try {
      auth.createUserWithEmailAndPassword(
          email: 'foo@bar.com', password: 'password');
    } catch (signUpError) {
      if (signUpError is PlatformException) {
        if (signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
          /// `foo@bar.com` has alread been registered.
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: Style.txt28w500,
            headline2: Style.txt16w500,
            headline3: Style.txt16w400,
            headline5: Style.txt12w400,
            headline6: Style.txt16w400o35,
            button: Style.txt16Whitew700),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
                backgroundColor: MaterialStateProperty.all(Clr.primary))),
        primaryColor: Clr.primary,
      ),
      routes: {
        '/': (BuildContext context) => const AuthorizationPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/home/company': (BuildContext contex) => const CompanyPage(),
        //'/home/company/description': (BuildContext contex) => const CompanyDescriptionPage(),
        '/basket': (BuildContext context) => const BasketPage(),
        '/profile': (BuildContext context) => const ProfilePage(),
        '/profile/edit': (BuildContext context) => const EditProfilePage(),
        '/history': (BuildContext context) => const HistoryPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (BuildContext context) => RegisterPage(),

        /* 
          '/error': (BuildContext context) {
            return const Error();
          },
          '/loading': (BuildContext context) {
            return const Loading();
          }, */
      },
      initialRoute: '/',
      /* home: StreamBuilder(
          stream: auth.userChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Scaffold(
                body: Center(
                  child: Text('Something went wrong'),
                ),
              );
            } else if (!snapshot.hasData) {
              return ElevatedButton(onPressed: register, child: Text('Login'));
            }
            return HomePage();
          },
        ) */
    );
  }
}
