import 'package:flutter/material.dart';

import '../weigets/screen_background.dart';
import 'forget_password_verify_otp.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ScreenBackground(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 180,),
                  Text('Join with us',
                    style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 17,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email'
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'First name'
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Last name'
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Mobile'
                    ),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password'
                    ),
                  ),
                  const SizedBox(height: 10,),
                  FilledButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordVerifyOtp()));
                  }, child: Icon(Icons.arrow_circle_right)),
                  const SizedBox(height: 30,),
                  Center(
                    child: Column(
                      children: [
                        RichText(text: TextSpan(
                            text: "Already have an account?",
                            children: [
                              TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                    color: Colors.green,
                                  )
                              )
                            ],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )) ,
    );
  }
}
