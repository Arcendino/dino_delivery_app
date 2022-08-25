import 'package:flutter/material.dart';
import 'package:dino_delivery_demo/const/colors.dart';
import 'package:dino_delivery_demo/utils/helper.dart';
import 'package:dino_delivery_demo/widgets/customNavBar.dart';
import 'package:dino_delivery_demo/widgets/customTextInput.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Perfil",
                            style: Helper.getTheme(context).headline5,
                          ),
                          Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Stack(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                Helper.getAssetName(
                                  "user.jpg",
                                  "real",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 20,
                                width: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Image.asset(Helper.getAssetName(
                                    "camera.png", "virtual")),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName("edit_filled.png", "virtual"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Editar Perfil",
                            style: TextStyle(color: AppColor.orange),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Olá Dino",
                        style: Helper.getTheme(context).headline4.copyWith(
                              color: AppColor.primary,
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sair"),
                      SizedBox(
                        height: 40,
                      ),
                      CustomFormImput(
                        label: "Nome",
                        value: "Dino Queiroz",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormImput(
                        label: "Email",
                        value: "dinoqueiroz@email.com",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormImput(
                        label: "Telefone",
                        value: "dinoqueiroz@email.com",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormImput(
                        label: "Endereço",
                        value: "Rua New York, 245 Brooklin - Sao Paulo",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormImput(
                        label: "Senha",
                        value: "Dino Queiroz",
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormImput(
                        label: "Confirma Senha",
                        value: "Dino Queiroz",
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Salva"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              profile: true,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    Key key,
    String label,
    String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword,
        super(key: key);

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
