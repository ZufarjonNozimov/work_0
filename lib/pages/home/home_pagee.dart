import 'package:flutter/material.dart';
import 'package:work_0/pages/home/app_main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  var pages = [
    const MainPage(),
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pink,
            icon: Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.black,
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: NetworkImage(
                  "http://source.unsplash.com/random/",
                ),
                height: 28,
                width: 28,
                fit: BoxFit.cover,
              ),
            ),
            label: ".",
          ),
        ],
      ),
    );
  }
}
