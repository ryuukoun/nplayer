import 'package:flutter/material.dart';

class NetPage extends StatefulWidget {
  @override
  State<NetPage> createState() => _NetPageState();
}

class _NetPageState extends State<NetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('网络'),
          ],
        ),
      ),
    );
  }
}
