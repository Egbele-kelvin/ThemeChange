import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:recipetest/card/card1.dart';
import 'package:recipetest/card/card2.dart';
import 'package:recipetest/card/card3.dart';

import 'apptheme.dart';

void main() {
  // 1
  runApp(const Home());
}
//
// class Fooderlich extends StatelessWidget {
//   // 2
//   const Fooderlich({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var theme = AppTheme.dark();
//     // 3
//     return MaterialApp(
//       theme: theme,
//       title: 'Fooderlich',
//       // 4
//       home: Home(),
//     );
//   }
// }

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
  int _selectedIndex = 0;
  bool _toggleValue = false;
  var theme = AppTheme.dark();
// 8
  static List<Widget> pages = <Widget>[Card1(), Card2(), Card3()];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fooderlich',
                style: Theme.of(context).textTheme.headline6,
              ),
              FlutterSwitch(
                  activeColor: Colors.black,
                  activeIcon: Icon(
                    Icons.nightlight_round,
                    color: Colors.grey,
                  ),
                  inactiveColor: Colors.white,
                  inactiveIcon: Icon(
                    Icons.wb_sunny,
                    color: Colors.grey,
                  ),
                  value: _toggleValue,
                  onToggle: (val) {
                    setState(() {
                      _toggleValue = val;
                      if (val) {
                        theme = AppTheme.dark();
                      } else {
                        theme = AppTheme.light();
                      }
                    });
                  })
            ],
          ),
        ),
        // 4
        bottomNavigationBar: BottomNavigationBar(
          // 5
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          // 6
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3',
            ),
          ],
        ),

        // TODO: Style the body text
        body: pages[_selectedIndex],
      ),
    );
  }
}
