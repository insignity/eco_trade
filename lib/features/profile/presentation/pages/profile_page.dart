import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
          child: Text('Мой профиль', style: Style.txt16Black),
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
            buildProfile(
                name: 'Иван',
                surname: 'Иванов',
                phoneNumber: '+1(111)-111-11-11'),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/profile/edit'),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                    child: Text('Редактировать профиль',
                        style: Style.txt16Whitew700),
                  )),
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                    child: Text('Выйти', style: Style.txt16Whitew700),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProfile(
    {required String name,
    required String surname,
    required String phoneNumber,
    String image = ''}) {
  return Column(
    children: [
      Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Avatar
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name + ' ' + surname,
                  style: Style.txt24,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  phoneNumber,
                  style: Style.txt16gray,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipOval(
                  child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(40),
                  ),
                  border: Border.all(
                    width: 1,
                    color: Clr.gainsboro,
                    style: BorderStyle.solid,
                  ),
                  color: image == '' ? Clr.whiteSmoke : null,
                ),
                child: image == '' ? null : Image.network(image),
              )),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 2,
      )
    ],
  );
}
