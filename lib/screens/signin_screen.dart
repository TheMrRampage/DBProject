import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paygah1/screens/restaurants_screen.dart';
import 'package:paygah1/widgets/custom_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey = GlobalKey<FormState>();
  double topMargin = 500;
  bool _enableButtonPhonenumber = false;
  bool _enableButtonPassword = false;

  // final _passwordControler = TextEditingController();

  void containerAnimation() {
    setState(() {
      topMargin = 0;
    });
  }

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 450))
        .then((value) => containerAnimation());
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
              flex: 1,
              child: AnimatedContainer(
                margin: EdgeInsetsDirectional.only(top: topMargin),
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
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
                    key: _formSignInKey,
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
                          onChanged: (value) {
                            if (value.isEmpty) {
                              setState(() {
                                _enableButtonPassword = false;
                              });
                            } else {
                              setState(() {
                                _enableButtonPassword = true;
                              });
                            }
                          },
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
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.key_rounded),
                            label: const Text(
                              'رمز عبور',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            hintText: 'رمز عبور خود را وارد کنید',
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
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 51, 79, 119),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                ),
                                onPressed: _enableButtonPassword == false ||
                                        _enableButtonPhonenumber == false
                                    ? null
                                    : () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const RestaurantsScreen()),
                                        );
                                      },
                                child: const Text(
                                  'ورود',
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
