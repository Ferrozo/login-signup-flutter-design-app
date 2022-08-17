import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import './sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void goSignScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
      // builder: (context) => const MyHomePage(title: 'Home Page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Text(
                  'access account',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 90, 90, 90),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Enter your credentials to access your account.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(226, 125, 125, 125),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          // color: Colors.black.withOpacity(0.65),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.smartphone,
                                color: Colors.white,
                                size: 22,
                              ),
                              Text(
                                ' Phone number',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          // color: Colors.black.withOpacity(0.65),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.email,
                                color: Colors.white70,
                                size: 22,
                              ),
                              Text(
                                'E-mail',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Enter your phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      fillColor: Colors.green.withOpacity(0.05),
                      filled: true,
                      labelText: 'Phone number',
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                    showCountryFlag: false,
                    invalidNumberMessage: 'Invalid number',
                    showDropdownIcon: false,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.9),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(),
                    child: const Text(
                      'ENTER',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 1,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Or Enter with',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: 1,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'src/assets/google.png',
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Enter with Google',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      'Don\'t have an account yet?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        goSignScreen(context);
                      },
                      child: const Text(
                        'Click here.',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
