import 'package:baba_black_sheep/constants.dart';
import 'package:flutter/material.dart';

import '../lDay5_dating/dating_mobile_signup.dart';
import 'dating_mobile_login_screen.dart';

class DatingLoginScreen extends StatelessWidget {
  const DatingLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/dating_login.jpg",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset(
                      "assets/images/dating_login_top.png",
                      fit: BoxFit.fill
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/14),
                const Center(
                  child: Text(
                    "Baba Black Sheep",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: proximaB,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/90),
                Container(
                  margin:  EdgeInsets.only(left: MediaQuery.of(context).size.width/4, right: MediaQuery.of(context).size.width/4),
                  height: MediaQuery.of(context).size.height/3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: MediaQuery.of(context).size.width/2,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/dating_login_phone_ic.png",
                                  width: 32,
                                  height: 32,
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  loginText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "urbanistR",
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          moveToLoginWithPhoneScreen(context);
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          width: MediaQuery.of(context).size.width/2,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/dating_login_phone_ic.png",
                                  width: 32,
                                  height: 32,
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  signupText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontFamily: "urbanistR",
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          moveToSignUpWithPhoneScreen(context);
                        },
                      ),
                      const Text(
                        termsPolicy,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: urbanistR,
                            color: Colors.white,
                            decoration: TextDecoration.none
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

moveToLoginWithPhoneScreen(context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const DatingMobileLogin()));
}

moveToSignUpWithPhoneScreen(context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const DatingMobileSignUp()));
}