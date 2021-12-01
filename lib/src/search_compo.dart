import 'package:flutter/material.dart';

import 'text_field_compo.dart';

class SearchCompo extends StatelessWidget {
  const SearchCompo({
    Key? key,
    required this.controller,
    this.width,
    this.hintText = '搜索内容……',
    this.hintTextStyle,
    this.color,
    this.autoFocus = false,
    this.height,
    this.borderRadius,
    this.showIcon = true,
    this.maxLength,
    this.iconSize,
  }) : super(key: key);

  final TextEditingController controller;
  final double? width;
  final String hintText;
  final TextStyle? hintTextStyle;
  final Color? color;
  final bool autoFocus;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final bool showIcon;
  final int? maxLength;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      width: width,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).backgroundColor,
        borderRadius: borderRadius ?? BorderRadius.circular(4.0),
      ),
      child: TextFieldCompo(
        autoFocus: autoFocus,
        controller: controller,
        maxLength: maxLength,
        contentPadding: const EdgeInsets.only(
            top: 0.0, left: -8.0, right: 26.0, bottom: 0.0),
        icon: showIcon
            ? Icon(Icons.search, color: hintTextStyle?.color, size: iconSize)
            : null,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        hintText: hintText,
        hintTextStyle: hintTextStyle,
      ),
    );
  }
}
