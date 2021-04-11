import 'package:belajar/provider_state_management_page.dart';
import 'package:belajar/shared_preference_page.dart';
import 'package:belajar/switch_animated_switch_page.dart';
import 'package:belajar/animated_padding.dart';
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
            ),
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AnimatedPaddingPage();
                  }));
                },
              child: Text('GO TO ANIMATED PADDING PAGE'), 
            ),
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SharedPreferencePage();
                  }));
                },
              child: Text('GO TO SHARED PREFERENCE PAGE'), 
            ),
            ElevatedButton(
              onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ProvideStateManagementPage();
                  }));
                },
              child: Text('GO TO PROVIDER STATE MANAGEMENT PAGE'), 
            ),
          ],
        ),
      ),
    );
  }
}