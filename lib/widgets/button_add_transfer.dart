import 'package:flutter/material.dart';
import 'package:saaku/styles/theme.dart';

class ButtonAddTransfer extends StatelessWidget {
  final String text;
  final String iconButton;
  final Color textColor;
  final Color buttonColor;
  final BorderSide border;
  const ButtonAddTransfer({
    Key? key,
    required this.text,
    required this.iconButton,
    this.textColor = const Color(0xFFFFFFFF),
    this.buttonColor = const Color(0xFF4471ED),
    this.border = BorderSide.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 11),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: border,
          ),
          primary: buttonColor,
          elevation: 0,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconButton,
              width: 24,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              text,
              style: AppTheme.medium12.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
