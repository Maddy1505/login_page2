import 'package:flutter/material.dart';
import 'package:login_page/utils/global.colors.dart';
import 'package:login_page/view/widgets/button.dart';
import 'package:login_page/view/widgets/social.dart';
import 'package:login_page/view/widgets/text.form.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            //color: Colors.blue,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50.0),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),

                // Welcome Text & Login to your account
                Text(
                  'Login to your account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 50.0),

                // Email Input Field
                TextForm(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),

                const SizedBox(height: 40.0),

                // Password Input Field
                TextForm(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),

                const SizedBox(height: 35.0),

                //ButtonsForm Input Field

                const ButtonsForm(),

                //End

                const SizedBox(height: 35.0),

                // Sign in with social media
                
                SocialForm(),

              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                color: GlobalColors.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' Sign Up',
              style: TextStyle(
                color: GlobalColors.mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
