import 'package:flutter/material.dart';

class RatingsScreen extends StatefulWidget {
  const RatingsScreen({ Key? key }) : super(key: key);

  @override
  _RatingsScreenState createState() => _RatingsScreenState();
}

class _RatingsScreenState extends State<RatingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratings'),
      ),
    );
  }
}