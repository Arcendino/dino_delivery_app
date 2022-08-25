import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Helper.getScreenWidth(context),
      height: Helper.getScreenHeight(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "Sair",
                style: Helper.getTheme(context).headline6,
              ),
              Spacer(),
              Text(
                "Adicione seus dados para se inscrever",
              ),
              Spacer(),
              CustomTextInput(hintText: "Nome"),
              Spacer(),
              CustomTextInput(hintText: "Email"),
              Spacer(),
              CustomTextInput(hintText: "Número do celular"),
              Spacer(),
              CustomTextInput(hintText: "Endereço"),
              Spacer(),
              CustomTextInput(hintText: "Senha"),
              Spacer(),
              CustomTextInput(hintText: "Confirme a Senha"),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sair"),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Já tem uma conta?"),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
