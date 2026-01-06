import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../weigets/screen_background.dart';

class ForgetPasswordVerifyOtp extends StatefulWidget {
  const ForgetPasswordVerifyOtp({super.key});

  @override
  State<ForgetPasswordVerifyOtp> createState() => _ForgetPasswordVerifyOtpState();
}

class _ForgetPasswordVerifyOtpState extends State<ForgetPasswordVerifyOtp> {
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
                  Text('PIN Verification',
                    style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 17,),
                  Text('A 6 digits OTP sent to your email address',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),),
                  const SizedBox(height: 17,),
                  PinCodeTextField(
                    length: 6,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveColor: Colors.grey.shade300,
                      selectedColor: Colors.green,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    appContext: context,
                  ),
                  const SizedBox(height: 10,),
                  FilledButton(onPressed: (){
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
