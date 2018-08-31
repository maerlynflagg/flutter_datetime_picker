import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datetime Picker'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              DatePicker.showDatePicker(context, showTitleActions: true, locale: 'zh',
                  onChanged: (date) {
                print('change $date');
              }, onConfirm: (date) {
                print('confirm $date');
              },
                  pickerModel: DatePickerModel(
                      minYear: 2000, maxYear: 2019, currentTime: DateTime(2017, 93)));
            },
            child: Text(
              'show date time picker',
              style: TextStyle(color: Colors.blue),
            )),
      ),
    );
  }
}
