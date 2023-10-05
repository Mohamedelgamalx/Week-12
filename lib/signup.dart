import 'package:flutter/material.dart';
import 'package:week_12/login.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  static const route = '/signup';
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff30abe8),
          elevation: 0,
          title: const Row(
            children: [
              Icon(Icons.menu),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [
                  Colors.lightBlue,
                  Colors.lightGreen,
                ],
              )
          ),
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 170, bottom: 0),
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 80,),
                  const Text("Sign Up", style: TextStyle(
                      color: Color(0xff3eecba),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                      width: 380,
                      child: Form(
                        key: formstate,
                        child: Material(
                          elevation: 4,
                          shadowColor: Colors.white,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 0
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 380,
                    child: Material(
                      elevation: 4,
                      shadowColor: Colors.white,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (firstPassword) {
                          if (firstPassword!.length < 8) {
                            return 'You must enter above 8 letters';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 0
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 380,
                    child: Material(
                      elevation: 4,
                      shadowColor: Colors.white,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (confirmedPassword) {
                          if (confirmedPassword!.length < 8) {
                            return 'You must the same password';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 0
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return const AlertDialog(
                              title: Text("Successfully!!"),
                              content: Text('Sign Up has been successful'),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3eecba),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),
                        ),
                        child: const Text("Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                    ),
                  ),
                  const SizedBox(height: 80,),
                  SizedBox(
                      height: 70,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Login.route);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff3eecba)
                          ),
                          child: const Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}