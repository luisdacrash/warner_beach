import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  final double height;

   const ImageButton({super.key, required this.image, required this.text,required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      width: width,
      height: height,
      child: Center(
        child: Stack(
          children: [
            FadeInImage(
              fit: BoxFit.cover,
              placeholder: AssetImage(image),
              image: AssetImage(image),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                      
              
                ),
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}
