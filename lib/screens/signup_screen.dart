import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paygah1/screens/signin_screen.dart';
import 'package:paygah1/widgets/custom_scaffold.dart';
import 'package:paygah1/widgets/text_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formSignUpKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  bool _enableButton = false;
  bool _enableButtonFullName = false;
  bool _enableButtonPhonenumber = false;
  bool _enableButtonConfirmpass = false;
  double topMargin = 600;

  // late final Widget? activeScreen;
  //
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = SignInScreen();
  //   });
  // }

  void containerAnimation() {
    setState(() {
      topMargin = 0;
    });
  }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 450)).then((value) {
      containerAnimation();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(height: 10),
            ),
            Expanded(
              flex: 3,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                margin: EdgeInsetsDirectional.only(top: topMargin),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignUpKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        const Text(
                          'مشخصات خود را وارد کنید',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 51, 79, 119),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            if (value.isEmpty) {
                              setState(() {
                                _enableButtonFullName = false;
                              });
                            } else {
                              setState(() {
                                _enableButtonFullName = true;
                              });
                            }
                          },
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'لظفا نام و نام خانوادگی خود را وارد کنید';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            label: const Text(
                              'نام و نام خانوادگی',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            hintText: 'نام و نام خانوادگی را وارد کنید',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            if (value.isEmpty) {
                              setState(() {
                                _enableButtonPhonenumber = false;
                              });
                            } else {
                              setState(() {
                                _enableButtonPhonenumber = true;
                              });
                            }
                          },
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'لظفا شماره موبایل خود را وارد کنید';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone_in_talk_rounded),
                            label: const Text(
                              'شماره موبایل',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            hintText: 'شماره موبایل خود را وارد کنید',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: _pass,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'لظفا رمز عبور خود را وارد کنید';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length > 8) {
                              if (value.isNotEmpty) {
                                setState(() {
                                  _enableButton = true;
                                });
                              }
                            } else {
                              setState(() {
                                _enableButton = false;
                              });
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key_rounded),
                            label: const Text(
                              'رمز عبور',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            hintText:
                                'رمز عبور خود را وارد کنید(حداقل۸کاراکنر)',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            if (value.isEmpty || value != _pass.value.text) {
                              setState(() {
                                _enableButtonConfirmpass = false;
                              });
                            } else {
                              setState(() {
                                _enableButtonConfirmpass = true;
                              });
                            }
                          },
                          controller: _confirmPass,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          obscureText: true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value != _pass.text) {
                              return 'رمز عبور با رمز قبلی تطببق ندارد';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key_rounded),
                            label: const Text(
                              'تکرار رمز عبور',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            hintText: 'رمز عبور خود را مجددا وارد کنید',
                            hintStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          width: 200,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'قبلا عضو شده اید؟ ',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              CustomButton(
                                activeScreen: SignInScreen(),
                                linkedText: 'واردشوید ',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 51, 79, 119),
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    disabledBackgroundColor:
                                        const Color.fromARGB(66, 51, 79, 119)),
                                onPressed: _enableButton == false ||
                                        _enableButtonConfirmpass == false ||
                                        _enableButtonFullName == false ||
                                        _enableButtonPhonenumber == false
                                    ? null
                                    : () {
                                        if (_enableButton == true &&
                                            _enableButtonPhonenumber == true &&
                                            _enableButtonFullName == true &&
                                            _enableButtonConfirmpass == true) {}
                                      },
                                child: const Text(
                                  'ثبت نام',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
