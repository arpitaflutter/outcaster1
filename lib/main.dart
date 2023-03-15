import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:outcaster1/screens/IOS/view/ios_screen.dart';
import 'package:outcaster1/screens/home/provider/home_provider.dart';
import 'package:outcaster1/screens/home/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => home_provider())
      ],
      child: Platform.isAndroid?Android():iOS(),
    ),
  );
}


Widget Android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => home_screen(),
    },
  );
}

Widget iOS()
{
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) =>ios_screen(),
    },
  );
}