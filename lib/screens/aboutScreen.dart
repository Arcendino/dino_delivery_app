import 'package:flutter/material.dart';
import 'package:dino_delivery_demo/const/colors.dart';
import 'package:dino_delivery_demo/utils/helper.dart';
import 'package:dino_delivery_demo/widgets/customNavBar.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/aboutScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Sobre nós",
                          style: Helper.getTheme(context).headline5,
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName("cart.png", "virtual"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      AboutCard(),
                      SizedBox(
                        height: 20,
                      ),
                      AboutCard(),
                      SizedBox(
                        height: 20,
                      ),
                      AboutCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutCard extends StatelessWidget {
  const AboutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: AppColor.orange,
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              "É importante cuidar do paciente, ser acompanhado pelo cliente, mas ao mesmo tempo ele será afetado por algumas grandes dores e sofrimentos. Pois, para chegar aos mínimos detalhes, ninguém deve praticar nenhum tipo de trabalho, a menos que dele tire algum benefício. Não fique zangado com a dor na repreensão, no prazer que ele quer ser um fio de cabelo da dor, deixe-o fugir da dor. A menos que sejam cegados pela luxúria, eles não saem; são culpados aqueles que abandonam seus deveres e amolecem seus corações, isso é labuta.",
              style: TextStyle(
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
