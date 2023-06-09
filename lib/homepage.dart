import 'package:flutter/material.dart';

import 'login.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo.png'),
        backgroundColor: Color.fromARGB(255, 10, 67, 113),
        toolbarHeight: 100,
        elevation: 14,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(1, 84, 134, 100),
                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.contain,
                  )),
              child: Text(''),
            ),
            ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Wallet',
                style: TextStyle(fontSize: 30),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'LogOut',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
