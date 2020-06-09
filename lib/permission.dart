import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: permission(),
  ));
}
//TextEditingController nameController = TextEditingController();
//TextEditingController passwordController = TextEditingController();

class permission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Request Permission'),
         ),
      body:Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,

            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                     Flexible(
                        child: TextField(

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'From',
                          ),
                          keyboardType: TextInputType.datetime,
                        ),

                    ),
                    SizedBox(width: 30,),
                    Flexible(

                      child: TextField(

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Up to',
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(

                      child: TextField(

                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Location',
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35,),
                Row(
                  children: <Widget>[
                    Flexible(

                      child: TextField(

                        decoration:  InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Reason',
                        ),

                      ),
                    ),

                  ],
                ),
                Row(
                    children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                         child: Text("Send"),
                         onPressed: () => sendRequest(context),
                  ),
                    ),
                   ],
                )
              ],
            ))));
  }
}

void sendRequest(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Request send successfully!"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog
  );
}
