import 'package:flutter/material.dart';

import 'home/home_grid.dart';
import 'home/home_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Luha Store", 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.black,
            ),
            body: LayoutBuilder(
                builder:(BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                    return ProductList();
                  } else if (constraints.maxWidth <= 1200) {
                    return ProductGrid(2);
                  } else {
                    return ProductGrid(4);
                  }
                }
            ),
          );
        }
    );
  }
}