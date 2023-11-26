import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.pink,
              child: CircleAvatar(
                radius: 37,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage(
                    "http://source.unsplash.com/random/${index * 3}",
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
