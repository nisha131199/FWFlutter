import 'package:baba_black_sheep/constants.dart';
import 'package:flutter/material.dart';

import 'dating_otp_screen.dart';

class DatingMobileLogin extends StatefulWidget {
  const DatingMobileLogin({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PhoneLogin();
  }
}

class _PhoneLogin extends State<DatingMobileLogin> {
  var phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 52),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: GestureDetector(
              onTap: () {
                back(context);
              },
              child: Image.asset(
                "assets/images/dating_back_ic.png",
                width: 36,
                height: 36,
              ),
            ),
          ),
          const SizedBox(height: 11),
          Center(
            child: Image.asset(
              "assets/images/dating_login_with_phone_ic.png",
              width: 72,
              height: 127,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 46, left: 24),
            child: Text(
              myNoIs,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: proximaB
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 24, right: 24),
            child: Text(
              validPhoneDes,
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.7),
                fontFamily: urbanistR
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(29)),
                border: Border.all(
                  color: Colors.black12,
                  width: 1
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                child: Row(
                  children: [
                    const Text(
                      "(+91)",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: urbanistR,
                        color: Colors.black
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 17),
                      child: Image.asset(
                        "assets/images/dating_arrow_down.png",
                        width: 10,
                        height: 20,
                      ),
                    ),
                    Container(
                      color: Colors.black12,
                      width: 1,
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/2,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          // maxLength: 10,
                          decoration: const InputDecoration.collapsed(
                            hintText: "",
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: urbanistR,
                              color: Colors.black
                          ),
                          onChanged: (var str) {
                            phone = str;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
            child: GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(29)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 255, 149, 0),
                        Color.fromARGB(255, 255, 59, 48)]
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 18),
                  child: Text(
                    continuee,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: urbanistR,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              onTap: () {
                moveToOtpScreen(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

moveToOtpScreen(context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const DatingLoginOtp()));
}

back(context) {
  Navigator.pop(context);
}