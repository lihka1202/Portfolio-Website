// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_website/Experience/ExperienceView.dart';
import 'package:portfolio_website/Header/HeaderView.dart';
import 'package:portfolio_website/Project/ProjectView.dart';
import 'package:portfolio_website/Project/ProjectView2.dart';
import 'package:portfolio_website/Skills/Skills_View.dart';
import 'package:portfolio_website/navbar/NavigationBar.dart';
import 'package:provider/provider.dart';

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
  const PortfolioView({
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  final projectKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experienceKey = GlobalKey();
  List<NavigationItem> navigationItems = [];

  FutureOr<void> afterFirstLayout(BuildContext context) {
    setState(() {
      navigationItems = [
        NavigationItem("Projects", projectKey),
        NavigationItem("Skills", skillsKey),
        NavigationItem("Experience", experienceKey),
      ];
    });

    // final projectPosition = _getPositions(projectKey);
    // final skillsPosition = _getPositions(skillsKey);
    // final experiencePosition = _getPositions(experienceKey);
  }

  final ScrollController scrollController =
      ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        ProxyProvider0<List<NavigationItem>>(
            update: (_, __) => navigationItems),
        ChangeNotifierProvider<ScrollController>(
            create: (_) => scrollController),
      ],
      child: Scaffold(
        drawer: const DrawerView(),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(children: [
            const NavigationBarView(),
            HeaderView(height: height, width: width),
            ProjectView1(
              key: projectKey,
            ), // !add key here
            const ProjectView2(), // !add key here
            SkillsView(key: skillsKey), // ! add key here
            ExperienceView(key: experienceKey), // ! add key here
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_upward),
            onPressed: () {
              if (scrollController.hasClients)
                scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
            }),
      ),
    );
  }
}

class NavigationItem {
  final String text;
  final GlobalKey key;

  NavigationItem(
    this.text,
    this.key,
  );

  double? get position => _getPositions(key);
}

double? _getPositions(GlobalKey key) {
  final renderObject = key.currentContext?.findRenderObject();
  final RenderBox? renderBoxRed = renderObject as RenderBox?;
  final positionRed = renderBoxRed?.localToGlobal(Offset.zero);
  print("POSITION of Red: $positionRed ");
  final scrollOffset = positionRed?.dy;
  return scrollOffset;
}

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
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
              for (var item in navigationItems)
                ListTile(
                  title: Text(item.text),
                  onTap: () {
                    scrollController.animateTo(item.position?.toDouble() ?? 0.0,
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.easeInOut);
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
