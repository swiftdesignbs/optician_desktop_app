import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:optician_desktop_app/screens/dashboard.dart';
import 'package:optician_desktop_app/screens/main_screen.dart';
import 'package:optician_desktop_app/widgets/buttons.dart';
import 'package:optician_desktop_app/widgets/custom_textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: const Color(0xff5793CE),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: w * 0.2,
                  child: Image.asset(
                    'assets/images/Group.png',
                    width: w * 0.3,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Welcome to\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'FontMain'),
                            ),
                            TextSpan(
                              text: 'Optician Shop Software \n\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff1F3F7A),
                                  fontFamily: 'FontMain'),
                            ),
                            TextSpan(
                              text: 'Login Enter Authentication Code',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  fontFamily: 'FontMain'
                                  //  color: Color(0xff1F3F7A),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: CustomTextField(
                        ddName: 'User Name', controller: userName),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                    child: CustomTextField(
                      ddName: 'Password',
                      controller: password,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontFamily: 'FontMain',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffC14027),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Buttons(
                    onPressed: () {
                      Get.to(MainScreen(), transition: Transition.rightToLeft);
                    },
                    ddName: 'Login',
                    height: 50,
                    width: 200,
                    colors: const Color(0xff5793CE),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
