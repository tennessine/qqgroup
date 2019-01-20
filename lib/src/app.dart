import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AppState();
  }
}

class _AppState extends State<App> {
  int currentIndex = 0;
  String get title {
    switch (currentIndex) {
      case 0:
        return 'foo';
      case 1:
        return 'bar';
      default:
        return 'baz';
    }
  }

  @override
  Widget build(BuildContext context) {

    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 3'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 4'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Item 5'),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  scaffoldKey.currentState.openDrawer();
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("http://localhost/avatar.png"),
                    ),
                  ),
                ),
              ),
            ),
            title: Text('what ever'),
          ),
          body: Center(
            child: Text(title),
          ),
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
