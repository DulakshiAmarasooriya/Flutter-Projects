import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the Brightness'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Change Image'),
              subtitle: Text('Change the Image'),
              trailing: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Keyboard Layout'),
              subtitle: Text('Change the Keyboard Layout'),
              trailing: Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}
