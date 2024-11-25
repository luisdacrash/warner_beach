import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      trailing:  IconButton(onPressed: ()=>{print("MenuItem")}, icon: const Icon(Icons.arrow_forward)),
      title: Text(text),
    );
  }
}