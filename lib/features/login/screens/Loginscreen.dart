import 'package:flutter/material.dart';
import 'package:swiftcafe/features/home/screens/home_screen.dart';
import 'package:swiftcafe/features/login/widgets/Frostedglass.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/home';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coff.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: FrostedGlassBox(
            theChild: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Image.asset('assets/images/Asset.png'),
                  const Text(
                    'Swift',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const Text(
                    'Café',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    '"Latte but never late"',
                    style: TextStyle(
                      color: Color.fromARGB(195, 220, 216, 216),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            labelText: '     Email',
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Set the color of the line to white
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Set the color of the line to white
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            labelText: '     Password',
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Set the color of the line to white
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Set the color of the line to white
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 185,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.brown.shade900, Colors.brown.shade400],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 185,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.white), // Set the border color to white
                      color: Colors
                          .transparent, // Set the background color to transparent
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement the logic for the button click
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            theHeight: MediaQuery.of(context).size.height / 1.3,
            theWidth: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
      ),
    );
  }
}
