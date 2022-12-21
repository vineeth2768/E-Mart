import 'package:e_mart/consts/const.dart';
import 'package:e_mart/consts/images.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/widget_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: lightGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          //// Swipers brand
          VxSwiper.builder(
              autoPlay: false,
              height: 130,
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  sliderList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 5.0))
                    .make();
              }),
          10.heightBox,

          /// Deals Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) => homeButtons(
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width / 2.2,
                icon: index == 0 ? icTodayDeal : icFlashDeal,
                title: index == 0 ? todayDeal : flashSale,
              ),
            ),
          ),
          10.heightBox,

          /// Second Slider
          VxSwiper.builder(
              autoPlay: false,
              height: 130,
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  sliderList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 5.0))
                    .make();
              }),
        ],
      )),
    );
  }
}
