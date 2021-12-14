import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Center(
          child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        title: const Center(
          child: Text('Редактировать профиль', style: Style.txt16Black),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 24,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 29),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Clr.whiteSmoke, shape: BoxShape.circle),
                child: const Icon(
                  Icons.person_outline_outlined,
                  size: 48,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: input('Фамилия'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: input('Имя'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: input('Город'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: input('E-mail'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                      child:
                          Text('Сохранить данные', style: Style.txt16Whitew700),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget input(String hint) {
  return Container(
    height: 36,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Clr.whiteSmoke, borderRadius: BorderRadius.circular(8)),
    child: TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          hintMaxLines: 1,
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Style.txt16gray),
    ),
  );
}
