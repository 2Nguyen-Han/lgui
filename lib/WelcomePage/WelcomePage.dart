import 'package:abcxyz/Login/login.dart';
import 'package:flutter/material.dart';
class WelcomeScreens extends StatefulWidget {
  const WelcomeScreens({super.key});

  @override
  State<WelcomeScreens> createState() => _WelcomeScreensState();
}

class _WelcomeScreensState extends State<WelcomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(2, 220, 190, 5),
            child: Text(
              'Welcome to',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(2, 8, 140, 5),
            child: Text(
              'MaxPense',

              style: TextStyle(color: Colors.blue, fontSize: 42,fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(30, 2, 80, 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'A place where',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      Text(
                        "you can track all your",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'expense and incomes...',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.fromLTRB(2, 35, 180, 5),
            child: Text(
              'Let\'s Get Started...',

              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: () {},
            child: Container(

              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Logo.png"),
                      Text(
                        '  Continue with google',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                    ]),
              ),
            ),
          ),
          InkWell(

            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black)
              ),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        ' Continue with Email  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "@",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      )

                    ]),
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(80, 2, 100, 5),
              child: Row(children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "Login");
                  },
                  child: const Text(
                    " Login",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
