import 'package:flutter/material.dart';


class Products extends StatelessWidget {

final List<Map<String,dynamic>> products; 


Products(this.products ){


print('LIFECYCLE:[PRODUCT WIDGET CONSTRUCTOR]');
}  

  Widget _buildProductItem(BuildContext context, int index){
    return Card( 
             child: Column(
                children: <Widget>[
       Image.asset(products[index]['image']),
       Text(products[index]['title']),
       ButtonBar(
         alignment: MainAxisAlignment.center,
         children:<Widget>[
         FlatButton(
           child:Text('Details'), 
            onPressed:()=> Navigator.
            pushNamed<bool>(
              context, '/product/' + index.toString())
          /*  .then((bool value) {
                  if(value) {
                    deleteProduct(index);
                  }
                }),*/
            )
            ],
            )
     ],
     ),
     );
  }
  Widget _buildProductLists(){
   Widget productCard = Center(child:
    Text('no product found'),
    );
    if(products.length>0){
      productCard = ListView.builder (
     itemBuilder: _buildProductItem,
     itemCount: products.length,
      );
    } else {
      productCard=Container();
    }

   return   productCard;
       


  }

  @override
  Widget build(BuildContext context) {
   print('LIFECYCLE:[PRODUCT WIDGET BUILD] build()');
   return _buildProductLists();
  }
}