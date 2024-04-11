import 'package:flutter/material.dart';

void main(){
  runApp(icon());
}

class icon extends StatelessWidget {
  const icon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: iconsList(),
    );
  }
}
class iconsList extends StatefulWidget {
  const iconsList({super.key});

  @override
  State<iconsList> createState() => _iconsListState();
}

class _iconsListState extends State<iconsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dynamic List',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
        backgroundColor: Color(0xff234d61),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        height: 150,
        child: Center(child: Text('1',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)),
        width:double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        color: Colors.blue,

        )
      ),
    );
  }
}
