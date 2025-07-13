import 'package:card_banner/card_banner.dart';
import 'package:flutter/material.dart';

class CardBannerWrapper extends StatelessWidget {
  final String title;
  final Widget widget;
  final Color badgeColor;
  final Color titleColor;
  const CardBannerWrapper({
    required this.title,
    required this.widget,
    required this.badgeColor,
    required this.titleColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardBanner(
        text: title,
        color: badgeColor,
        textStyle: TextStyle(color: titleColor),
        position: CardBannerPosition.TOPRIGHT,
        child: widget,
      ),
    );
  }
}
