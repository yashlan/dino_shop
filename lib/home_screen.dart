import 'package:dino_shop/utils/constant.dart';
import 'package:dino_shop/utils/show_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:dino_shop/model/dino_list.dart';
import 'package:dino_shop/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return buildAllComponents(size, 2);
            } else if (constraints.maxWidth <= 1200) {
              return buildAllComponents(size, 3);
            } else {
              return buildAllComponents(size, 4);
            }
          },
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}

Widget buildAllComponents(Size size, int gridCount) {
  return Column(
    children: <Widget>[
      Column(
        children: [
          //Text('size width: ${size.width}'),
          HeaderAndSearch(),
          const TabCategoryList(),
        ],
      ),
      Expanded(
        child: DinoPlaceGrid(gridCount: gridCount),
      ),
    ],
  );
}

class HeaderAndSearch extends StatelessWidget {
  final _textEditingcontroller = TextEditingController();

  HeaderAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.15,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Welcome to\n',
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.black,
                                fontFamily: 'RobotoMedium',
                              ),
                            ),
                            TextSpan(
                              text: 'Dino Shop',
                              style: TextStyle(
                                  fontSize: 43,
                                  color: Color(secondaryColor),
                                  fontFamily: 'RobotoBold'),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        iconSize: 27,
                        splashRadius: 15,
                        alignment: Alignment.topRight,
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () => showAlertDialog(
                            (context), 'anda mengklik cart button'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextField(
                      style: const TextStyle(fontFamily: 'RobotoRegular'),
                      controller: _textEditingcontroller,
                      onTap: () => _textEditingcontroller.clear(),
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ImageIcon(
                            AssetImage('images/icons/icon_search.png'),
                          ),
                        ),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 1.8,
                  child: IconButton(
                    splashRadius: 1,
                    onPressed: () => showAlertDialog(
                        context, 'anda mengklik filter search button'),
                    icon: Image.asset('images/icons/icon_filter_search.png'),
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

class TabCategoryList extends StatefulWidget {
  const TabCategoryList({super.key});

  @override
  State<StatefulWidget> createState() => TabCategoryListState();
}

class TabCategoryListState extends State<TabCategoryList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final int tabLength = 4;
  var tabTextStyle = const TextStyle(fontSize: 14, fontFamily: 'RobotoMedium');

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: 0, length: tabLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 3, bottom: 3),
      child: TabBar(
        controller: _tabController,
        indicatorColor: Colors.transparent,
        labelColor: Color(secondaryColor),
        unselectedLabelColor: Colors.grey.withOpacity(0.5),
        labelPadding: const EdgeInsets.symmetric(horizontal: 35),
        isScrollable: true,
        tabs: <Widget>[
          Tab(
            child: Text(
              'POPULAR',
              style: tabTextStyle,
            ),
          ),
          Tab(
            child: Text(
              'CARNIVORA',
              style: tabTextStyle,
            ),
          ),
          Tab(
            child: Text(
              'HERBIVORA',
              style: tabTextStyle,
            ),
          ),
          Tab(
            child: Text(
              'OMNIVORA',
              style: tabTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}

class DinoPlaceGrid extends StatelessWidget {
  const DinoPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: gridCount,
          childAspectRatio: 9 / 10,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: dinoList.map((dino) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(dino: dino);
                }));
              },
              child: Expanded(
                child: Card(
                  surfaceTintColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      width: 2.5,
                      color: Color(primaryColor),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          dino.imageAsset,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: Color(primaryColor),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  dino.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'RobotoBold',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 1),
                            Row(
                              children: <Widget>[
                                const Icon(Icons.monetization_on,
                                    color: Colors.white),
                                Text(
                                  dino.price,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'RobotoMedium',
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.live_tv),
          label: 'Live',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout),
          label: 'My Order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(secondaryColor),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: (index) => setState(() {
        _currentIndex = index;
      }),
    );
  }
}
