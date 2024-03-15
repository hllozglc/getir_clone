import 'package:flutter/material.dart';
import 'package:getirclone/components/main_appbar.dart';
import 'package:getirclone/components/main_slider.dart';
import 'package:getirclone/constants/colors.dart';
import 'package:getirclone/data/category_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double dynamicHeight(value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(value) => MediaQuery.of(context).size.width * value;
  final List<String> sliderData = [];

  @override
  void initState() {
    sliderData.add('im_board_free.png');
    sliderData.add('im_board_getir.png');
    sliderData.add('im_board_iphone.png');
    sliderData.add('im_board_promo_2.png');
    sliderData.add('im_board_promo.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      body: Column(
        children: [
          Container(
            color: MyColor.primaryColor,
            width: double.infinity,
            height: dynamicHeight(0.25),
            child: mainSlider(sliderData),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 10, childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: dynamicWidth(0.18),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: const [
                            BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(1, 4), spreadRadius: 1),
                          ],
                        ),
                        child: Image.asset(categories[index].image),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        categories[index].name,
                        style: TextStyle(fontSize: 13),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
