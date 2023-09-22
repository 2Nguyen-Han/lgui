import 'package:flutter/material.dart';
class ForgotEmailScreen extends StatefulWidget {
  const ForgotEmailScreen({super.key});

  @override
  State<ForgotEmailScreen> createState() => _ForgotEmailScreenState();
}

class _ForgotEmailScreenState extends State<ForgotEmailScreen> {
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _verification = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint(_verification);
      debugPrint(_userEmail);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 70, 100, 5),
              child: Icon(
                Icons.arrow_back_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 40, 100, 5),
            child: Text(
              'Forgot Password',
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
                        'Recover you password if you have',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      // Text(
                      //   " to your email",
                      //   style: TextStyle(color: Colors.black87, fontSize: 16),
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'forgot the password!',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              )),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.fromLTRB(30, 25, 100, 1),
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
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "ForgotPassVerification");
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 28),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ]));

  }
}
