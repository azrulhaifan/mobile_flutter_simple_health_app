import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:health/health.dart';

// create a HealthFactory for use in the app
HealthFactory health = HealthFactory();

// define the types to get
var types = [
  HealthDataType.STEPS,
  HealthDataType.ACTIVE_ENERGY_BURNED
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: const MyHomePage(title: 'Flutter Demo Health !'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      log('data: $_counter');
    });
  }

  Future<void> _getStep() async {
      // requesting access to the data types before reading them
      bool requested = await health.requestAuthorization(types);
      var now = DateTime.now();

      var time = DateTime.now();
      var time1 = DateTime(time.year, time.month, time.day, 1, 0, 0, 0, 0);
      var time2 = DateTime(time.year, time.month, time.day, 2, 0, 0, 0, 0);
      var time3 = DateTime(time.year, time.month, time.day, 3, 0, 0, 0, 0);
      var time4 = DateTime(time.year, time.month, time.day, 4, 0, 0, 0, 0);
      var time5 = DateTime(time.year, time.month, time.day, 5, 0, 0, 0, 0);
      var time6 = DateTime(time.year, time.month, time.day, 6, 0, 0, 0, 0);
      var time7 = DateTime(time.year, time.month, time.day, 7, 0, 0, 0, 0);
      var time8 = DateTime(time.year, time.month, time.day, 8, 0, 0, 0, 0);
      var time9 = DateTime(time.year, time.month, time.day, 9, 0, 0, 0, 0);
      var time10 = DateTime(time.year, time.month, time.day, 10, 0, 0, 0, 0);
      var time11 = DateTime(time.year, time.month, time.day, 11, 0, 0, 0, 0);
      var time12 = DateTime(time.year, time.month, time.day, 12, 0, 0, 0, 0);
      var time13 = DateTime(time.year, time.month, time.day, 13, 0, 0, 0, 0);
      var time14 = DateTime(time.year, time.month, time.day, 14, 0, 0, 0, 0);
      var time15 = DateTime(time.year, time.month, time.day, 15, 0, 0, 0, 0);
      var time16 = DateTime(time.year, time.month, time.day, 16, 0, 0, 0, 0);
      var time17 = DateTime(time.year, time.month, time.day, 17, 0, 0, 0, 0);
      var time18 = DateTime(time.year, time.month, time.day, 18, 0, 0, 0, 0);
      var time19 = DateTime(time.year, time.month, time.day, 19, 0, 0, 0, 0);
      var time20 = DateTime(time.year, time.month, time.day, 20, 0, 0, 0, 0);
      var time21 = DateTime(time.year, time.month, time.day, 21, 0, 0, 0, 0);
      var time22 = DateTime(time.year, time.month, time.day, 22, 0, 0, 0, 0);
      var time23 = DateTime(time.year, time.month, time.day, 23, 0, 0, 0, 0);

      // get the number of steps for today
      var midnight = DateTime(now.year, now.month, now.day);
      int? steps = await health.getTotalStepsInInterval(midnight, now);

      int? step1 = await health.getTotalStepsInInterval(midnight, time1);
      int? step2 = await health.getTotalStepsInInterval(time1, time2);
      int? step3 = await health.getTotalStepsInInterval(time2, time3);
      int? step4 = await health.getTotalStepsInInterval(time3, time4);
      int? step5 = await health.getTotalStepsInInterval(time4, time5);
      int? step6 = await health.getTotalStepsInInterval(time5, time6);
      int? step7 = await health.getTotalStepsInInterval(time6, time7);
      int? step8 = await health.getTotalStepsInInterval(time7, time8);
      int? step9 = await health.getTotalStepsInInterval(time8, time9);
      int? step10 = await health.getTotalStepsInInterval(time9, time10);
      int? step11 = await health.getTotalStepsInInterval(time10, time11);
      int? step12 = await health.getTotalStepsInInterval(time11, time12);
      int? step13 = await health.getTotalStepsInInterval(time12, time13);
      int? step14 = await health.getTotalStepsInInterval(time13, time14);
      int? step15 = await health.getTotalStepsInInterval(time14, time15);
      int? step16 = await health.getTotalStepsInInterval(time15, time16);
      int? step17 = await health.getTotalStepsInInterval(time16, time17);
      int? step18 = await health.getTotalStepsInInterval(time17, time18);
      int? step19 = await health.getTotalStepsInInterval(time18, time19);
      int? step20 = await health.getTotalStepsInInterval(time19, time20);
      int? step21 = await health.getTotalStepsInInterval(time20, time21);
      int? step22 = await health.getTotalStepsInInterval(time21, time22);
      int? step23 = await health.getTotalStepsInInterval(time23, time23);
      int? step24 = await health.getTotalStepsInInterval(time23, now);

      int the_step = 181297;
      if (steps == null) {
        the_step = 0;
      } else {
        the_step = steps;
      }

      log('my total step is: $steps');
      // log('my total step is: $healtData');

      log('my step 1 is : $step1');
      log('my step 2 is : $step2');
      log('my step 3 is : $step3');
      log('my step 4 is : $step4');
      log('my step 5 is : $step5');
      log('my step 6 is : $step6');
      log('my step 7 is : $step7');
      log('my step 8 is : $step8');
      log('my step 9 is : $step9');
      log('my step 10 is : $step10');
      log('my step 11 is : $step11');
      log('my step 12 is : $step12');
      log('my step 13 is : $step13');
      log('my step 14 is : $step14');
      log('my step 15 is : $step15');
      log('my step 16 is : $step16');
      log('my step 17 is : $step17');
      log('my step 18 is : $step18');
      log('my step 19 is : $step19');
      log('my step 20 is : $step20');
      log('my step 21 is : $step21');
      log('my step 22 is : $step22');
      log('my step 23 is : $step23');
      log('my step 24 is : $step24');

      setState(() {
        _counter = the_step;
      });

      // CARA LAIN PAKAI HEALTH POIN
      List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(midnight, now, types);
      for (int i = 0; i < healthData.length; i++) {
        log("DATAKUU " + json.encode(healthData[i]));
      }
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
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your today step based on "Apple Health" is:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getStep,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
