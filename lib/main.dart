import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mina/mina.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const Mina());
}



