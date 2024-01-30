import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('Kalkulator Kuh'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: angka1,
                decoration: InputDecoration(label: Text('Angka Pertama')),
              ),
              TextFormField(
                controller: angka2,
                decoration: InputDecoration(label: Text('Kedua')),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
