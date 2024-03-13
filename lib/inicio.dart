import 'package:flutter/material.dart';
import 'package:money_track/calculador.dart';
import 'package:money_track/gastos.dart';
import 'package:money_track/login.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void bottomTapped(int index) {
    setState(() {
      _selectedTab = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          _changeTab(index);
        },
        children: [
          Gastos(),
          Calculator(),
          const Login(),
          Calculator(),
          const Login(),
          Calculator(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => bottomTapped(index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 0 ? "assets/gastos3.png" : "assets/gastos2.png",
            ),
            label: 'asfasfs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 1 ? "assets/wallet.png" : "assets/wallet2.png",
            ),
            label: 'asfasfs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 2 ? "assets/money.png" : "assets/money2.png",
            ),
            label: 'asfasfs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 3 ? "assets/credit.png" : "assets/credit2.png",
            ),
            label: 'asfasfs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 4 ? "assets/dinero.png" : "assets/dinero2.png",
            ),
            label: 'asfasfs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              _selectedTab == 5 ? "assets/chat.png" : "assets/chat2.png",
            ),
            label: 'asfasfs',
          ),
        ],
      ),
    );
  }
}
