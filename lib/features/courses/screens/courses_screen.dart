import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:swiftcafe/features/courses/widgets/CustomRow.dart';
import 'package:swiftcafe/features/courses/widgets/Frostedglass.dart';
import 'package:swiftcafe/features/courses/widgets/Frostedglassbg.dart';

import 'package:swiftcafe/features/courses/widgets/switch.dart';

import '../../../common/widgets/stars.dart';

class CoursesScreen extends StatefulWidget {
  static const String routeName = '/home';
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/coff.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/images/Rectangle24.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height /
                    2, // Set the height to half of the device's screen height
                fit: BoxFit
                    .cover, // You can adjust the fit as per your requirement
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      20), // Set the radius for the top-left corner
                  topRight: Radius.circular(20),
                ),
                child: FrostedGlassBoxBg(
                  theWidth: MediaQuery.of(context).size.width,
                  theHeight: 900.0,
                  theChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Lattè',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            '4.9',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  236, 220, 216, 216),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          const Stars(rating: 1),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          const Text(
                                            '(458)',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  236, 220, 216, 216),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 1,
                                          ),
                                          Image.asset(
                                            'assets/images/mark.png',
                                            width: 45,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        3), // Half of the Container's height
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 29),
                                      height: 30,
                                      width: 60,
                                      color: Color.fromARGB(255, 223, 220, 220),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 1,
                                            color: Colors
                                                .black, // You can adjust the color of the dividing line
                                          ),
                                          Expanded(
                                            child: Center(
                                              child: Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors
                                                    .black, // You can adjust the color of the icon
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 55.0),
                                child: Text(
                                  'latte is one of the most popular espresso drinks that is relished by coffee lovers and aficionados across the world.',
                                  style: TextStyle(
                                    color: Color.fromARGB(236, 220, 216, 216),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  overflow: TextOverflow
                                      .ellipsis, // Add ellipsis when text overflows
                                  maxLines: 3,
                                ),
                              ),
                              const SizedBox(
                                height: 35,
                              ),
                              const Text(
                                'Choice of Cup Filling',
                                style: TextStyle(
                                  color: Color.fromARGB(236, 220, 216, 216),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Wrap(
                                spacing:
                                    5.0, // Adjust the spacing between containers
                                runSpacing:
                                    5.0, // Adjust the spacing between rows
                                children: [
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.green,
                                        child: const Center(
                                          child: Text(
                                            'Full',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            '1/2 Full',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            '3/4 Full',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Container(
                                    width: 70,
                                    height: 30,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.white,
                                        child: const Center(
                                          child: Text(
                                            '1/4 Full',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Choice of Milk',
                                style: TextStyle(
                                  color: Color.fromARGB(236, 220, 216, 216),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Skim Milk',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Full Cream Milk',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 220, 216, 216),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Almond Milk',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Full Cream Milk',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 220, 216, 216),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Soy Milk',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Oat Milk',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 220, 216, 216),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Skim Milk',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              const Text(
                                'Choice of Sugar',
                                style: TextStyle(
                                  color: Color.fromARGB(236, 220, 216, 216),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        'Sugar X1',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'Sugar X2',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 220, 216, 216),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        '1/2 Sugar',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              236, 220, 216, 216),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 46,
                                      ),
                                      SwitchEx(),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'No Sugar',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                236, 220, 216, 216),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                        vertical: 50.0, horizontal: 20)
                                    .copyWith(left: 0),
                                child: FrostedGlassBox(
                                  theChild:
                                      CustomRow(), // Replace Text with CustomRow
                                  theHeight: 90,
                                  theWidth: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
