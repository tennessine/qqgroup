import 'package:flutter/material.dart';

import '../src/screens/foo_screen.dart';
import '../src/screens/bar_screen.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AppState();
  }
}

class _AppState extends State<App> {
  int currentIndex = 0;
  Widget get component {
    if (currentIndex == 0) {
      return FooScreen();
    } else {
      return BarScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('What ever'),
          ),
          body: component,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.green,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.red,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.yellow))),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: [
                new BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('hey'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('hey'),
                ),
                new BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('hey'),
                ),
              ],
            ),
          )),
    );
  }
}
