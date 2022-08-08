import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Form feild custom properties
// ignore: must_be_immutable
class FormFeilds extends StatelessWidget {
  FormFeilds(
      {Key? key,
      this.name,
      this.inputTextColor,
      this.icon,
      this.size,
      this.keyboardType,
      required this.obscureText,
      this.textColor,
      this.breath,
      this.length})
      : super(key: key);

  String? name;
  IconData? icon;
  final Color? inputTextColor;
  final bool obscureText;
  final Color? textColor;
  final double? size;
  final TextInputType? keyboardType;
  final int? length;
  final int? breath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 10),
      child: CupertinoTextField(
        keyboardType: keyboardType,
        maxLength: length,
        placeholder: name,
        obscureText: obscureText,
        minLines: breath,
        obscuringCharacter: '*',
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
        style: const TextStyle(
          fontSize: 20,
        ),
        placeholderStyle: TextStyle(
          color: const Color.fromARGB(145, 255, 255, 255),
          fontWeight: FontWeight.w400,
          fontSize: size,
        ),
        prefix: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
