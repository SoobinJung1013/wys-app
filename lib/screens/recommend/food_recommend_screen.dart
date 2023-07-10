import 'package:flutter/material.dart';
import 'package:wys_app/common/const/colors.dart';

import '../../components/appbar/app_bar_drawer.dart';
import '../../components/foodproduct/food_widget.dart';
import '../../components/appbar/my_app_bar.dart';
import '../../data/test_food_data.dart';

class FoodRecomendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SECOND_COLOR,
      appBar: MyAppBar(
        title: '사료 추천',
      ),
      drawer: AppDrawer(),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return FoodWidget(foodList[index]);
          },
          itemCount: foodList.length,
        ),
      ),
    );
  }
}
