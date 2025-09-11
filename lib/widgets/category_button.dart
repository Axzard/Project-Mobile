import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final String title;
  final VoidCallback? onTap;
  const CategoryButton({Key? key, required this.title, this.onTap})
      : super(key: key);

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  final Color accentColor = Color(0xFF415A77); 
  final Color accentPressed = Color(0xFF778DA9); 
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        if (widget.onTap != null) widget.onTap!();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _isPressed ? accentPressed : accentColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
