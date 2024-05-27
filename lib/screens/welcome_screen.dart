import 'package:flutter/material.dart';
import 'package:paygah1/screens/signin_screen.dart';
import 'package:paygah1/screens/signup_screen.dart';
import 'package:paygah1/widgets/custom_scaffold.dart';
import 'package:paygah1/widgets/welcome_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(context) {
    final localizations = AppLocalizations.of(context)!;
    return CustomScaffold(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            // Row(
            //   children: [
            //     OutlinedButton.icon(
            //       onPressed: () {},
            //       style: OutlinedButton.styleFrom(
            //         foregroundColor: Colors.white,
            //         backgroundColor: Colors.transparent,
            //         side: const BorderSide(color: Colors.transparent),
            //       ),
            //       icon: const  Icon(
            //         Icons.chevron_right,
            //         size: 25,
            //       ),
            //       label: const Text(
            //         'رد کردن',
            //         style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),
            //       ),
            //     ),
            //   ],
            // ),
            const Image(
              image: AssetImage(
                'assets/images/quiz-logo.png',
              ),
              width: 200,
            ),
            const SizedBox(
              height: 100,
            ),
             Text(
              localizations.welcome,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const Flexible(
                child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'ثبت نام',
                      textColor: Colors.white,
                      buttonColor: Colors.transparent,
                      buttonPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 0,
                      ),
                      activeScreen: SignUpScreen(),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'ورود',
                      textColor: Color.fromARGB(255, 51, 79, 119),
                      buttonColor: Colors.white,
                      buttonPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 0,
                      ),
                      activeScreen: SignInScreen(),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
