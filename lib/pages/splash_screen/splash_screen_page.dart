import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _widthSmall = 120;
  double _widthLarge = 240;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      changeValueContainers();
    });
    redirectToHomeScreen();
    super.initState();
  }

  changeValueContainers() {
    setState(() {
      _widthSmall = 0;
      _widthLarge = 0;
    });
  }

  void redirectToHomeScreen() async {
    await Future.delayed(Duration(seconds: 3));

    await Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      width: _widthLarge,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Color(0xff2EFF8B),
                      ),
                      duration: Duration(seconds: 3),
                      curve: Curves.fastOutSlowIn,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      width: _widthSmall,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Color(0xff2EFF8B),
                      ),
                      duration: Duration(seconds: 3),
                      curve: Curves.fastOutSlowIn,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Image.asset("assets/devmagic_logo.png"),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      width: _widthSmall,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Color(0xff2EFF8B),
                      ),
                      duration: Duration(seconds: 3),
                      curve: Curves.fastOutSlowIn,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      width: _widthLarge,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Color(0xff2EFF8B),
                      ),
                      duration: Duration(seconds: 3),
                      curve: Curves.fastOutSlowIn,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
