import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int _day = 30;
  final String _name = 'Codepur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $_day days of Flutter by $_name'),
        ),
      ),
    );
  }
}
