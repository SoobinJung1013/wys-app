import 'package:flutter/material.dart';
import 'package:wys_app/components/appbar/my_app_bar.dart';

import '../components/appbar/app_bar_drawer.dart';
import '../common/const/colors.dart';
import '../components/bottomsheet/basic_bottom_sheet.dart';
import 'dashboard/dashboard_screen.dart';
import 'recommend/food_recommend_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: '',
        ),
        drawer: AppDrawer(),
        floatingActionButton: renderFloatingActionButton(context),
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: -90,
                left: 0,
                right: 0,
                child: Image(
                  image: AssetImage('assets/images/eclipse.png'),
                  height: 310,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, bottom: 20.0, top: 8.0),
                    child: Text(
                      'Hi Pet ! ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 35,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'We\'ll Help you to Improve your health. ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF5551FF),
                                    fontWeight: FontWeight.bold,
                                    height: 2),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, top: 8.0),
                              child: Image.asset('assets/images/doctor.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                          color: Color(0xFFFBEDFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -70,
                              left: -40,
                              child: Container(
                                width: 131,
                                height: 133,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFBD8FF),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 20,
                                left: 10,
                                child: Image.asset('assets/images/sensor.png')),
                            Positioned(
                              top: 5,
                              left: 35,
                              child: Text(
                                'Avg.',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              top: 22,
                              left: 50,
                              child: Text(
                                'Blood Sugar',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '76',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('mg/dL',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 165,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFF3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -70,
                              left: -40,
                              child: Container(
                                width: 131,
                                height: 133,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFDFFC6),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 20,
                                left: 10,
                                child: Image.asset(
                                    'assets/images/blood-drop.png')),
                            Positioned(
                              top: 22,
                              left: 50,
                              child: Text(
                                'Health Check',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '6.7',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('%',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20.0, bottom: 10.0),
                        child: Text(
                          'Service',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 23,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 35,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: THIRD_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          '혈당 차트',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 30.0, top: 8.0),
                                        child: Image.asset(
                                            'assets/images/heart.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FoodRecomendScreen()),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 35,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: THIRD_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          '사료 추천',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 30.0, top: 8.0),
                                        child: Image.asset(
                                            'assets/images/food.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 35,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: THIRD_COLOR,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          '검진 차트',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 30.0, top: 8.0),
                                        child: Image.asset(
                                            'assets/images/heart.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  FloatingActionButton renderFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) {
              return BasicBottomSheet();
            });
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.chat_bubble_outline,
        color: Colors.black,
      ),
    );
  }
}
