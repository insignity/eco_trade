import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  String name;
  String address;
  String city;
  AddressWidget(
      {Key? key, required this.name, required this.address, required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Clr.whiteSmoke),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 16,
                width: 16,
                child: Image.asset('assets/icons/point.png')),
            const SizedBox(height: 9),
            Text(name, style: Style.txt16w500),
            Text(address, style: Style.txt16w500),
            Text(city, style: Style.txt16w500),
          ],
        ),
      ),
    );
  }
}
