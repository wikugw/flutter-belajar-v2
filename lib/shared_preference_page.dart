import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencePage extends StatefulWidget {
  @override
  _SharedPreferencePageState createState() => _SharedPreferencePageState();
}

class _SharedPreferencePageState extends State<SharedPreferencePage> {
  
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('name', controller.text);
    pref.setBool('ison', isON);
  }

  Future<String> getName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('name') ?? 'No Name';
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('ison') ?? false;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
              value: isON,
              onChanged: (newValue){
                isON = newValue;
                setState(() {});
              },
            ),
            ElevatedButton(
              onPressed: (){
                saveData();
              }, 
              child: Text('save')
            ),
            ElevatedButton(
              onPressed: (){
                getName().then((string) {
                  controller.text = string;
                  setState(() {});
                });
                getON().then((boolean) {
                  isON = boolean;
                  setState(() {});
                });
              }, 
              child: Text('load')
            ),
          ],
        )
      ),
    );
  }
}