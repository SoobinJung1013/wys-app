import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';
import 'package:wys_app/entity/test_food_entity.dart';

class FoodWidget extends StatelessWidget {
  FoodWidget(FoodEntity foodList);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return AspectRatio(
      aspectRatio: 1.25,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final topPadding = constraints.maxHeight * 0.2;
          final leftPadding = constraints.maxWidth * 0.1;
          final imageWidth = constraints.maxWidth * 0.35;
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: topPadding),
                decoration: BoxDecoration(
                    color: PRIMARY_COLOR,
                    borderRadius: BorderRadius.circular(24)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Organic Dog Food',
                            style: textStyle.copyWith(fontSize: 20),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\₩',
                                  style: textStyle.copyWith(fontSize: 16),
                                ),
                                TextSpan(
                                  text: '25,000',
                                  style: textStyle.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 32,
                              width: 100,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: FOURTH_COLOR,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                onPressed: () {
                                  // Respond to button press
                                },
                                child: Text(
                                  'BUY NOW',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      padding: EdgeInsets.only(
                        top: topPadding,
                        left: leftPadding,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: imageWidth * 1.5,
                      height: imageWidth * 1.5,
                      child: Image.asset('assets/images/dog_food.png',
                          fit: BoxFit.cover))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
