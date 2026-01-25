import 'package:flutter/material.dart';
import 'package:foodeliver/utils/colors.dart' as Colora;
import 'package:foodeliver/widgets/big_text.dart';
import 'package:foodeliver/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.60);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 330,
      child: PageView.builder(
        controller: PageController(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildPageItem(index);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? Colora.AppColors.mainColor
                : Colora.AppColors.signColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/rendang.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 160,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Daging Rendang"),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: Colora.AppColors.mainColor,
                            size: 15,
                          );
                        }),
                      ),
                      SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10),
                      SmallText(text:   "1287"),
                      SizedBox(width: 10),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(height: 20), 
                  Row(
                    children: [
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
