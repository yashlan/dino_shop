import 'package:dino_shop/model/dino_list.dart';
import 'package:dino_shop/utils/constant.dart';
import 'package:dino_shop/utils/show_alert_dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Dino dino;
  const DetailScreen({Key? key, required this.dino}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mw = constraints.maxWidth;
        if (mw <= 360) {
          return DetailDino(
            dino: dino,
            imageSize: 280,
            paddingHorizCardDesc: 3,
            additionalHeight: 50,
          );
        } else if (mw <= 500) {
          return DetailDino(
            dino: dino,
            imageSize: 300,
            paddingHorizCardDesc: 4,
            additionalHeight: 0,
          );
        } else if (mw <= 600) {
          return DetailDino(
            dino: dino,
            imageSize: 350,
            paddingHorizCardDesc: 10,
            additionalHeight: 50,
          );
        } else if (mw <= 700) {
          return DetailDino(
            dino: dino,
            imageSize: 400,
            paddingHorizCardDesc: 30,
            additionalHeight: 100,
          );
        } else if (mw <= 800) {
          return DetailDino(
            dino: dino,
            imageSize: 450,
            paddingHorizCardDesc: 50,
            additionalHeight: 160,
          );
        } else if (mw <= 900) {
          return DetailDino(
            dino: dino,
            imageSize: 500,
            paddingHorizCardDesc: 60,
            additionalHeight: 210,
          );
        } else if (mw <= 1000) {
          return DetailDino(
            dino: dino,
            imageSize: 500,
            paddingHorizCardDesc: 80,
            additionalHeight: 240,
          );
        } else if (mw <= 1100) {
          return DetailDino(
            dino: dino,
            imageSize: 530,
            paddingHorizCardDesc: 100,
            additionalHeight: 300,
          );
        } else if (mw <= 1200) {
          return DetailDino(
            dino: dino,
            imageSize: 580,
            paddingHorizCardDesc: 100,
            additionalHeight: 350,
          );
        } else if (mw <= 1300) {
          return DetailDino(
            dino: dino,
            imageSize: 630,
            paddingHorizCardDesc: 110,
            additionalHeight: 400,
          );
        } else {
          return DetailDino(
            dino: dino,
            imageSize: 800,
            paddingHorizCardDesc: 150,
            additionalHeight: 450,
          );
        }
      },
    );
  }
}

class DetailDino extends StatelessWidget {
  final Dino dino;
  final double imageSize;
  final double paddingHorizCardDesc;
  final double additionalHeight;
  const DetailDino({
    Key? key,
    required this.dino,
    required this.imageSize,
    required this.paddingHorizCardDesc,
    required this.additionalHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(primaryColor),
      appBar: AppBar(
        backgroundColor: Color(primaryColor),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (() =>
                  showAlertDialog(context, 'anda mengklik cart button')),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                color: Color(primaryColor),
                height: (size.height / 2) + additionalHeight,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    dino.imageAsset,
                    fit: BoxFit.cover,
                    width: imageSize,
                    height: imageSize,
                  ),
                ),
              ),
              SizedBox(
                height: (size.height / 2) +
                    (kIsWeb ? 100 : (size.width > 350 ? 30 : 150)),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: paddingHorizCardDesc,
                        right: paddingHorizCardDesc,
                      ),
                      height: size.width > 350 ? 400 : 600,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              children: <Widget>[
                                Image.asset('images/icons/icon_line.png'),
                                const SizedBox(width: 10),
                                Text(
                                  dino.category.name.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color(primaryColor),
                                    fontFamily: 'RobotoBold',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dino.name,
                                  style: const TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Color(secondaryColor),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      r'$' + dino.price,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              top: 15,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Text(
                                      textAlign: TextAlign.start,
                                      'Description',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  textAlign: TextAlign.start,
                                  dino.desc,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'RobotoRegular',
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const ButtonBuyAndAmountCounter(),
                        ],
                      ),
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
}

class ButtonBuyAndAmountCounter extends StatefulWidget {
  const ButtonBuyAndAmountCounter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ButtonBuyAndAmountCounterState();
}

class ButtonBuyAndAmountCounterState extends State<ButtonBuyAndAmountCounter> {
  int currentAmount = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width > 350
        ? _normalButtonBuyAndAmount()
        : _smallButtonBuyAndAmount();
  }

  Widget _normalButtonBuyAndAmount() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                      icon: Image.asset('images/icons/icon_button_min.png'),
                      onPressed: () => _decrement()),
                ),
                const SizedBox(width: 15),
                Text(
                  currentAmount.toString(),
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(width: 15),
                Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                    icon: Image.asset('images/icons/icon_button_plus.png'),
                    onPressed: () => _increment(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () =>
                      showAlertDialog(context, 'anda mengklik tombol Buy'),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Color(secondaryColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 40,
                      right: 40,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Buy',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _smallButtonBuyAndAmount() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Transform.scale(
                  scale: 1.2,
                  child: IconButton(
                      icon: Image.asset('images/icons/icon_button_min.png'),
                      onPressed: () => _decrement()),
                ),
                const SizedBox(width: 8),
                Text(
                  currentAmount.toString(),
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                const SizedBox(width: 8),
                Transform.scale(
                  scale: 1.2,
                  child: IconButton(
                    icon: Image.asset('images/icons/icon_button_plus.png'),
                    onPressed: () => _increment(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () =>
                      showAlertDialog(context, 'anda mengklik tombol Buy'),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Color(secondaryColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                      right: 35,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Buy',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      currentAmount >= 99 ? 99 : currentAmount++;
    });
  }

  void _decrement() {
    setState(() {
      currentAmount <= 0 ? 0 : currentAmount--;
    });
  }
}
