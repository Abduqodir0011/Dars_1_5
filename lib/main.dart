import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            padding:
            const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 237,
            height: 255,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ItemImage(

                ),
                const SizedBox(height: 10),
                const Text(
                  "International Band Mu...",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),

                const SizedBox(height: 10),
                SvgPicture.asset("assets/bookmark.svg"),
                const SizedBox(height: 10),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(

                      children: [
                        Positioned(
                          left: 15,
                          child: _buildCircleAvatar("assets/profile_1.png"),
                        ),
                        Positioned(
                          left: 15,
                          child: _buildCircleAvatar("assets/profile_2.png"),
                        ),
                        Positioned(
                          left: 30,
                          child: _buildCircleAvatar("assets/profile_3.png"),
                        ),

                        const Text(
                          "+20 Going",
                          style: TextStyle(
                              color: Color(0xff3F38DD),
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    SvgPicture.asset("assets/map.svg", width: 16, height: 16,),

                    const SizedBox(width: 8),
                    const Text(
                      "36 Guild Street London, UK ",
                      style: TextStyle(
                        color: Color(0xff2B2849),
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemImage extends StatelessWidget {
  const ItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 222,
      height: 111,
      child: Align(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/hands.png",
            width: 222,
            height: 222,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

Widget _buildCircleAvatar(String assetPath) {
  return Container(
    width: 24,
    height: 24,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(assetPath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
