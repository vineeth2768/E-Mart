import 'package:e_mart/consts/const.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/views/auth_screen/signup_screen.dart';
import 'package:e_mart/views/home_screen/home.dart';
import 'package:e_mart/views/home_screen/home_screen.dart';
import 'package:e_mart/widget_common/applogo_widget.dart';
import 'package:e_mart/widget_common/bg_widget.dart';
import 'package:e_mart/widget_common/custom_textfiled.dart';
import 'package:e_mart/widget_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            "Log in to $appName".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(
                  hint: emailHint,
                  title: "Email",
                ),
                customTextField(
                  hint: passwordHint,
                  title: "Password",
                  observerd: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),
                ourButton(
                  title: login,
                  color: redColor,
                  onPress: () {
                    Get.to(() => const Home());
                  },
                  textColor: whiteColor,
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                  title: signup,
                  color: lightGolden,
                  onPress: () {
                    Get.to(() => const SignUpScreen());
                  },
                  textColor: redColor,
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: lightGrey,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
