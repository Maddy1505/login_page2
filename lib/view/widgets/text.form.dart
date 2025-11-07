import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,

    /* Constructor */

    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    this.prefixIcon,
    this.isPasswordField = false,
  });
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;                 /* True or False condition */
  final IconData? prefixIcon;
  final bool isPasswordField;         /* True or False condition */

  @override
  Widget build(BuildContext context) {

    /*final ValueNotifier<bool> obscureNotifier = ValueNotifier<bool>(obscure);    //ObScureNotifier

    return ValueListenableBuilder<bool>(
      valueListenable: obscureNotifier,
      builder: (context, isObscured, _) { */

    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text, //hinttext
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(height: 1),

          /* Show lock for password, or prefix icon if given */

          /*prefixIcon: isPasswordField
                ? const Icon(Icons.lock)
                : (prefixIcon != null ? Icon(prefixIcon) : null),

            /* Eye icon toggle for password fields*/
            
            suffixIcon: isPasswordField
                ? IconButton(
                    icon: Icon(
                      isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      obscureNotifier.value = !isObscured;
                    },
                  )
                : null,*/
        ),
      ),

      /* ); */
      /* } */


    );
  }
}
