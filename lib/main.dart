import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
     home: new HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Offset> _points;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new GestureDetector(

          onPanUpdate:(DragUpdateDetails details){

            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _loclposition = object.globalToLocal(details.globalPosition);
              _points = new List.from(_points)..add(_loclposition);
            });
          } ,
        ),

      ),
    );
  }
}
class Signature extends CustomPainter{
  List<Offset> points;
  Signature({this.points});

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = new Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
    for(int i = 0; i<points.length-1;i++)
      {
        if(points[i] !=null && points[i+1] != null)
          {
            canvas.drawLine(points[i], points[i+1], paint);
          }
      }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;


  }

