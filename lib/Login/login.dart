import 'package:flutter/material.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _password = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint(_userEmail);
      debugPrint(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,

        child: Column(

            crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 48,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 1,),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 100, 5),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.blue, fontSize: 30),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(30, 2, 80, 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Login now to track',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      Text(
                        "all your expenses",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'and income at a place',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  )
                ],
              )),
          Container(
            padding: EdgeInsets.fromLTRB(30, 25, 100, 5),
            child: Text(
              'Email',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.01,
                right: 35,
                left: 30),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(width: 0.8)),
                    contentPadding: EdgeInsets.only(top: 14),
                    hintText: 'Ex: abc@example.com',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff0f2137),
                    )),
                validator: (value) {
                  print(value);
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Check if the entered email has the right format
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  // Return null if the entered email is valid
                  return null;
                },
                onChanged: (value) => _userEmail = value,
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 25, 100, 5),
            child: Text(
              'Password',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.01,
              right: 35,
              left: 30,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                // prefix: Image.asset("assets/images/@@.png"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                contentPadding: EdgeInsets.only(top: 14),
                hintText: '.............',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                
                prefixIcon: Icon(

                  Icons.lock,
                  color: Color(0xff0f2137),
                ),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'This field is required';
                }
                if (value.trim().length < 8) {
                  return 'Password must be at least 8 characters in length';
                }

                return null;
              },
              onChanged: (value) => _password = value,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "ForgotPasswordEmail");
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 10, 100, 5),
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue, fontSize: 13),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              _trySubmitForm();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2,),
          const Divider(
            color: Colors.black,
            height: 25,
            thickness: 2,
            indent: 30,
            endIndent: 30,
          ),
          SizedBox(height: 2,),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/images/Logo.png"),
                  Text(
                    ' Continue with google',
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
          SizedBox(height: 5,),
          Container(
              padding: EdgeInsets.fromLTRB(80, 2, 100, 2),
              child: Row(children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'Register');
                  },
                  child: const Text(
                    " Register",
                    style: TextStyle(color: Colors.blue, fontSize: 14.5),
                  ),
                )
              ]))
        ]),
      ),
    ))
    );
  }
}
