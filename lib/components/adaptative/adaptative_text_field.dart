import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  AdaptativeTextField({
    this.label,
    this.textController,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              placeholder: label,
              controller: textController,
              keyboardType: keyboardType,
              onSubmitted: onSubmitted,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            decoration: InputDecoration(labelText: label),
            controller: textController,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
          );
  }
}
