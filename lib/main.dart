import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GenerateQRPage(),
    );
  }
}

class GenerateQRPage extends StatefulWidget{

  @override
  _GenerateQRPageState createState() =>_GenerateQRPageState();
}

class _GenerateQRPageState extends State<GenerateQRPage>{
  TextEditingController controller =TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('QR GENERATOR'),
      ),
      body:SingleChildScrollView(
        child:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
                QrImage(
                  data:controller.text,
                  size:300,
                ),
                Container(
                   margin:EdgeInsets.all(20),
                   child:TextField(
                     controller: controller,
                     decoration:InputDecoration(
                       border:OutlineInputBorder(),labelText: 'Enter URL'
                     ),
                   ),
          ),
                ElevatedButton(onPressed: () {
                  setState(() {});
                },
                child:Text('Generate QR')),
              ],

          ),
        ),
      ),
    );
  }
}