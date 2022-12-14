import 'package:e_mart/consts/const.dart';
import 'package:e_mart/consts/images.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(icBgLoginImage),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
