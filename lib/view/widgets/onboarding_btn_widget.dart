import 'package:flutter/material.dart';

class OnBoardingBtn extends StatelessWidget {
  const OnBoardingBtn({
    super.key,
    required this.label,
    this.img,
    required this.bgColor,
    required this.onPressed,
    this.txtColor,
  });
  final String label;
  final String? img;
  final Color bgColor;
  final Color? txtColor;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 16, right: 16, bottom: 8),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(48)),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                img == null ? Text('') : Image.asset(img!),
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16,
                    color: txtColor ?? Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
