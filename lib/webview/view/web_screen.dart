import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/web_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? T, F;

  @override
  Widget build(BuildContext context) {
    T = Provider.of<HomeProvider>(context, listen: false);
    F = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Select an app"),
        ),
        body: GridView.builder(
          itemCount: F!.Logos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 220),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,'web');
                F!.loadurl(index);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      "${F!.Logos[index]}",
                      fit: BoxFit.cover,
                    ),
                    Spacer(),
                    Text(
                      "${F!.names[index]}",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}