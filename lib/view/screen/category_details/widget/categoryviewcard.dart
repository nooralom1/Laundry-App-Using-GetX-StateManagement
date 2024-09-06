import 'package:flutter/material.dart';
import 'package:laundry_app_using_getx/utils/app_color/color.dart';
import 'package:laundry_app_using_getx/view/common_widget/common_text.dart';
import 'package:laundry_app_using_getx/view/screen/category_details/widget/staricon.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onPressed,
  });
  final String image;
  final String name;
  final String price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        color: const Color(0xffa8c2d7),
        child: SizedBox(
          height: screenHeight*0.14,
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: SizedBox(
                  height: screenHeight*0.12,
                  width: screenWidth*0.25,
                  child: Image.network(image),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    tittle: name,
                    fSize: 23,
                    fWeight: FontWeight.w600,
                    color: Colors.lightBlue,
                    overflow: TextOverflow.ellipsis,
                  ),
                  CommonText(
                    tittle: price,
                    fWeight: FontWeight.bold,
                    fSize: 18,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++) const StarIcon(),
                    ],
                  )
                ],
              ),
              IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.favorite,
                    color: CommonColor.blue,
                    size: 35,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
