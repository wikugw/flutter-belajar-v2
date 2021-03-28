import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {
  @override
  _AnimatedSwitchState createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {

  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(
        color: Colors.amber,
        width: 3
      )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
              activeColor: Colors.amber,
              inactiveTrackColor: Colors.black,
              inactiveThumbColor: Colors.green,
              value: isON,
              onChanged: (newValue){
                isON = newValue;
                setState(() {
                  if(isON){
                    myWidget = Container(
                      key: ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.amber,
                          width: 3
                        )
                      ),
                    );
                  }
                  else{
                    myWidget = Container(
                      key: ValueKey(2),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.amber,
                          width: 3
                        )
                      ),
                    );
                  }
                });
              }
            )
          ],
        ),
      ),
    );
  }
}