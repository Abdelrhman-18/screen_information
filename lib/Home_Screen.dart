import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    "Y.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          blurRadius: 10,
                          offset: Offset(9, 7),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      color: Colors.white,
                      child:const Icon(
                         Icons.menu,
                        size: 20,
                      )),
                )
              ],
            ),
            const Text(
              "Hello I am",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Abdelrhman",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Ux Designer & Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const BeveledRectangleBorder()),
                onPressed: () {
                  Navigator.pushNamed(context, "/screenInformation");
                },
                child: const Text(
                  "Hire Me",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 5,
                  ),
                ),
                Container(
                  width: 150,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/photo2.jpeg"))),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
