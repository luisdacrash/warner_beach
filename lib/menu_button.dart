import 'package:flutter/material.dart';

class MenuButton  extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(30)
      ),
      width: 370,
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Icon(icon,size: 50,),
          ),
          SizedBox(
            child: Text(style: const TextStyle(fontSize: 40),text),
          )
        ],
      ),
    );
  }
}