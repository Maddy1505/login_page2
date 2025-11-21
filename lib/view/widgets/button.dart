// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:login_page/utils/global.colors.dart';
import 'package:login_page/view/screen.view.dart';

class ButtonsForm extends StatelessWidget {
  const ButtonsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print('Login');
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => ScreenView()));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
          ],
        ),
        child: const Text(
          'Sing In',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class ButtonsFormUp extends StatelessWidget {
  const ButtonsFormUp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print('Login');
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => ScreenView()));
        
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
          ],
        ),
        child: const Text(
          'Sing Up',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}


