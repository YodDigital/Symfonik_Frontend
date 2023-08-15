import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'utils/app_styles.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // _navigateToHome();
    _setupMyHomePageListener();
    _onMyHomePageLoaded();
  }

  Future<void> _onMyHomePageLoaded() async {
    // Do something when the MyHomePage is loaded.
    await Future.delayed(const Duration(milliseconds: 5000));
    if (mounted) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    }
  }

  void _setupMyHomePageListener() {
    final myHomePage = Provider.of<MyAppState>(context, listen: false);
    myHomePage.addListener(_onMyHomePageLoaded);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return Future.value(false);
        },
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("android/assets/images/background.png"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "android/assets/images/la-musique copie 2.png",
                      height: 100,
                    ),
                    const SizedBox(width: 30),
                    const SizedBox(height: 50),
                    const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Sym',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Mamakilo",
                                  color: Styles.orangeColor),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Fonik',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "mamakilo",
                                  color: Styles.yellowColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Positioned(
                  bottom: 20,
                  left: 165,
                  child: Center(
                    child: Text(
                      'GDSC_2023',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins",
                          color: Styles.whiteColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
