
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview/webview/provider/web_provider.dart';
import 'package:webview/webview/view/web_screen.dart';

import 'openweb/view/open_webscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>  HomeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'web',
        routes: {
          '/': (context) => HomeScreen(),
          'web':(context) => WebScreen(),
        },
      ),
    ),
  );
}