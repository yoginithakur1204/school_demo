/*import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  final String title;
  final String imageUrl;
  ProductPage(this.title,this.imageUrl);
  _showWarningDialog(BuildContext context){
    showDialog(context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title:Text('are u sure?'),
        content: Text('This action cannot be undone'),
        actions:<Widget>[
          FlatButton( child: Text('Discard'),
          onPressed:(){
            Navigator.pop(context);
          } ,),

          FlatButton(child: Text('continue'),
          onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context,true);
            
          }, 
          ),
        ],
      );
    });
  }
 @override
  Widget build(BuildContext context) {
  return WillPopScope(
     onWillPop: (){
       print('Back  button Pressed!!');
       Navigator.pop(context,false);
       return Future.value(false);

  },
  );


  }

}
*/












































import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
final String title;
final String imageUrl;

ProductPage(this.title,this.imageUrl);

_showWarningDialog(BuildContext context){
   showDialog(
     context: context,
     builder: (BuildContext context){
       return AlertDialog(
         title: Text('Are u sure'),
         content: Text('This action cannot be undone'),
         actions: <Widget>[
           FlatButton(
             child: Text('DISCARD') ,
             onPressed: (){
              Navigator.pop(context);
           }, 
           ),

           FlatButton(
             child: Text('CONTINUE'),
             onPressed: (){
             Navigator.pop(context);
             Navigator.pop(context,true);
           },
            ),
         ],
       );
     });
   }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
      print('back button pressed');
      Navigator.pop(context,false);
      return Future.value(false);
    },
    
  child: Scaffold(
    appBar: AppBar(
      title: Text(title),
     ),
  body:Center (
      child:Column(
       mainAxisAlignment:  MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       
        children: <Widget>[
         //Image.asset('assets/f.jpg'), 
         Image.asset(imageUrl),
          
        Container(
        padding: EdgeInsets.all(10.0),
        child: Text(title),
        ),
       
        Container(
        padding: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).accentColor,
          child: Text('delete'),
          onPressed:() => _showWarningDialog(context),
        
         ),
         ),
     ],
     ),
     ) 
    )
    );
  }
  }

