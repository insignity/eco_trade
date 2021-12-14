import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:eco_trade/features/home/presentation/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    var categoryList = [
      categoryWidget(
        context,
        'Мясо',
        'https://www.steakhome.ru/upload/medialibrary/877/8772cbf1a780131ffda701189659e8d4.jpeg',
      ),
      categoryWidget(
        context,
        'Молочные',
        'https://img.championat.com/i/63/03/1599306303340322374.jpg',
      ),
      categoryWidget(
        context,
        'Ягоды',
        'https://n1s1.elle.ru/27/7d/b7/277db73125c2efe50ced0da80221895e/727x503_1_7e2e1a5685553b6c8ec618ae76218550@940x650_0xc35dbb80_13501864151492600240.jpeg',
      ),
      categoryWidget(
        context,
        'Овощи',
        'https://kipmu.ru/wp-content/uploads/2021/03/vshv.jpg',
      ),
    ];

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        title: Text('СХПК “Чурапча”',
            style: Theme.of(context).textTheme.headline2),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/basket'),
                icon: Image.asset('assets/icons/basket.png')),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                companyHeadWidget(context, name: 'СХПК “Чурапча”'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      searchWidget(),
                      categoriesWidget(context, 'Категории', categoryList),
                      productsListWidget(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget companyHeadWidget(BuildContext context, {String? image, String? name}) {
  return InkWell(
    onTap: () => Navigator.pushNamed(context, '/home/company/description'),
    child: Stack(
      children: [
        image != null
            ? Image.network(
                image,
              )
            : Container(
                height: 160,
                color: Clr.primary,
              ),
        Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Clr.primary,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Clr.primary.withOpacity(0),
                    Colors.black.withOpacity(0.75),
                  ],
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 66,
                    width: 66,
                    decoration: const BoxDecoration(
                        color: Clr.primary, shape: BoxShape.circle),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    name ?? 'Company name',
                    style: Style.txt28Whitew900,
                  )
                ],
              ),
            )),
      ],
    ),
  );
}

Widget searchWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Clr.whiteSmoke),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)),
      height: 36,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Icon(
                Icons.search,
              ),
            ),
            hintText: 'Поиск',
            hintStyle: Style.txt16Grey7a,
            border: InputBorder.none),
      ),
    ),
  );
}

Widget categoriesWidget(
    BuildContext context, String title, List<Widget> categories) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline1,
            ),
            const Text(
              'Показать все',
              style: Style.txt16w400underline,
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 18,
      ),
      GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: categories),
    ],
  );
}

Widget categoryWidget(BuildContext context, String name, String imageSource) {
  double width = MediaQuery.of(context).size.width - 44;
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: width,
          width: width,
          child: Image.network(
            imageSource,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        height: 100,
      ),
      Padding(
          padding: const EdgeInsets.only(bottom: 18.0, left: 18.0),
          child: Text(name, style: Style.txt22Whitew900)),
    ],
  );
}

Widget productsListWidget(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: double.infinity,
        child: Text(
          'Список товаров',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    ],
  );
}
