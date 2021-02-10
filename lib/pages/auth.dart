


import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage>{
   String _emailValue;
   String _passwordValue;
   bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
          TextField(
            decoration:InputDecoration(labelText: 'E-mail'),
            keyboardType:TextInputType.emailAddress,
            onChanged: (String  value){
              setState(() {
                value= _emailValue ;
              });
            }
          ),
           TextField(
             
             decoration:InputDecoration(labelText: 'Password'),
             obscureText: true,
             onChanged: (String value){
               setState(() {
                 value=_passwordValue;
                // _passwordValue=value;
               });
             }
             ),
             Switch(
               value: true,  onChanged: (bool value ){},),
            //   value: _acceptTerms,
              //onChanged: (bool value){},
              //title:Text('Accept Terms'),
              

             SizedBox(height:10.0,
             ),
             RaisedButton(
               color:Theme.of(context).primaryColor,
               textColor: Colors.white,
               child: Text('Login'),
               onPressed: (){

               },

             ),


        ],),
        
        
        )


    ) ;

  }
}




















/*import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return _AuthPageState();    
  }
}

class _AuthPageState extends State<AuthPage>{
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        ),
        body: Container(
          margin: EdgeInsets.,
        ),
    );
  }
  
}*/