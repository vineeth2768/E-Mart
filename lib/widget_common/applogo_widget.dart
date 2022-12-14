import 'package:e_mart/consts/const.dart';
import 'package:e_mart/consts/images.dart';

Widget applogoWidget() {
  /// Using Velocity X here
  return Image.asset(icAppLogo)
      .box
      .size(80, 80)
      .padding(const EdgeInsets.all(8.0))
      .make();
}
