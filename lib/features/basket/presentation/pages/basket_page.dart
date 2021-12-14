import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:eco_trade/features/basket/presentation/widgets/address_widget.dart';
import 'package:eco_trade/features/basket/presentation/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

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
          child: Text('Корзина', style: Style.txt16Black),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 24,
              ))
        ],
      ),
      backgroundColor: Clr.whiteSmoke,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProductWidget(
                  image:
                      'https://www.steakhome.ru/upload/medialibrary/877/8772cbf1a780131ffda701189659e8d4.jpeg',
                  title: 'Мясо говяжее 1 кг',
                  price: 600,
                ),
                ProductWidget(
                  image:
                      'https://www.steakhome.ru/upload/medialibrary/877/8772cbf1a780131ffda701189659e8d4.jpeg',
                  title: 'Мясо говяжее 1 кг',
                  price: 600,
                ),
                ProductWidget(
                  image:
                      'https://www.steakhome.ru/upload/medialibrary/877/8772cbf1a780131ffda701189659e8d4.jpeg',
                  title: 'Мясо говяжее 1 кг',
                  price: 600,
                ),
                ProductWidget(
                  image:
                      'https://www.steakhome.ru/upload/medialibrary/877/8772cbf1a780131ffda701189659e8d4.jpeg',
                  title: 'Мясо говяжее 1 кг',
                  price: 600,
                ),
                ProductWidget(
                  image:
                      'https://img.championat.com/i/63/03/1599306303340322374.jpg',
                  title: 'Молоко 1 л',
                  price: 80,
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 16),
            height: height / 2,
            decoration: const BoxDecoration(
                // boxShadow: [BoxShadow(blurRadius: 20, spreadRadius: 2)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8))),
            child: ListView(children: [
              const Text(
                'Адрес доставки',
                style: Style.txtR18,
              ),
              const SizedBox(height: 12),
              AddressWidget(
                name: 'Иванов Иван Иванович',
                address: 'ул. Пушкина, 69. кв 34 под. 2',
                city: 'Город, Якутск',
              ),
              const SizedBox(height: 37),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ваш заказ',
                      style: Style.txtR18,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Доставка в течении 30 минут',
                      style: Style.txt16Grey66,
                    ),
                    const SizedBox(height: 23),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Товары',
                          style: Style.txt16,
                        ),
                        Text(
                          '3500₽',
                          style: Style.txt16w500,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Доставка',
                          style: Style.txt16,
                        ),
                        Text(
                          '199₽',
                          style: Style.txt16w500,
                        ),
                      ],
                    ),
                    const SizedBox(height: 23),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Итог:',
                          style: Style.txt26,
                        ),
                        Text(
                          '3699₽',
                          style: Style.txt26,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 11),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                    child:
                        Text('Перейти к оплате', style: Style.txt16Whitew700),
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
