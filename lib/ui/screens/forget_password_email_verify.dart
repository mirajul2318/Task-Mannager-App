import 'package:flutter/material.dart';
import 'package:taskapp/ui/weigets/screen_background.dart';

import 'forget_password_verify_otp.dart';

class ForgetPasswordEmailVerify extends StatelessWidget {
  const ForgetPasswordEmailVerify({super.key});

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
                  Text('Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 17,),
                  Text('A 6 digits OTP will be sent to your email address',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.grey,
                  ),),
                  const SizedBox(height: 17,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email'
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
