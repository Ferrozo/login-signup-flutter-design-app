import 'package:flutter/material.dart';
import './login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void goSignIn(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      // builder: (context) => const MyHomePage(title: 'Home Page'),
    );
  }

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(236, 246, 246, 246),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          goSignIn(context);
                        },
                      ),
                      const Text('Criar conta',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 90, 90, 90),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          children: [
                            const Text(
                              '1 - Step',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 8,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          children: [
                            const Text(
                              '2 - Step',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 8,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          children: [
                            const Text(
                              '3 - Step',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 8,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Enter your data',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your e-mail',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(102, 90, 90, 90),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextField(
                            obscureText: _secureText,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(102, 90, 90, 90),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  color: Colors.grey,
                                  _secureText
                                      ? Icons.remove_red_eye
                                      : Icons.remove_red_eye_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
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
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
