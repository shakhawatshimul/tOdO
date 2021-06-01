import 'package:flutter/material.dart';

const Color kdarkGreen = Color(0xFF002605);

const TextStyle kTextStyleForToDo = TextStyle(
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w600,
);

const TextStyle kTextStyleForLeftToDo = TextStyle(
  fontSize: 18,
  color: Colors.white,
);

const CircleAvatar kCircleAvatar = CircleAvatar(
  backgroundColor: Colors.white,
  radius: 25,
  child: Icon(
    Icons.list,
    size: 40,
    color: kdarkGreen,
  ),
);

const BoxDecoration kContainerDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);

const BoxDecoration kAddTaskBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);

const kAddTaskTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w500,
  color: kdarkGreen,
);

const kSizedBoxofHeight15 = SizedBox(
  height: 15,
);

const kTextFieldDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: kdarkGreen,
    ),
  ),
  hintText: 'Enter Task Name',
);
