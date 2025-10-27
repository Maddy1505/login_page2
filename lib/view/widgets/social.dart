import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/utils/global.colors.dart';

class SocialForm extends StatelessWidget {
  const SocialForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '-- OR sign in with --',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        const SizedBox(height: 50.0),

        // Social Media Buttons

        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            children: [
          
              // Google Button Icon
          
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10
                      )
                    ]
                  ),
                  child: SvgPicture.asset(
                    'assets/images/google.svg.svg',
                    height: 30
                  ),
                ),
              ),
          
              const SizedBox(width: 20.0),
          
              // Facebook Button Icon
          
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg.svg',
                    height: 30,
                  ),
                ),
              ),
          
              const SizedBox(width: 20.0),
          
              // Twitter Button Icon
          
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg.svg',
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}