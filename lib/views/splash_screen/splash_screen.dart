import 'package:e_mart/consts/const.dart';

import 'package:e_mart/consts/size.dart';
import 'package:e_mart/views/auth_screen/login_screen.dart';
import 'package:e_mart/widget_common/applogo_widget.dart';

import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // creating a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // using GetX
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          applogoWidget(),
          kHeight10,
          appName.text.fontFamily(bold).size(20).white.make(),
          appVersion.text.white.make(),
        ],
      )),
    );
  }
}
