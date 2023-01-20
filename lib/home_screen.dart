import 'dart:html';

import 'package:flutter/material.dart';
import 'package:dino_shop/model/dino_list.dart';
import 'package:dino_shop/detail_screen.dart';

final int greenColor = const Color(0xFF00B761).value;

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            HeaderAndSearch(),
            const DinoPlaceGrid(gridCount: 2),
          ],
        ),
      ),
    );
  }
}

Future<void> showAlertDialog(BuildContext context, String msg) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: Text(msg),
    ),
  );
}

class HeaderAndSearch extends StatelessWidget {
  final _textEditingcontroller = TextEditingController();

  HeaderAndSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 35, right: 35),
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.2 - 27,
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'Welcome to\n',
                          style: const TextStyle(
                              fontSize: 27, fontFamily: 'RobotoMedium'),
                          children: [
                            TextSpan(
                              text: 'Dino Shop',
                              style: TextStyle(
                                  fontSize: 43,
                                  color: Color(greenColor),
                                  fontFamily: 'RobotoBold'),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        alignment: Alignment.topRight,
                        icon: Image.asset('images/icons/icon_cart.png'),
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
                  child: TextField(
                    style: const TextStyle(fontFamily: 'RobotoRegular'),
                    controller: _textEditingcontroller,
                    onTap: () => _textEditingcontroller.clear(),
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ImageIcon(
                            AssetImage('images/icons/icon_search.png')),
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => showAlertDialog(
                      context, 'anda mengklik filter search button'),
                  icon: Image.asset('images/icons/icon_filter_search.png'),
                ),
              ],
            ),
          )
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
  var tabTextStyle = const TextStyle(fontSize: 14, fontFamily: 'RobotoMedium');

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: TabBar(
        controller: _tabController,
        indicatorColor: Colors.transparent,
        labelColor: const Color(0xFF00B761),
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
  final int gridCount;

  const DinoPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: dinoList.map((dino) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen();
              }));
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      dino.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      dino.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'RobotoBold',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      dino.price,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
