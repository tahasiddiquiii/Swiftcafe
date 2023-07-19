import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';

import 'package:swiftcafe/common/widgets/stars.dart';
import 'package:swiftcafe/constants/global_variables.dart';
import 'package:swiftcafe/features/home/widgets/Frostedglass.dart';
import 'package:swiftcafe/features/home/widgets/Frostedglassbg.dart';
import 'package:swiftcafe/features/login/screens/LoginScreen.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../courses/screens/courses_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> imagePaths = [
  'assets/images/coffee1.png',
  'assets/images/coffee2.png',
  'assets/images/coffee3.png',
  'assets/images/coffee4.png',
];
List<String> infoImagePaths = [
  'assets/images/Rectangle10.png',
  'assets/images/Rectangle14.png',
  'assets/images/coffee3.png',
  'assets/images/coffee2.png',
];

final List<Map<String, dynamic>> gridMap = [
  {
    "description":
        'latte is one of the most popular espresso drinks that is relished by coffee lovers and aficionados across the world.',
    "icon_image": 'assets/images/Rectangle10.png',
    "icon_name": 'Lattè',
  },
  {
    "description":
        'A flat white is a blend of micro-foamed milk poured over a single or double shot of espresso.',
    "icon_image": 'assets/images/Rectangle14.png',
    "icon_name": 'Flat White',
  },
  {
    "description":
        "A cappuccino is the perfect balance of espresso, steamed milk and foam.",
    "icon_image": 'assets/images/coffee1.png',
    "icon_name": 'Cappuccino',
  },
  {
    "description":
        "Black coffee is a calorie-free beverage that may help maintain a healthy weight.",
    "icon_image": 'assets/images/coffee3.png',
    "icon_name": 'Black Coffee',
  },
];

class _HomeScreenState extends State<HomeScreen> {
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
              FrostedGlassBoxBg(
                theWidth: MediaQuery.of(context).size.width,
                theHeight: 200.0,
                theChild: Column(
                  children: [
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: Image.asset(
                              'assets/images/wave.png',
                              width: 30,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '20/12/2022',
                                  style: TextStyle(
                                    color: Color.fromARGB(195, 220, 216, 216),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: const Text(
                                    'Joshua Scanlan',
                                    style: TextStyle(
                                      color: Color.fromARGB(195, 220, 216, 216),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey.withOpacity(0.9),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(
                                CupertinoIcons.delete_simple,
                                size: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/Ellipse.png',
                                width: 45,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 62,
                            margin: const EdgeInsets.symmetric(horizontal: 35),
                            alignment: Alignment.topLeft,
                            child: Material(
                              borderRadius: BorderRadius.circular(7),
                              elevation: 1,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: InkWell(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Icon(
                                        Icons.search,
                                        color:
                                            Color.fromARGB(171, 108, 107, 107),
                                        size: 23,
                                      ),
                                    ),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Icon(
                                        CupertinoIcons.slider_horizontal_3,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding:
                                      const EdgeInsets.only(top: 10),
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 1,
                                    ),
                                  ),
                                  hintText: 'Search favorite Beverages',
                                  hintStyle: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    'Most Popular Beverages',
                    style: TextStyle(
                      color: Color.fromARGB(195, 220, 216, 216),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 270.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FrostedGlassBox(
                        theWidth: 240.0,
                        theHeight: 270.0,
                        theChild: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  imagePaths[index],
                                  width: 140,
                                ),
                              ),
                              const Text(
                                'Hot Cappuccino',
                                style: TextStyle(
                                  color: Color.fromARGB(236, 220, 216, 216),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            'Espresso, Steamed Milk',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 9,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '4.9',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Stars(rating: 1),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '(458)',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.green,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CoursesScreen(),
                    ),
                  );
                },
                child: FrostedGlassBoxBg(
                  theWidth: MediaQuery.of(context).size.width,
                  theHeight: 1050.0,
                  theChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Get it instantly',
                            style: TextStyle(
                              color: Color.fromARGB(195, 220, 216, 216),
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 950.0,
                        child: ListView.builder(
                          itemCount: imagePaths.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Expanded(
                                child: FrostedGlassBox(
                                  theWidth: 240.0,
                                  theHeight: 180.0,
                                  theChild: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25.0, top: 25),
                                    child: Row(
                                      mainAxisSize:
                                          MainAxisSize.min, // Added line
                                      children: [
                                        Expanded(
                                          // Added line
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${gridMap.elementAt(index)['icon_name']}",
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      236, 220, 216, 216),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 21,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    '4.9',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                              Text(
                                                "${gridMap.elementAt(index)['description']}",
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      236, 220, 216, 216),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                                overflow: TextOverflow
                                                    .ellipsis, // Add ellipsis when text overflows
                                                maxLines: 3,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Image.asset(
                                              "${gridMap.elementAt(index)['icon_image']}",
                                              width: 150,
                                            ),
                                            Positioned(
                                              bottom: 8,
                                              left: 40,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                child: Container(
                                                  width: 60,
                                                  height: 24,
                                                  color: Colors.green,
                                                  child: const Center(
                                                    child: Text(
                                                      'ADD',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
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
