import 'package:flutter/material.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';
import './introScreen.dart';

class NewPwScreen extends StatelessWidget {
  static const routeName = "/newPw";
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
                SizedBox(
                  height: 20,
                ),
                Text("Nova Senha", style: Helper.getTheme(context).headline6),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Digite sua nova senha abaixo usando letras maiúsculas e numeros.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextInput(hintText: "Nova Senha"),
                SizedBox(
                  height: 20,
                ),
                CustomTextInput(
                  hintText: "Confirme a senha",
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(IntroScreen.routeName);
                    },
                    child: Text("Proximo"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
