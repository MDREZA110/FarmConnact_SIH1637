// ignore: unused_import
import 'dart:developer';

import 'package:farmconnect/main.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  final passwardController = TextEditingController();

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Register Phone no.",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.25),
                  filled: true,
                  hintText: "Enter Phone",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),

            const SizedBox(height: 20,),

            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: phoneController,
              decoration: InputDecoration(
                  fillColor: kColorScheme.primaryContainer.withOpacity(0.25),
                  filled: true,
                  hintText: "Enter Phone",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),


            const SizedBox(height: 20),
            // isloading
            //     ? const CircularProgressIndicator()
            //     : ElevatedButton(
            //         onPressed: () async {
            //           setState(() {
            //             isloading = true;
            //           });

            //           await FirebaseAuth.instance.verifyPhoneNumber(
            //             phoneNumber: phoneController.text,
            //             verificationCompleted: (phoneAuthCredential) {},
            //             verificationFailed: (error) {
            //               log(error.toString());
            //             },
            //             codeSent: (verificationId, forceResendingToken) {
            //               setState(() {
            //                 isloading = false;
            //               });
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => OTPScreen(
            //                             verificationId: verificationId,
            //                           )));
            //             },
            //             codeAutoRetrievalTimeout: (verificationId) {
            //               log("Auto Retireval timeout");
            //             },
            //           );
            //         },
            //         child: const Text(
            //           "Sign in",
            //           style:
            //               TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            //         ))
          ],
        ),
      ),
    );
  }
}
