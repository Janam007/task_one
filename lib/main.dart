import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskone/userModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<UserModel>userData = [];
  List<UserModel>users = [];
  final userJson = [
    {
      "title": "",
      "fields": [
        {
          "name": "_lahvoycu0",
          "span": 8,
          "text": "Text",
          "group": "form",
          "label": "Text",
          "value": "",
          "append": "",
          "events": {
            "values": [],
            "listens": "",
            "triggers": ""
          },
          "prepend": "",
          "disabled": false,
          "isUnique": false,
          "clearable": false,
          "fieldType": "TextInput",
          "maxlength": 100,
          "isRequired": true,
          "labelWidth": 100,
          "defaultValue": "",
          "showPassword": false,
          "showWordLimit": false,
          "addMoreFeature": false,
          "advancedOptions": true,
          "isHelpBlockVisible": false,
          "isPlaceholderVisible": true
        },
        {
          "name": "_lahvpm7c0",
          "span": 12,
          "text": "Signature",
          "group": "form",
          "label": "Signature",
          "value": {},
          "events": {
            "listens": "",
            "triggers": ""
          },
          "disabled": false,
          "isUnique": false,
          "fieldType": "FormElementSignature",
          "isRequired": true,
          "labelWidth": 100,
          "isSignature": true,
          "defaultValue": {},
          "addMoreFeature": false,
          "isHelpBlockVisible": false,
          "isPlaceholderVisible": false
        }
      ],
      "canDelete": false
    },
    {
      "title": "",
      "fields": [
        {
          "name": "_lahvpyt60",
          "span": 12,
          "text": "Date-Time",
          "group": "form",
          "label": "Date time",
          "events": {
            "values": [],
            "listens": "",
            "triggers": ""
          },
          "disabled": false,
          "isUnique": false,
          "fieldType": "DatetimePicker",
          "isRequired": false,
          "labelWidth": 100,
          "defaultValue": "NOW",
          "addMoreFeature": false,
          "isHelpBlockVisible": false,
          "isPlaceholderVisible": false
        },
        {
          "name": "_lahvq4292",
          "span": 8,
          "text": "Switch",
          "group": "form",
          "label": "T&C",
          "value": false,
          "events": {
            "values": [],
            "listens": "",
            "triggers": ""
          },
          "disabled": false,
          "isUnique": false,
          "fieldType": "SwitchInput",
          "activeText": "Accept",
          "labelWidth": 100,
          "defaultValue": false,
          "inActiveText": "Decline",
          "addMoreFeature": false
        },
        {
          "name": "_lahvqyzw3",
          "span": 8,
          "text": "Select",
          "group": "form",
          "label": "Select",
          "events": {
            "listens": "",
            "triggers": ""
          },
          "remote": false,
          "dataUrl": "",
          "options": [
            {
              "color": "#FFFFFF",
              "is_faulty": false,
              "optionLabel": "Option Label 1",
              "optionValue": "Option 1"
            },
            {
              "color": "#FFFFFF",
              "is_faulty": false,
              "optionLabel": "Option Label 2",
              "optionValue": "Option 2"
            },
            {
              "color": "#FFFFFF",
              "is_faulty": false,
              "optionLabel": "Option Label 3",
              "optionValue": "Option 3"
            }
          ],
          "disabled": false,
          "isUnique": false,
          "multiple": false,
          "clearable": false,
          "fieldType": "SelectList",
          "isFromUrl": false,
          "filterable": false,
          "isRequired": true,
          "labelField": "label",
          "labelWidth": 100,
          "valueField": "value",
          "isHazardous": false,
          "defaultValue": {},
          "addMoreFeature": false,
          "advancedOptions": true,
          "isHelpBlockVisible": false,
          "isPlaceholderVisible": false
        }
      ],
      "canDelete": false
    }
  ];
  Future<List<UserModel>>?futureFile ;
  @override void initState() {
    super.initState();
    futureFile = getUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<List<UserModel>>(
                future: futureFile,
                builder: (context,snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const Center(
                          child: CircularProgressIndicator());
                    default:
                      if (snapshot.hasError) {
                        return const Center(
                            child: Text("Some Error Occurred!"));
                      }
                      else {
                        return Flexible(
                            child: ListView.builder(
                                controller: ScrollController(),
                                itemCount: userData.length,
                                itemBuilder:(BuildContext context, index) {
                                  final name = userData[index].fields!.first.name;
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text('Name: '),
                                        Text(name!),
                                      ],
                                    ),
                                  );
                                }
                            ));

                      }
                  }
                }
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<List<UserModel>>getUsers()async{
    userData =[];
    try {
      List<UserModel>loadedUsers=[];
      loadedUsers = userJson.map((doc) => UserModel.fromJson(doc)).toList();
      userData.addAll(loadedUsers);
      print(userData.length);


    }catch(e){
      print(e);
      //print("Error in fetching data");

    }
    return userData;

  }
}
