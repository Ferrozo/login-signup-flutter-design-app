import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/cupertino.dart';
// import './splashScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    Container(
      color: const Color.fromARGB(255, 229, 248, 238),
    ),
    Container(
      color: const Color.fromARGB(255, 223, 223, 223),
    ),
    Container(
      color: const Color.fromARGB(255, 255, 187, 240),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0,
            leading: Row(
              children: [
                Image.asset(
                  'src/assets/main_logo.png',
                  width: 200,
                  height: 200,
                ),
                Expanded(
                  child: Container(),
                ),
                const CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('src/assets/avatar.png'),
                  ),
                )
                // Icon(Icons.person, color: Color.fromARGB(255, 106, 106, 106)),
              ],
            ),
          ),
          body: pages.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.green,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Biscatos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_sharp), label: 'Mensagens'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notificações'),
            ],
          ),
        ));
  }
}
