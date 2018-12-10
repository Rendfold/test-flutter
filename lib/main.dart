import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Vabaco Test Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container (
        padding: const EdgeInsets.all(32.0),
        child: Center (
          child: Column (
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField (
                decoration: InputDecoration(
                  hasFloatingPlaceholder: true,
                  labelText: 'Username',
                  contentPadding: EdgeInsets.all(0)
                ),
                autofocus: false,
              ),
              TextField (
                decoration: InputDecoration(
                  hasFloatingPlaceholder: true,
                  labelText: 'Password',
                  contentPadding: EdgeInsets.all(0)
                ),
                autofocus: false,
              ),
              MaterialButton (
                onPressed: () {

                },
                textColor: Colors.white,
                color: Colors.orange,
                child: Text ("Submit")
              )
            ]
          )
        )
      )
    );
  }
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Vabaco Test Header'),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: new BorderRadius.only(
                  bottomLeft:  const Radius.elliptical(200.0, 70.0),
                  bottomRight: const Radius.elliptical(200.0, 70.0)
                )
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
