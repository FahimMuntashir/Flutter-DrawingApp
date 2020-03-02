import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      new HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(

      ),
    );
  }
}
class Signature extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    return null;
  }

  @override
  bool shouldReclip(Signature oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }

}