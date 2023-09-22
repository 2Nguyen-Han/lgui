import 'package:flutter/material.dart';
class RegisterScreens extends StatefulWidget {
  const RegisterScreens({Key? key}) : super(key: key);

  @override
  State<RegisterScreens> createState() => _RegisterScreensState();

}
class _RegisterScreensState extends State<RegisterScreens> {
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _yourName = '';
  String _password = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint(_userEmail);
      debugPrint(_yourName);
      debugPrint(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(

          child: Column(

              crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                'Register',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 2, 100, 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Create an',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      Text(
                        ' account',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        " to access all the ",
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'features of ',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                      Text(
                        'Maxpense!',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
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
                'Your name',
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
                      hintText: 'Ex. Saul Ramirez',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff0f2137),
                      )),
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(value)) {}
                  },
                  onChanged: (value) => _yourName = value,
                )),
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
                  left: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8)),
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
            SizedBox(height: 35,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'Verification');
              },

              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 28),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(80, 14, 100, 5),
                child: Row(children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'Login');
                    },
                    child: const Text(
                      " Login",
                      style: TextStyle(color: Colors.blue, fontSize: 14.5),
                    ),
                  )
                ]))
          ]),
        ));
  }
}
