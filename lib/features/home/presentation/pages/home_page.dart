import 'package:eco_trade/core/clr.dart';
import 'package:eco_trade/core/style.dart';
import 'package:eco_trade/features/home/presentation/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Clr.background,
        leading: Center(
          child: IconButton(
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            icon: Image.asset(
              'assets/icons/menu.png',
            ),
          ),
        ),
        title: Text('Главная', style: Theme.of(context).textTheme.headline2),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/basket'),
                icon: Image.asset('assets/icons/basket.png')),
          )
        ],
      ),
      drawer: NavigationDrawerWidget(),
      backgroundColor: Clr.background,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Поставщики',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    companyWidget(context,
                        title: 'СХПК "Чурапча"',
                        text:
                            'Сельскохозяйственный потребительский кооператив «Чурапча»'),
                    companyWidget(context,
                        title: 'СХПК "Чурапча"',
                        text:
                            'Сельскохозяйственный потребительский кооператив «Чурапча»'),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

Widget companyWidget(BuildContext context,
    {required String title,
    required String text,
    String? image,
    String? avatar}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Company
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/home/company'),
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
                ),
              ],
            ),
          ),
          // Title
          Container(
            height: 80,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 7, 0, 7),
              child: Row(
                children: [
                  Container(
                    height: 66,
                    width: 66,
                    decoration: const BoxDecoration(
                        color: Clr.primary, shape: BoxShape.circle),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(height: 7),
                          Flexible(
                            child: Text(
                              text,
                              maxLines: 2,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
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
          child: Text(name, style: Style.txtM16)),
    ],
  );
}
