// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioButton extends StatefulWidget {
  CustomRadioButton({
    Key? key,
    required this.groupValue,
    required this.text,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  String text;
  String? groupValue;
  String value;
  final onChanged;

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
          child: ListTile(
            horizontalTitleGap: 0,
            selectedColor: Colors.white,
            title: Text(
              widget.text,
              style: TextStyle(
                color: Color(0xFFC4C4C4),
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            leading: Radio(
              hoverColor: Colors.lightGreenAccent,
              fillColor: MaterialStateColor.resolveWith(
                (states) => Colors.grey,
              ),
              value: widget.value,
              groupValue: widget.groupValue,
              onChanged: widget.onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
