import 'package:flutter/material.dart';

import '../weigets/task_card.dart';
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
      backgroundColor: Colors.grey.shade200,
      appBar: TMAppbar(),
      body: Column(
        children: [
          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(3.0),
             child: SizedBox(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return TaskCountByStatus(title: 'Cancelled',count: index+5,);
                    },
                    separatorBuilder: (context,index){
                    return SizedBox(width: 4,);
                    },
                ),
              ),
           ),
          Expanded(
            child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context,index){
                  return TaskCard();
                },
                separatorBuilder: (context,index){
                  return SizedBox(height: 4,);
                },
            ),
          ),
        ],
      ),
    );
  }
}






