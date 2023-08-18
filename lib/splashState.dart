class SplashState {
  late bool _isHomePageLoaded = false;

  SplashState() {
    // Add a listener to the `_onMyHomePageLoaded` method.
    onMyHomePageLoadedListeners = [];
  }

  void addListener(void Function() listener) {
    onMyHomePageLoadedListeners.add(listener);
  }

  void removeListener(void Function() listener) {
    onMyHomePageLoadedListeners.remove(listener);
  }

  void onMyHomePageLoaded() {
    // Notify all listeners that the HomePage is loaded.
    for (var listener in onMyHomePageLoadedListeners) {
      listener();
    }
  }

  bool get isHomePageLoaded => _isHomePageLoaded;

  List<void Function()> onMyHomePageLoadedListeners = [];
}



//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/images/background.png"),
//                   fit: BoxFit.contain)),
//           child: Stack(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Text(
//                       'Sym',
//                       style: TextStyle(
//                           fontSize: 50,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "Mamakilo",
//                           color: Color(0xFFc34203)),
//                     ),
//                   ),
//                   Center(
//                     child: Text(
//                       'Fonik',
//                       style: TextStyle(
//                           fontSize: 50,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: "Mamakilo",
//                           color: Color(0xFFeeb238)),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       nextScreen: MyHomePage(),
//       splashTransition: SplashTransition.fadeTransition,
//     );
//   }
// }