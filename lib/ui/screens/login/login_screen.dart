import 'package:blinkit_clone/ui/screens/bottomnavbar/bottomnavbar.dart';
import 'package:blinkit_clone/ui/screens/homescreen/homescreen.dart';
import 'package:blinkit_clone/ui/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          UiHelper.customImage(image: "loginpageimage.png"),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 112,
            width: 200,
            child: UiHelper.customImage(image: "blinkiticon.png"),
          ),
          Text(
            "India’s last minute app",
            style: TextStyle(fontFamily: 'Poppins Bold', fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(16),
            height: 200,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                      color: Color(0x40000000),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 3)),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sreehari R",
                    style: TextStyle(
                      fontFamily: "Poppins Regular",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "884853XXXX",
                    style: TextStyle(
                      fontFamily: "Poppins Regular",
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 48,
                    width: 295,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xFFE23744)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Bottomnavbar()));
                        },
                        autofocus: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login with",
                              style: TextStyle(
                                fontFamily: "Poppins Bold",
                                color: Colors.white,
                                // fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                              height: 15.436123847961426,
                              width: 73,
                              child: UiHelper.customImage(
                                image: "xomatoicon.png",
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Access your saved addresses from Zomato automatically!",
                    style: TextStyle(
                      fontFamily: "Poppins Regular",
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bottomnavbar()));
                      },
                      child: Text(
                        "or login with phone number",
                        style: TextStyle(
                          fontFamily: "Poppins Regular",
                          color: Color(0xFF269237),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
