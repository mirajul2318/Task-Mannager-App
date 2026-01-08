import 'package:flutter/material.dart';

class TMAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          SizedBox(width: 7,),
          CircleAvatar(),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mirajul Alam',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white,
                ),),
              Text('miraj18@gmail.com',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),)
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}