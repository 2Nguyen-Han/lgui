import 'package:flutter/material.dart';
class ForgotVerification extends StatefulWidget {
  const ForgotVerification({super.key});

  @override
  State<ForgotVerification> createState() => _ForgotVerificationState();
}

class _ForgotVerificationState extends State<ForgotVerification> {
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
                        'We have sent an email to your email',
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
                        'account with a verification code!',
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
              'Verification Code',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: 35,
                  left: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8)),
                  contentPadding: EdgeInsets.only(top: 14),
                  hintText: 'EX:123456',
                  hintStyle: TextStyle(

                    color: Colors.grey,
                  ),
                ),
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value!.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(value)) {}
                },
                onChanged: (value) => _verification = value,
              )),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "ForgotPassEnterCode");
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



