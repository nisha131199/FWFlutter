import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CreateProfile();
  }
}

class _CreateProfile extends State<CreateProfileScreen> {
  var name = "", email = "", dob = "", mobile = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 30, 100, 124),
          child: Container(
            margin: const EdgeInsets.only(top: 100),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromARGB(255, 30, 100, 124),
                                width: 4
                            ),
                            color: Colors.white
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/photo.png",
                              width: 85,
                              height: 85,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 65),
                        child: Image.asset(
                            "assets/images/gallery_ic.png",
                            width: 40,
                            height: 40
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: const Color.fromARGB(255, 206, 206, 206))
                    ),
                    child: Column(
                      children: [
                        const Text(
                            "Enter Full Name",
                            style: TextStyle(
                                color: Color.fromARGB(255, 112, 112, 112),
                                fontFamily: "Delius Swash Caps",
                                fontSize: 14
                            )
                        ),
                        TextField(
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Delius Swash Caps",
                              fontSize: 18
                          ),
                          decoration: const InputDecoration.collapsed(
                            hintText: "",
                            border: InputBorder.none,
                          ),
                          onChanged: (var str) {
                            setState(() {
                              name = str;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: const Color.fromARGB(255, 206, 206, 206))
                    ),
                    child: Column(
                      children: [
                        const Text(
                            "Email",
                            style: TextStyle(
                                color: Color.fromARGB(255, 112, 112, 112),
                                fontFamily: "Delius Swash Caps",
                                fontSize: 14
                            )
                        ),
                        TextField(
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Delius Swash Caps",
                              fontSize: 18
                          ),
                          decoration: const InputDecoration.collapsed(
                            hintText: "",
                            border: InputBorder.none,
                          ),
                          onChanged: (var str) {
                            setState(() {
                              email = str;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: const Color.fromARGB(255, 206, 206, 206))
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                            child: Column(
                              children: [
                                const Text(
                                    "DOB",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 112, 112, 112),
                                        fontFamily: "Delius Swash Caps",
                                        fontSize: 14
                                    )
                                ),
                                Text(
                                    dob,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Delius Swash Caps",
                                        fontSize: 18
                                    )
                                )
                              ],
                            )
                        ),
                        Image.asset(
                          "assets/images/calendar_ic.png",
                          width: 20, height: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        border: Border.all(color: const Color.fromARGB(255, 206, 206, 206))
                    ),
                    child: Column(
                      children: [
                        const Text(
                            "Enter Mobile No",
                            style: TextStyle(
                                color: Color.fromARGB(255, 112, 112, 112),
                                fontFamily: "Delius Swash Caps",
                                fontSize: 14
                            )
                        ),
                        TextField(
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Delius Swash Caps",
                              fontSize: 18
                          ),
                          decoration: const InputDecoration.collapsed(
                            hintText: "",
                            border: InputBorder.none,
                          ),
                          onChanged: (var str) {
                            setState(() {
                              mobile = str;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}