import 'package:e_mart/consts/images.dart';
import 'package:e_mart/consts/strings.dart';
import 'package:e_mart/views/cart_screen/cart_screen.dart';
import 'package:e_mart/views/category_screen/category_screen.dart';
import 'package:e_mart/views/home_screen/home_screen.dart';
import 'package:e_mart/views/profile_screen/profile_screen.dart';
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
      label: home),
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
      label: profile),
];

/// NavBody
var navBody = [
  const HomeScreen(),
  const CategoryScreen(),
  const CartScreen(),
  const ProfileScreen()
];

//// Home screen swiper brand list banners
var sliderList = [
  imageSlider_1,
  imageSlider_2,
  imageSlider_3,
  imageSlider_4,
];
