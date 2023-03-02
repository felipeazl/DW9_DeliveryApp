import 'package:flutter/material.dart';

class CustomAppbar extends AppBar {
  CustomAppbar({
    super.key,
    double elevation = 1,
  }) : super(
          elevation: elevation,
          title: Image.asset(
            'assets/images/logo.png',
            width: 80,
          ),
        );
}
