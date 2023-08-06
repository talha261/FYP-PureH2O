import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/HeaderComponent.dart';
import '../../Widgets/CustomButtom.dart';
import '../Auth/login.dart';
import '../../Widgets/SalesGraph.dart';
import '../Common/Profile.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Column(
        children: [
          Container(
            color: AppColors.backgroundColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  HeaderComponent(
                    icon: Icons.apple,
                    name: "Develop",
                    onPress: () => Scaffold.of(context).openDrawer(),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              child: LineChartSample1(),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  // color: Color.fromRGBO(1, 84, 134, 100),
                  image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.contain,
              )),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.face, color: AppColors.buttonColor),
              title: const Text(
                'Profile',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins500",
                    color: AppColors.buttonColor),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.wallet,
                color: AppColors.buttonColor,
              ),
              title: const Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins500",
                    color: AppColors.buttonColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications_sharp,
                color: AppColors.buttonColor,
              ),
              title: const Text(
                'Manage sales',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins500",
                    color: AppColors.buttonColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.handshake,
                color: AppColors.buttonColor,
              ),
              title: const Text(
                'Manage Inventory',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins500",
                    color: AppColors.buttonColor),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded,
                color: Colors.red,
              ),
              title: const Text(
                'LogOut',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins500",
                    color: AppColors.buttonColor),
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

// Widget content() {
//     return Container(
//       child: LineChartWidget(datas),
//     );