import 'package:flutter/material.dart';

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 10.0,end: 20.0
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);