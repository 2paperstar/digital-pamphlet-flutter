import 'package:flutter/material.dart';

final theme = ThemeData(
  fontFamily: "Pretendard",
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: Color(0xFFE0E0E0),
    selectedItemColor: Color(0xFF4B4846),
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
  ),
);
