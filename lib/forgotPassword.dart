import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static const route = '/forgotPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: const Color(0xff30abe8),
          elevation: 0,
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
          child: Container(
            margin: const EdgeInsets.only(top: 170, bottom: 0),
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 100),
                const Text("Forgot Password !!",style: TextStyle(
                    color: Color(0xff3eecba),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 50,),
                SizedBox(
                    width: 380,
                    child: Material(
                        elevation: 4,
                        shadowColor: Colors.white,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Email, Phone calling, or SMS',
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
                const SizedBox(height: 10,),
                    const Text("You must enter your email, or phone number."),
                const SizedBox(height: 50,),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            showDialog(context: context, builder : (context) {
                              return const AlertDialog(
                                title: Text("Code is sent !"),
                                content: Text('Code will sent in 60 seconds'),
                              );
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff3eecba),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            ),
                          ),
                          child: const Text("Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                      ),
                    ),
              ]),
          ),
        )
    );
  }
}