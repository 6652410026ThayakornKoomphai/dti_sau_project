// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({super.key});

  @override
  State<SignupUI> createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Make it work, make it right, make it fast.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter your Full Name',
                  labelText: 'Full Name',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter your E-Mail',
                  labelText: 'E-Mail',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.numbers,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter your PhoneNUMBER',
                  labelText: 'Phone No',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.fingerprint,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: 'Enter your Password',
                  labelText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.065,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'OR',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/googlelogo.png',
                      width: 20.0,
                    ),
                    Text('     SIGN-IN WITH GOOGLE',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height * 0.065,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 33, 83, 232),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
