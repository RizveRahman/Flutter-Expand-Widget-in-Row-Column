import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Row(
                children: [
                  Expanded(child: Container(height: 100, width: 50, color: Colors.orange,)),
                  Expanded(child: Container(height: 100, width: 50, color: Colors.green,)),
                  Expanded(child: Container(height: 100, width: 50, color: Colors.blueGrey,)),
                  Container(height: 100, width: 50, color: Colors.blue,),
                ],
              ),
              Column(
                children:[
                  Container(
                    height: 100,
                    color: Colors.deepPurple,
                  ),
                  Container(height: 100, color: Colors.blueGrey,),
                ]
              ),
              // Column(child: Text('A', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),)),
              // Text('B', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),),
              // Text('C', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
              // Text('D', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),),
              // ElevatedButton(onPressed: (){}, child: Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}
