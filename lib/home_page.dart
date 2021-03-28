import 'package:belajar/switch_animated_switch_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page')
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AnimatedSwitch();
                  }));
                },
                child: Text('GO TO SWITCH AND ANIMATED SWITCH PAGE'), 
            )
          ],
        ),
      ),
    );
  }
}