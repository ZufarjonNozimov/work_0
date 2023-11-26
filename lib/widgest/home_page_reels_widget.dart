import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageReelsWidget extends StatelessWidget {
  const HomePageReelsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (contaxt, index) {
        return TweenAnimationBuilder(
          curve: Curves.easeInOutBack,
          tween: Tween(
            begin: 0.0,
            end: 1.0,
          ),
          duration: const Duration(milliseconds: 1000),
          builder: (context, value, child) {
            return Transform.scale(
              scaleX: value,
              scaleY: value,
              child: Container(
                margin: const EdgeInsets.all(8),
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        blurStyle: BlurStyle.normal),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Image(
                              image: NetworkImage(
                                  "http://source.unsplash.com/random/${(index + 30) * 100}"),
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Colors.red;
                                },
                                child: const Icon(
                                  CupertinoIcons.suit_heart,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Icon(
                                CupertinoIcons.bubble_right,
                                size: 35,
                              ),
                              const SizedBox(
                                width: 18,
                              ),
                              const Icon(
                                Icons.send_outlined,
                                size: 35,
                              ),
                              const SizedBox(
                                width: 180,
                              ),
                              const Icon(
                                Icons.bookmark_border_outlined,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "Komment",
                            style: GoogleFonts.ebGaramond(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "http://source.unsplash.com/random/${(index + 1) * 2}",
                          ),
                        ),
                        title: Text(
                          "Name",
                          style: GoogleFonts.dangrek(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
