import 'package:flutter/material.dart';

class ViewProve extends StatelessWidget {
  const ViewProve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 152,
                        width: 175,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage("assets/Rectangle 127.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.download),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("11:32 AM"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 152,
                        width: 175,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage("assets/Rectangle 127.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(Icons.download),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("11:32 AM"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
