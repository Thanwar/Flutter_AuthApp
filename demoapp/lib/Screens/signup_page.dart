import 'package:demoapp/Screens/login_page.dart';
import 'package:flutter/material.dart';

import 'package:toast/toast.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Signupbtn()
  {
    print("SignBTN");
    // if()
    // {
    //   Toast.show("Please enter Email", duration: Toast.lengthLong, gravity:  Toast.bottom);
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Signup",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              // Input Fields
              // UserEmail
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'User Email',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),

              // UserName
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(Icons.person_outlined),
                    hintText: 'User Name',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),

              // Password
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),

              // Confirm Password
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Confirm Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),

              // SignupBtn
              Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                child: ElevatedButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: Signupbtn,
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    )),
              ),

              // SignUPbtn
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a user? '),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (builder) => const Login(),
                          ),
                        );
                      }),
                      child: Text('Login'),
                    )
                  ],
                ),
              ),

              
            ]),
          ),
        ),
      ),

    );
  }
}