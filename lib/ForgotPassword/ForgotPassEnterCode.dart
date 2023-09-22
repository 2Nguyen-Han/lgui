import 'package:flutter/material.dart';
class ForgotPassEnterCode extends StatefulWidget {
  const ForgotPassEnterCode({super.key});

  @override
  State<ForgotPassEnterCode> createState() => _ForgotPassEnterCodeState();
}

class _ForgotPassEnterCodeState extends State<ForgotPassEnterCode> {
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _verification = '';
  String _password = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint(_verification);
      debugPrint(_userEmail);
      debugPrint(_password);
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
                        'Set your new password to login into',
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
                        'your account!',
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
              'Enter New Password',
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
                  'Confirm',
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


