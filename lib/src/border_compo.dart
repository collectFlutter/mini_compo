import 'package:flutter/material.dart';

/// 圆角背景
class BorderCompo extends StatelessWidget {
  final Color? backColor;
  final String label;
  final double fontSize;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double? width;
  final double? height;
  final double shapeWidth;

  const BorderCompo({
    Key? key,
    this.backColor,
    this.width,
    this.height,
    required this.label,
    this.fontSize = 13,
    this.textColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(5.0)),
    this.margin = EdgeInsets.zero,
    this.fontWeight = FontWeight.normal,
    this.padding = const EdgeInsets.all(5.0),
    this.shapeWidth = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _backColor = backColor ??
        ((textColor != Colors.white && backColor == null)
            ? textColor.withAlpha(80)
            : Colors.green);
    return GestureDetector(
      child: Padding(
        padding: margin,
        child: Material(
          color: _backColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: textColor, width: shapeWidth),
            borderRadius: borderRadius,
          ),
          child: Container(
            width: width,
            height: height,
            padding: padding,
            alignment: (height != null) ? Alignment.center : null,
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  height: 1),
            ),
          ),
        ),
      ),
    );
  }
}
