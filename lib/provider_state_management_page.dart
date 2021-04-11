import 'package:belajar/applicationcolor_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvideStateManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Consumer<ApplicationColor>(
          builder: (context, applicationColor, child) => Text(
            'Provider State Management',
            style: TextStyle(
              color: applicationColor.color,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ApplicationColor>(
                builder: (context, applicationColor, child) => AnimatedContainer(
                // margin: EdgeInsets.all(5),
                width: 100,
                height: 100,
                color: applicationColor.color,
                duration: Duration(milliseconds: 500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.all(5),
                  child: Text('AB'),
                ),
                Consumer(
                  builder: (context, applicationColor, child) => Switch(
                    value: applicationColor.isLightBlue,
                    onChanged: (newValue) {
                      applicationColor.isLightBlue = newValue;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text('LB'),
                ),
              ],
            )
          ],
        ),
      ),     
    );
  }
}