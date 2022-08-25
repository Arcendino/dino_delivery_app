import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import './newPwScreen.dart';

class SendOTPScreen extends StatelessWidget {
  static const routeName = "/sendOTP";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Enviamos um SMS para Seu Telefone Móvel',
              style: Helper.getTheme(context).headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Verifique seu número de celular 011*****12 continue a redefinir sua senha",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPInput(),
                OTPInput(),
                OTPInput(),
                OTPInput(),
              ],
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
                      .pushReplacementNamed(NewPwScreen.routeName);
                },
                child: Text("Next"),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Não Recebeu? "),
                Text(
                  "Clique aqui",
                  style: TextStyle(
                    color: AppColor.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: Text(
              "*",
              style: TextStyle(fontSize: 45),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
