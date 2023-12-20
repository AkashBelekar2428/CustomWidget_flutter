import 'package:custom_widget_flutter/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(customWidget());
}
class customWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "Flutter",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.grey,
  ),
  home: customWidgetScreen(),
);
  }
}

class customWidgetScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              child: RoundedButton(btnName: 'Login',
                      icon: Icon(Icons.lock),
                      callback: () {
                        print("Log IN !!!!");
                      }
                  ),
            ),
            Container(
              width: 100,
              child: RoundedButton(btnName: 'Sign In',
                  callback: () {
                    print("Sign IN !!!!");
                  },
                bgColor: Colors.red,
                ),
              ),
          ],
        ),
      )
    );
  }
  }
