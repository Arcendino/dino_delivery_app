import 'package:flutter/material.dart';
import 'package:dino_delivery_demo/const/colors.dart';
import 'package:dino_delivery_demo/screens/homeScreen.dart';
import 'package:dino_delivery_demo/utils/helper.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/introScreen";

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "vector1.png",
      "title": "Encontre os Melhores Restaurantes",
      "desc":
          "Descubra os melhores alimentos em mais de 1.000 restaurantes e entrega rápida à sua porta"
    },
    {
      "image": "vector2.png",
      "title": "Entrega rápida",
      "desc":
          "Entrega de fast food em sua casa, escritório onde quer que esteja"
    },
    {
      "image": "vector3.png",
      "title": "Rastreie sua Entrega",
      "desc":
          "Rastreio em tempo real de sua entrega no aplicativo depois que fizer o pedido."
    },
  ];

  @override
  void initState() {
    _controller = new PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(Helper.getAssetName(
                          _pages[index]["image"], "virtual"));
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 0 ? AppColor.orange : AppColor.placeholder,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 1 ? AppColor.orange : AppColor.placeholder,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 2 ? AppColor.orange : AppColor.placeholder,
                    )
                  ],
                ),
                Spacer(),
                Text(
                  _pages[count]["title"],
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text(
                  _pages[count]["desc"],
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: Text("Next")),
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
