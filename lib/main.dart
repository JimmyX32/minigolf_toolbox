import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:minigolf_toolbox/toolbox/scorecard/scorecard.dart';
import 'generated/l10n.dart';


void main() {
  runApp(const MinigolfToolboxApp());
}

class MinigolfToolboxApp extends StatelessWidget {
  const MinigolfToolboxApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => S.of(context).appName,
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  gotoScorecardActivity(BuildContext context){
    String laneNames = S.of(context).laneNames ;
    List<String> laneNamesList = laneNames.split(':');
    List<int> laneIndices = [1, 5, 2, 10, 15, 21, 6];
    List<String> playgroundLanesNames = [];
    for (var element in laneIndices) { playgroundLanesNames.add(laneNamesList[element]); }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ScorecardActivity( playerNames: const ['PEPPER', 'SALT'], laneNames: playgroundLanesNames, )),
    );
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(S.of(context).appName),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.lightGreenAccent,
                ),
                  child: Text(S.of(context).drawerHeaderName),
              ),
              ListTile(
                title: Text(S.of(context).drawerMenuItem1Name),
                onTap: () {
                  // add action

                  // Close drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(S.of(context).drawerMenuItem2Name),
                onTap: () {

                  // Close drawer
                  Navigator.pop(context);
                },
              ),
            ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          /*  Text(
              S.of(context).helloWorld,
            ),
            const Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ), */
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  gotoScorecardActivity(context);
                },
                child: Text(S.of(context).btnMainScreenScorecard,
                  style: const TextStyle(fontSize: 24),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black54,
                  backgroundColor: Colors.lightGreen,
                  minimumSize: const Size(300,150),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {},
                child: Text(S.of(context).btnMainScreenLanes,
                  style: const TextStyle(fontSize: 24),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black54,
                  backgroundColor: Colors.amber,
                  minimumSize: const Size(300,150),
                )),

          ],
          ),
        ),
      ),
    );
  }
}
