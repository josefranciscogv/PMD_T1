import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Happy birthday Frank"),
            Expanded(
              child: Image.network(
                  "https://annaspasteleria.com/images/2019post/_videoCover/IMG_4255edit.jpg"),
            ),
            Text("From Mike"),
          ],
        ),
      ),
    );
  }
}