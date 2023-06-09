import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';

class HeaderComponent extends StatelessWidget {
  final IconData icon;
  final String name;
  final VoidCallback onPress;

  const HeaderComponent(
      {required this.icon, required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      color: AppColors.backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 25,
                    ),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    color: AppColors.buttonColor),
          ),
          const SizedBox(width: 8.0),
          Container(
            // margin: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Text(
                  "Hello, $name",
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Poppins500",
                      color: AppColors.buttonColor),
                ),
                const Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Poppins600",
                  ),
                ),
              ],
            ),
          ),
          const Spacer(), // Added spacer to push the circular image to the right
          CircleAvatar(
            radius: 30.0,
            backgroundImage: Image.network(
              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fprofile_3135768&psig=AOvVaw2Hue9UBEe0nCCQu6HgAzBs&ust=1686425723249000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNiVhcT3tv8CFQAAAAAdAAAAABAJ",
            ).image, // Provide your image path here
          ),
        ],
      ),
    );
  }
}
