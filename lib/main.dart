import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Login Screen'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               FlutterLogo(
                 size: 50,
               ),
            SizedBox(
              height: 50,
            ),
               Container(
                 width: 300,
                 height: 40,
                 child: TextFormField(decoration: InputDecoration(hintText: 'Username',
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(35))),
                 ),
               ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 40,
                child: TextFormField(obscureText: true, decoration: InputDecoration(hintText: 'Password',
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
                ),
              ),
               SizedBox(
                 height: 10,
               ),
               Container(
                 width: 300,
                 height: 40,
                 child: ElevatedButton(style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(35)),
                   onPressed: (){}, child: Text('Login bang'),
                ),
              ),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: (){},
                child: const Text('Forgot Password?',
                    style: TextStyle(color : Colors.grey))
            ),
          ],
        ),
      ),
    );
  }
}
