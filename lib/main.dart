import 'package:flutter/material.dart';
import 'package:portfolio_website/Header/HeaderView.dart';
import 'package:portfolio_website/Project/ProjectView.dart';
import 'package:portfolio_website/Project/ProjectView2.dart';
import 'package:portfolio_website/Skills/Skills_View.dart';
import 'package:portfolio_website/navbar/NavigationBar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo', // changes the tab browser name
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PortfolioView());
  }
} //(in this  // case the title) provided by the parent (in this case the App widget) and  // used by the build method of the State. Fields in a Widget subclass are  // always marked "final".  final String title;  @override  State<MyHomePage> createState() => _MyHomePageState();}class _MyHomePageState extends State<MyHomePage> {  int _counter = 0;  void _incrementCounter() {    setState(() {      // This call to setState tells the Flutter framework that something has      // changed in this State, which causes it to rerun the build method below      // so that the display can reflect the updated values. If we changed      // _counter without calling setState(), then the build method would not be      // called again, and so nothing would appear to happen.      _counter++;    });  }  @override  Widget build(BuildContext context) {    // This method is rerun every time setState is called, for instance as done    // by the _incrementCounter method above.    //    // The Flutter framework has been optimized to make rerunning build methods    // fast, so that you can just rebuild anything that needs updating rather    // than having to individually change instances of widgets.    return Scaffold(      appBar: AppBar(        // Here we take the value from the MyHomePage object that was created by        // the App.build method, and use it to set our appbar title.        title: Text(widget.title),      ),      body: Center(        // Center is a layout widget. It takes a single child and positions it        // in the middle of the parent.        child: Column(          // Column is also a layout widget. It takes a list of children and          // arranges them vertically. By default, it sizes itself to fit its          // children horizontally, and tries to be as tall as its parent.          //          // Invoke "debug painting" (press "p" in the console, choose the          // "Toggle Debug Paint" action from the Flutter Inspector in Android          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)          // to see the wireframe for each widget.          //          // Column has various properties to control how it sizes itself and          // how it positions its children. Here we use mainAxisAlignment to          // center the children vertically; the main axis here is the vertical          // axis because Columns are vertical (the cross axis would be          // horizontal).          mainAxisAlignment: MainAxisAlignment.center,          children: <Widget>[            const Text(              'You have pushed the button this many times:',            ),            Text(              '$_counter',              style: Theme.of(context).textTheme.headlineMedium,            ),          ],        ),      ),      floatingActionButton: FloatingActionButton(        onPressed: _incrementCounter,        tooltip: 'Increment',        child: const Icon(Icons.add),      ), // This trailing comma makes auto-formatting nicer for build methods.    );  }}//

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerView(),
      body: SingleChildScrollView(
        child: Column(children: [
          const NavigationBarView(),
          HeaderView(height: height, width: width),
          const ProjectView1(),
          const ProjectView2(),
          const SkillsView(),
        ]),
      ),
    );
  }
}

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return const SizedBox();
        return Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.deepOrange, Colors.black],
                          tileMode: TileMode.repeated)),
                  child: Text(
                    "Akhil's Website",
                    style: TextStyle(color: Colors.white),
                  )),
              for (var item in kNavigationItems)
                ListTile(
                  title: Text(item.text),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
