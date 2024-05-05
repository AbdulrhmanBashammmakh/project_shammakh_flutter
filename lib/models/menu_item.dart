import 'package:flutter/material.dart';

class MenuItemM {
  final String? image;
  final String label;
  final IconData? icon;
  final VoidCallback onClicked;

  final Widget? trailing;

  MenuItemM(
    this.image,
    this.label,

    this.icon, {
        required this.onClicked,
    this.trailing,
  });
}
