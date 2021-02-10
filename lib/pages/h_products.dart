

import 'package:flutter/material.dart';

import '../product_manager.dart';



class ProductsPage extends StatelessWidget{
 final List<Map<String, dynamic>> products;
 
 ProductsPage(this.products);




  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
        
      AppBar(
        automaticallyImplyLeading: false,
        title: Text('choose'),),
      ListTile(
        title: Text('Manage Products'),
         onTap: () {
           Navigator.pushReplacementNamed(context ,'/admin');
           
         },
      )
      ],
      ),
      ),
      appBar: AppBar(
        title: Text('Easy List'),
      ),
       body: ProductManager(products),
    //body: ProductManager(products,addProduct,deleteProduct),

    );
  }
      //@override
      //void debugFillProperties(DiagnosticPropertiesBuilder properties) {
      //super.debugFillProperties(properties);
      //properties.add(IterableProperty<Map<String, String>>('products', products));
  }
