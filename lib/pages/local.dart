import 'package:flutter/material.dart';

class LocalPage extends StatefulWidget {
  @override
  State<LocalPage> createState() => _LocalPageState();
}

class _LocalPageState extends State<LocalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('本地'),
          ],
        ),
      ),
    );
  }
}
