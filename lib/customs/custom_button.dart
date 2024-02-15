import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    required this.onPressed,
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width:200 ,
      height: 50, // Define a fixed height for the button container
      borderRadius: 20,
      blur: 10,
      alignment: Alignment.bottomCenter,
      border: 0,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.1),
          const Color(0xFFFFFFFF).withOpacity(0.05),
        ],
        stops: const [
          0.1,
          1,
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFFffffff).withOpacity(0.5),
          const Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      child: TextButton(
        
        onPressed: onPressed,
        child:  Text(
          text,
          style: const TextStyle(
        
            fontSize: 20,
            color: Colors.white,
            
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    
    );
  }
}