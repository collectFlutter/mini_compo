import 'package:flutter/material.dart';

/// 角标
class BadgeCompo extends StatelessWidget {
  const BadgeCompo({
    Key? key,
    required this.child,
    this.text,
    this.number = 0,
    this.textStyle = const TextStyle(fontSize: 12, color: Colors.white),
    this.align = Alignment.topRight,
    this.offsetX = -5,
    this.offsetY = -5,
    this.backgroundColor = Colors.red,
    this.borderRadius = 8,
    this.borderWidth = 0,
    this.borderColor = Colors.red,
  }) : super(key: key);

  final Widget child;
  final String? text;
  final int number;
  final TextStyle textStyle;
  final Alignment align;
  final double offsetX;
  final double offsetY;
  final Color backgroundColor;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;

  String get _badgeText {
    if (text != null) {
      return text!;
    } else {
      if (number <= 0) {
        return '';
      }
      if (number > 99) {
        return '99+';
      }
      return number.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: align.x == -1 && offsetX < 0 ? -offsetX : 0,
        right: align.x == 1 && offsetX < 0 ? -offsetX : 0,
        top: align.y == -1 && offsetY < 0 ? -offsetY : 0,
        bottom: align.y == 1 && offsetY < 0 ? -offsetY : 0,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: align,
        children: <Widget>[
          child,
          _badgeText.isNotEmpty
              ? Positioned(
                  left: align.x == -1 ? offsetX : null,
                  right: align.x == 1 ? offsetX : null,
                  top: align.y == -1 ? offsetY : null,
                  bottom: align.y == 1 ? offsetY : null,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 3, right: 3, bottom: 1),
                    child: Text(_badgeText, style: textStyle),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(borderRadius),
                      border:
                          Border.all(color: borderColor, width: borderWidth),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}
