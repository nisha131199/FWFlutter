import 'package:flutter/material.dart';
import '../../constants.dart';

class DatingMobileSignUp extends StatefulWidget {
  const DatingMobileSignUp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MobileSignup();
  }
}

class _MobileSignup extends State<DatingMobileSignUp> {
  var isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            const Padding(
              padding: EdgeInsets.only(top: 46, left: 24),
              child: Text(
                signUpTitle,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: proximaB
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontFamily: urbanistR
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 24, right: 24),
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
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/uname_ic.png",
                        width: 23,
                        height: 23,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: const TextField(
                            keyboardType: TextInputType.emailAddress,
                            // maxLength: 10,
                            decoration: InputDecoration.collapsed(
                              hintText: "",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: urbanistR,
                                fontSize: 18
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Text(
                mobileNo,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontFamily: urbanistR
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 24, right: 24),
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
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            // maxLength: 10,
                            decoration: InputDecoration.collapsed(
                              hintText: "",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: urbanistR,
                                color: Colors.black
                            ),
                            // onChanged: (var str) {
                            //   phone = str;
                            // },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Text(
                dob,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontFamily: urbanistR
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 24, right: 24),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(29)),
                    border: Border.all(
                        color: Colors.black12,
                        width: 1
                    )
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration.collapsed(
                        hintText: dobFormat,
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: urbanistR,
                          fontSize: 18
                      )
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24),
              child: Text(
                password,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontFamily: urbanistR
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 24, right: 24),
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
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: TextField(
                            obscureText: isVisible,
                            keyboardType: TextInputType.visiblePassword,
                            // maxLength: 10,
                            decoration: const InputDecoration.collapsed(
                              hintText: "",
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: urbanistR,
                              fontSize: 18,
                            )
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(
                          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          color: Colors.black12,
                        ),
                      )
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
                      signup,
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
                  moveToCreateProfileScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

moveToCreateProfileScreen(context) {
  // Navigator.of(context).push(
  //     MaterialPageRoute(builder: (context) => const NextScreen()));
}

back(context) {
  Navigator.pop(context);
}