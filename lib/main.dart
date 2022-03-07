import 'package:drugstore/src/ui/authorization/phone_number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      home: const PhonePage(),

    ),
  );
}
