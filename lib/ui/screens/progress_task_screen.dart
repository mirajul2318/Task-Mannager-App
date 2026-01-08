import 'package:flutter/material.dart';
import 'package:taskapp/ui/weigets/tm_app_bar.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppbar(),
    );
  }
}
