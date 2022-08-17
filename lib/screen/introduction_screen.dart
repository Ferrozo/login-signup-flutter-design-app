import 'dart:async';

import '/screen/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  // ignore: must_call_super
  void initState() {
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) => (IntroductionScreenContent(
                        title: demo_data[index].title,
                        img: demo_data[index].img,
                        description: demo_data[index].description)),
                  ),
                ),
                Column(
                  children: [
                    _pageIndex == demo_data.length - 1
                        ? SizedBox(
                            height: 50,
                            width: 280,
                            child: TextButton(
                              onPressed: () {
                                onDone(context);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              child: const Text(
                                'JOIN AND GET STARTED',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        : Row(
                            children: [
                              ...List.generate(
                                demo_data.length,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: IndicatorDot(
                                      isActive: index == _pageIndex),
                                ),
                              ),
                              const Spacer(),
                              FittedBox(
                                child: TextButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                      curve: Curves.ease,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    );
                                  },
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Next',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.arrow_right_alt,
                                        color: Colors.green,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 13 : 8,
      width: isActive ? 13 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.amber.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String img, title, description;
  Onboard({required this.img, required this.title, required this.description});
}

// ignore: non_constant_identifier_names
final List<Onboard> demo_data = [
  Onboard(
    title: 'Find professionals your way',
    img: 'src/assets/first_screen.png',
    description:
        'Work with the largest network of independent professionals and make things happen.',
  ),
  Onboard(
    title: 'Find a great job',
    img: 'src/assets/second_screen.png',
    description:
        'Meet clients you\'ll be excited to work with and take your career or business to new heights.',
  ),
  Onboard(
    title: 'Do your job, earn your money!',
    img: 'src/assets/third_screen.png',
    description:
        'Earn money on the work platform and be your own Boss, work your way. ',
  ),
  Onboard(
    title: 'Start making your work now',
    img: 'src/assets/enter_screen.png',
    description: 'Start today and earn your money, working your way.',
  ),
];

void onDone(context) {
  Timer(
      const Duration(seconds: 1),
      () => {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoadingScreen()),
              // builder: (context) => const MyHomePage(title: 'Home Page'),
            )
          });
}

class IntroductionScreenContent extends StatelessWidget {
  const IntroductionScreenContent({
    Key? key,
    required this.img,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String img, title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            const Spacer(),
            Image.asset(
              img,
              height: 280,
            ),
            const Spacer(),
            Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 96, 96, 96),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Spacer(),
          ],
        )),
      ),
    );
  }
}
