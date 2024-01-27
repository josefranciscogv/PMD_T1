import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Mc Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 370),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 58,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Flutter McFlutter",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Experienced App Developer")],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("123 Main Street")],
                  ),
                  Column(
                    children: [Text("(415) 555-0198")],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClickableIcon(icon: Icons.accessibility_rounded),
                  ClickableIcon(icon: Icons.timer),
                  ClickableIcon(icon: Icons.phone_android_outlined),
                  ClickableIcon(icon: Icons.phone_iphone_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickableIcon extends StatefulWidget {
  final IconData icon;

  const ClickableIcon({required this.icon, Key? key}) : super(key: key);

  @override
  _ClickableIconState createState() => _ClickableIconState();
}

class _ClickableIconState extends State<ClickableIcon> {
  bool _isClicked = false;

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Icon clicked: ${widget.icon}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
        _showSnackbar(context); // Show Snackbar when clicked
      },
      child: Icon(
        widget.icon,
        color: _isClicked ? Colors.indigo : null,
      ),
    );
  }
}
