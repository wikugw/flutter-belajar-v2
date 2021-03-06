import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {

  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Padding'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        myPadding = 20;
                      });
                    },
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}