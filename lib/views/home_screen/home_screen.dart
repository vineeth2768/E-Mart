import 'package:e_mart/consts/const.dart';

import 'package:e_mart/consts/list.dart';
import 'package:e_mart/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
//init home controller
    var controller = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          Obx(
            (() => Expanded(
                  child: navBody.elementAt(controller.currentNavIndex.value),
                )),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        (() => BottomNavigationBar(
              currentIndex: controller.currentNavIndex.value,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              backgroundColor: whiteColor,
              items: navBarItem,
              onTap: ((value) {
                controller.currentNavIndex.value = value;
              }),
            )),
      ),
    );
  }
}
