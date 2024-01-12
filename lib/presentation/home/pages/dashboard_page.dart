import 'package:flutter/material.dart';
import 'package:profit/presentation/home/pages/home_page.dart';

import '../widgets/navbar_menu.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  void navigateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const HomePage(),
    const Center(child: Text("Consult")),
    const Center(child: Text("Media")),
    const Center(child: Text("Entry")),
    const Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
          color: const Color(0xFFF3EDF7),
          height: 65,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavbarMenu(
                    selectedIndex: selectedIndex,
                    iconPath: Icons.home,
                    iconLabel: "Home",
                    onTap: () {
                      navigateToPage(0);
                    },
                    isActive: selectedIndex == 0),
                NavbarMenu(
                    selectedIndex: selectedIndex,
                    iconPath: Icons.chat_bubble,
                    iconLabel: "Consult",
                    onTap: () {
                      navigateToPage(1);
                    },
                    isActive: selectedIndex == 1),
                NavbarMenu(
                    selectedIndex: selectedIndex,
                    iconPath: Icons.movie,
                    iconLabel: "Media",
                    onTap: () {
                      navigateToPage(2);
                    },
                    isActive: selectedIndex == 2),
                NavbarMenu(
                    selectedIndex: selectedIndex,
                    iconPath: Icons.add,
                    iconLabel: "Entry",
                    onTap: () {
                      navigateToPage(3);
                    },
                    isActive: selectedIndex == 3),
                NavbarMenu(
                    selectedIndex: selectedIndex,
                    iconPath: Icons.person,
                    iconLabel: "Profile",
                    onTap: () {
                      navigateToPage(4);
                    },
                    isActive: selectedIndex == 4),
              ],
            ),
          )),
    );
  }
}
