import 'package:e_mart/widget_common/applogo_widget.dart';
import 'package:e_mart/widget_common/custom_textfiled.dart';
import 'package:e_mart/widget_common/our_button.dart';
import 'package:get/get.dart';
import '../../consts/const.dart';
import '../../widget_common/bg_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;
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
            "Join the $appName".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(
                  hint: nameHint,
                  title: "Name",
                ),
                customTextField(
                  hint: emailHint,
                  title: "Email",
                ),
                customTextField(
                  hint: passwordHint,
                  title: "Password",
                  observerd: true,
                ),
                customTextField(
                  hint: confirmPassword,
                  title: "Confirm Password",
                  observerd: true,
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: TextButton(
                //     onPressed: () {},
                //     child: forgetPassword.text.make(),
                //   ),
                // ),
                10.heightBox,
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    2.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: termsAndcond,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ),
                        ),
                        TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ),
                        ),
                      ])),
                    ),
                  ],
                ),
                10.heightBox,
                ourButton(
                  title: signup,
                  color: isCheck == true ? redColor : lightGrey,
                  onPress: () {},
                  textColor: whiteColor,
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                //// Wrapping into gesture detector of velocity X
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        ),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(
                          fontFamily: bold,
                          color: redColor,
                        ),
                      ),
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                })
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
