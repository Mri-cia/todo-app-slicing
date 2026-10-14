import 'package:flutter/material.dart';

class IconCheck extends StatefulWidget {
  const new({super.key, this.onChange});

  final VoidCallback? onChange;

  @override
  State<IconCheck> createState() => _IconCheckState();
}

class _IconCheckState extends State<IconCheck> {

  bool _isChecked = false;

  void _handleTap() {
    setState(() {
      _isChecked = !_isChecked;
      widget.onChange?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: _handleTap,
        child: Icon(_isChecked ? Icons.check_circle : Icons.radio_button_unchecked),
      ),
    );
  }
}