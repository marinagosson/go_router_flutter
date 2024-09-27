    import 'package:flutter/material.dart';
    import 'package:go_router/go_router.dart';

    class MainPage extends StatefulWidget {
      final Widget child;
      const MainPage({super.key, required this.child});

      @override
      State<MainPage> createState() => _MainPageState();
    }

    class _MainPageState extends State<MainPage> {

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            onTap: (index) {
              switch (index) {
                case 0:
                  context.go('/');
                  break;
                case 1:
                  context.go('/profile');
                  break;
                case 2:
                  context.go('/settings');
                  break;
              }
            }, items: const [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
              BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings)),
            ],
          ),
            body: widget.child,);
      }
    }