import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        color: Colors.white,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          title: Text('This is task title'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5,),
              Text('Description of task'),
              const SizedBox(height: 5,),
              Text('Date: 07/01/2026',),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Chip(
                    label: Text('New'),
                    backgroundColor: Colors.blue,
                    labelStyle: TextStyle(color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: (){}, icon: Icon(Icons.edit_note_rounded),
                    color: Colors.green,),
                  IconButton(
                    onPressed: (){}, icon: Icon(Icons.delete),
                    color: Colors.red,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}