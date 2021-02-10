import 'package:flutter/material.dart';
import './products.dart';
//import './product_control.dart';

class ProductManager extends StatelessWidget{

 final List<Map<String , dynamic>> products;
 //final Function addProduct;
 //final Function deleteProduct;
 
ProductManager(this.products);
     
    @override 
  Widget build(BuildContext context) {
    print('[Product Manager State ] build()');
  return Column(
    children: [
      /* Container(
           margin: EdgeInsets.all(10.0),
           child: ProductControl(addProduct),
           ),*/
           Expanded (child: Products(products)
           )
           ],
          );
  
  
  }
}