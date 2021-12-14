import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var map1 = {'Мясо говяжее 1 кг': 2, 'Мясо оленя 1 кг': 3};
    var map2 = {'молоко 1 л': 3, 'Мясо говяжее 1 кг': 1};
    var map3 = {'Мясо говяжее 1 кг': 1};

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
          child: Text('История заказов', style: Style.txt16Black),
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
      body: Container(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 16),
        decoration: const BoxDecoration(
            // boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: ListView(children: [
          historyItem(map1, 'чт, 4 нояб. 2021', 4399),
          historyItem(map2, 'вт, 2 нояб. 2021', 899),
          historyItem(map3, 'вт, 2 нояб. 2021', 600),
        ]),
      ),
    );
  }
}

Widget historyItem(Map<String, int> map, String date, int price) {
  return Padding(
    padding: const EdgeInsets.only(top: 18.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Clr.whiteSmoke),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 9),
        child: Column(
          children: [
            ...productList(map),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: Style.txt16gray,
                  ),
                  Text(
                    'Итог: $price₽',
                    style: Style.txtR16Primary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

List<Widget> productList(Map<String, int> map) {
  return [
    for (var item in map.entries)
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.key,
              style: Style.txt16,
            ),
            Text(
              'x' + item.value.toString(),
              style: Style.txt16w500,
            ),
          ],
        ),
      ),
  ];
}
