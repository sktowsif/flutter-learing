import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/product_model.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _dummyList = List.generate(4, (index) => products[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: _dummyList.length,
            itemBuilder: (context, index) {
              return ProductItem(product: _dummyList[index]);
            }),
      ),
      drawer: const AppDrawer(),
    );
  }
}
