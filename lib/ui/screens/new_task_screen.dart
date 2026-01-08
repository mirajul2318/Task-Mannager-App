import 'package:flutter/material.dart';

import '../weigets/task_count_by_status.dart';
import '../weigets/tm_app_bar.dart';

class Newtaskscreen extends StatefulWidget {
  const Newtaskscreen({super.key});

  @override
  State<Newtaskscreen> createState() => _NewtaskscreenState();
}

class _NewtaskscreenState extends State<Newtaskscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppbar(),
      body: Column(
        children: [
          SizedBox(height: 10,),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                  return TaskCountByStatus();
                }
            ),
          ),
        ],
      ),
    );
  }
}




