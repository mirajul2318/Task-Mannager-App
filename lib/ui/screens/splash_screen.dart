import 'package:flutter/material.dart';
import 'package:taskapp/ui/screens/login_page.dart';
import 'package:taskapp/ui/utils/asset_paths.dart';
import 'package:taskapp/ui/weigets/screen_background.dart';
import "package:flutter_svg/flutter_svg.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          ScreenBackground(child:
          Center(
            child: SvgPicture.asset(AssetPaths.logo,
            width: 200,),
          )),
    );
  }
}
