import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  String image;
  String title;
  int price;
  int count;
  ProductWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      this.count = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Clr.gainsboro,
          height: 1,
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(width: 1, color: Clr.gainsboro)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 90,
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            title,
                            style: Style.txt16,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              price.toString() + "₽",
                              style: Style.txtR16Primary,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Убрать',
                                    style: Style.txt16Grey7a,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            color: Clr.whiteSmoke,
                                            border: Border.all(
                                                color: Clr.gainsboro),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: const Center(
                                            child: Text(
                                          '-',
                                          style: Style.txt16,
                                        )))),
                                Text(
                                  count.toString(),
                                  style: Style.txt16,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            color: Clr.whiteSmoke,
                                            border: Border.all(
                                                color: Clr.gainsboro),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: const Center(
                                            child: Text(
                                          '+',
                                          style: Style.txt16,
                                        )))),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          color: Clr.gainsboro,
          height: 1,
        ),
      ],
    );
  }
}
