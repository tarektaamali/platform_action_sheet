import 'package:flutter/material.dart';
import 'package:platform_action_sheet/platform_action_sheet.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example App'),
      ),
      body: Center(
        child: FlatButton(
              color: Colors.blue,
              onPressed: () => PlatformActionSheet().displaySheet(
                  context: context,
                  actions: [
                    ActionSheetAction(
                      text: "Edit",
                      colortrailingIcon: Colors.green,
                      trailingIcon: Icons.edit,
                      onPressed: () => Navigator.pop(context),
                      //hasArrow: true,
                    ),
                    ActionSheetAction(
                        text: "delete",
                      trailingIcon: Icons.delete,
                      colortrailingIcon: Colors.red,
                      onPressed: () => Navigator.pop(context),
                    ),
                    ActionSheetAction(
                      text: "Cancel",
                      trailingIcon: Icons.close,
                       colortrailingIcon: Colors.red,
                      onPressed: () => Navigator.pop(context),
                    //  isCancel: true,
                      defaultAction: true,
                    )
                  ]),
              child: Text(
                'Display ActionSheet',
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
        ),
      ),
    );
  }
}