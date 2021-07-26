import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterapp/style/font-style.dart';
import 'package:flutterapp/style/custom_colors.dart';
import 'package:intl/intl.dart';
import '../model/products_repository.dart';
import '../model/product.dart';

class Catalog extends StatelessWidget {
  List<Card> _buildGridCards(BuildContext context) {
    List<Product> products = ProductsRepository.loadProducts(Category.all);

    if (products.isEmpty) {
      return const <Card>[];
    }

    final ThemeData theme = Theme.of(context);
    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: Localizations.localeOf(context).toString());

    return products.map((product) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset(
                product.assetName,
                package: product.assetPackage,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: theme.textTheme.headline6,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      formatter.format(product.price),
                      style: theme.textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C A T A L O G"),
        backgroundColor: color1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print("Search Button");
            },
          ),
          IconButton(
              icon: Icon(
                Icons.tune,
                semanticLabel: 'filter',
              ),
              onPressed: () {
                print('Filter Button');
              })
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(context),
      ),
      /*Container(
        margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/gunung.png'),
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 4),
                  child: Text(
                    "My First Super App",
                    style: mainHeader,
                  ),
                ),
                Text(
                  "Ini adalah gambar Background Animasi\n sebagai hiasan di App Ini",
                  style: subHeader,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('BACK'),
                ),
              ],
            ),
          ],
        ),
      ),*/
      resizeToAvoidBottomInset: false,
    );
  }
}
