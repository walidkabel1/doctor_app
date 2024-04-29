import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import '../features/home_view/home_screen.dart';
import '../features/mylist_view/mylist_screen.dart';
import '../features/profile_view/profile_screen.dart';
import '../features/search_view/search_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selected = 0;
  bool add = false;
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: StylishBottomBar(
        // option: AnimatedBarOptions(
        //   // iconSize: 32,
        //   barAnimation: BarAnimation.blink,
        //   iconStyle: IconStyle.animated,

        //   // opacity: 0.3,
        // ),

        option: DotBarOptions(
          dotStyle: DotStyle.tile,
          gradient: const LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.pink,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.house_outlined,
            ),
            selectedIcon: const Icon(Icons.house_rounded),
            selectedColor: Colors.teal,
            unSelectedColor: Colors.grey,
            title: const Text('Home'),
            badgeColor: Colors.purple,
            badgePadding: const EdgeInsets.only(left: 4, right: 4),
          ),
          BottomBarItem(
            icon: const Icon(Icons.search_outlined),
            selectedIcon: const Icon(Icons.search_rounded),
            selectedColor: Colors.red,
            // unSelectedColor: Colors.purple,
            // backgroundColor: Colors.orange,
            title: const Text('Search'),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.style_outlined,
            ),
            selectedIcon: const Icon(
              Icons.style,
            ),
            selectedColor: Colors.deepOrangeAccent,
            title: const Text(
              'My List',
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.person_outline,
            ),
            selectedIcon: const Icon(
              Icons.person,
            ),
            selectedColor: Colors.deepPurple,
            title: const Text(
              'Profile',
            ),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected,
        notchStyle: NotchStyle.circle,
        borderRadius: BorderRadius.circular(50),
        onTap: (index) {
          if (index == selected) return;
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            add = !add;
          });
        },
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: Icon(
          add ? Icons.add : Icons.add_circle_outline_rounded,
          color: Colors.red,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            SearchScreen(),
            MyListScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
