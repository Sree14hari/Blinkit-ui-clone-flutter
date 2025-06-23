import 'package:blinkit_clone/ui/widgets/customappbar.dart';
import 'package:flutter/material.dart';

class Printerpage extends StatelessWidget {
  const Printerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      appBar: CustAppBar(
        textColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Print Store",
                  style: TextStyle(fontFamily: "poppins bold", fontSize: 32),
                ),
                Text(
                  "Blinkit ensures secure prints at every stage",
                  style: TextStyle(
                      fontFamily: "poppins bold",
                      fontSize: 14,
                      color: Color(0XFF9C9C9C)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Documents",
                                style: TextStyle(
                                  fontFamily: "poppins bold",
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "⟡ Price starting at rs 3/page",
                                style: TextStyle(
                                  fontFamily: "poppins regular",
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "⟡ Paper quality: 70 GSM",
                                style: TextStyle(
                                  fontFamily: "poppins regular",
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                "⟡ Single side prints",
                                style: TextStyle(
                                  fontFamily: "poppins regular",
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all(Colors.green),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Upload Files",
                                  style: TextStyle(
                                      fontFamily: "poppins bold",
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/images/snacks/docs.png",
                            height: 90,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
