import 'package:flutter/material.dart';

class TaskCountByStatus extends StatelessWidget {
  const TaskCountByStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('9',
            style: Theme.of(context).textTheme.titleLarge,),
          Text('Cancelled',
            style: Theme.of(context).textTheme.bodySmall,)
        ],
      ),
    );
  }
}