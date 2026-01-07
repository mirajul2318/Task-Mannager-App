import 'package:flutter/material.dart';

import '../weigets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                  Text('Set Password',
                    style: Theme.of(context).textTheme.titleLarge,),
                  const SizedBox(height: 17,),
                  Text('Password should be more than 6 letters and combination of numbers',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),),
                  const SizedBox(height: 17,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password'
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
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordVerifyOtp()));
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
