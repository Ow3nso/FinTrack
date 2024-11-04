import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavBar({required this.currentIndex, required this.onTap});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(15, 226, 223, 223).withOpacity(0.1 ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              currentIndex: widget.currentIndex,
              onTap: (index) {
                if (index != 2) {
                  widget.onTap(index);
                }
              },
              selectedItemColor: const Color(0xFF315EE7),
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              iconSize: 30.0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet),
                  label: 'Spend',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(), // Placeholder for the center icon
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 12, // Adjust the position as needed
          child: GestureDetector(
            onTap: () => widget.onTap(2), // Use index 2 for the plus icon
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF315EE7),
              ),
              padding: const EdgeInsets.all(10), // Adjust padding for desired size
              child: const Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
                size: 40, // Larger size for the plus icon
              ),
            ),
          ),
        ),
      ],
    );
  }
}
