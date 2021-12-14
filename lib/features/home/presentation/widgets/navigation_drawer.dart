import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Clr.whiteSmoke,
        child: ListView(
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: buildProfile(
                  name: 'Иван',
                  surname: 'Иванов',
                  phoneNumber: '+1(111)-111-11-11'),
            ),
            buildMenuItem(context,
                text: 'История заказов',
                icon: Image.asset('assets/icons/clock.png'),
                routeName: '/history'),
            buildMenuItem(context,
                text: 'Мои адреса', icon: Image.asset('assets/icons/home.png')),
            buildMenuItem(context,
                text: 'Курьерам',
                icon: Image.asset('assets/icons/planner.png')),
            SizedBox(height: 10),
            buildMenuItem(context,
                text: 'Служба Поддержки ',
                icon: Image.asset('assets/icons/phone.png')),
            buildMenuItem(context,
                text: 'Информация',
                icon: Image.asset('assets/icons/paper.png')),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(BuildContext context,
    {required String text, required Widget icon, String? routeName}) {
  return InkWell(
    onTap: () =>
        routeName == null ? {} : Navigator.pushNamed(context, routeName),
    child: Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: icon),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: icon,
              // ),
              Text(
                text,
                style: Style.txt16,
              )
            ],
          ),
        ),
        SizedBox(height: 2)
      ],
    ),
  );
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
          children: [
            // Avatar
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name + ' ' + surname,
                  style: Style.txt16,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  phoneNumber,
                  style: Style.txt16gray,
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 2,
      )
    ],
  );
}
