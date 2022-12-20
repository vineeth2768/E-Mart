import 'package:e_mart/consts/images.dart';
import 'package:e_mart/consts/strings.dart';
import 'package:flutter/material.dart';

const socialIconList = [
  icFacebookLogo,
  icGoogleLogo,
  icTwitterLogo,
];

///// Bottomnavigation Bar list

var navBarItem = [
  BottomNavigationBarItem(
      icon: Image.asset(
        icHome,
        width: 25,
      ),
      label: name),
  BottomNavigationBarItem(
      icon: Image.asset(
        icCategories,
        width: 25,
      ),
      label: categories),
  BottomNavigationBarItem(
      icon: Image.asset(
        icCart,
        width: 25,
      ),
      label: cart),
  BottomNavigationBarItem(
      icon: Image.asset(
        icProfile,
        width: 25,
      ),
      label: account),
];

/// NavBody
var navBody = [
  Container(color: Colors.blue),
  Container(color: Colors.amber),
  Container(color: Colors.purple),
  Container(color: Colors.cyan),
];
