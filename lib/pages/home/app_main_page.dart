import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work_0/widgest/home_page_reels_widget.dart';
import 'package:work_0/widgest/story_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: StoryWidget(),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            floating: true,
            pinned: false,
            elevation: 0,
            toolbarHeight: 60,
            expandedHeight: 200,
            centerTitle: false,
            title: Text(
              "Instagram",
              style: GoogleFonts.badScript(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment(0, 0),
                        child: Icon(
                          CupertinoIcons.suit_heart,
                          size: 36,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(.5, -.5),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(4),
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment(0, 0),
                        child: Icon(
                          CupertinoIcons.bolt_horizontal_circle,
                          size: 36,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(.8, -1),
                        child: Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            "3",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const HomePageReelsWidget(),
        ],
      ),
    );
  }
}
