import 'package:flutter/material.dart';
import 'package:dino_delivery_demo/screens/forgetPwScreen.dart';

import '../const/colors.dart';
import '../screens/forgetPwScreen.dart';
import '../screens/signUpScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text('Adicione seus dados para fazer login'),
                Spacer(),
                CustomTextInput(
                  hintText: "Digite seu email",
                ),
                Spacer(),
                CustomTextInput(
                  hintText: "Digite sua senha",
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("Esqueceu sua senha?"),
                ),
                Spacer(
                  flex: 2,
                ),
                Text("Ou Entra Como"),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFF367FC0,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "fb.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login com sua conta Facebook")
                      ],
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(
                          0xFFDD4B39,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Helper.getAssetName(
                            "google.png",
                            "virtual",
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Login com sua conta Google")
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem uma conta?"),
                      Text(
                        "Inscrever-se",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
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
