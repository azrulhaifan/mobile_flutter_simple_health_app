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
      var time24 = DateTime(time.year, time.month, time.day, 23, 59, 59, 0, 0);

      // get the number of steps for today
      var midnight = DateTime(now.year, now.month, now.day);
      int? steps = await health.getTotalStepsInInterval(midnight, now);

      int the_step = 181297;
      if (steps == null) {
        the_step = 0;
      } else {
        the_step = steps;
      }

      setState(() {
        _counter = the_step;
      });

      // CARA LAIN PAKAI HEALTH POIN
      List<HealthDataPoint> healthData = await health.getHealthDataFromTypes(midnight, now, types);

      // CONVERT TIME TO EPOCH
      var time0_epoch = midnight.millisecondsSinceEpoch;
      var time1_epoch = time1.millisecondsSinceEpoch;
      var time2_epoch = time2.millisecondsSinceEpoch;
      var time3_epoch = time3.millisecondsSinceEpoch;
      var time4_epoch = time4.millisecondsSinceEpoch;
      var time5_epoch = time5.millisecondsSinceEpoch;
      var time6_epoch = time6.millisecondsSinceEpoch;
      var time7_epoch = time7.millisecondsSinceEpoch;
      var time8_epoch = time8.millisecondsSinceEpoch;
      var time9_epoch = time9.millisecondsSinceEpoch;
      var time10_epoch = time10.millisecondsSinceEpoch;
      var time11_epoch = time11.millisecondsSinceEpoch;
      var time12_epoch = time12.millisecondsSinceEpoch;
      var time13_epoch = time13.millisecondsSinceEpoch;
      var time14_epoch = time14.millisecondsSinceEpoch;
      var time15_epoch = time15.millisecondsSinceEpoch;
      var time16_epoch = time16.millisecondsSinceEpoch;
      var time17_epoch = time17.millisecondsSinceEpoch;
      var time18_epoch = time18.millisecondsSinceEpoch;
      var time19_epoch = time19.millisecondsSinceEpoch;
      var time20_epoch = time20.millisecondsSinceEpoch;
      var time21_epoch = time21.millisecondsSinceEpoch;
      var time22_epoch = time22.millisecondsSinceEpoch;
      var time23_epoch = time23.millisecondsSinceEpoch;
      var time24_epoch = time24.millisecondsSinceEpoch;

      double data_step1 = 0;
      double data_cal1 = 0;
      double data_step2 = 0;
      double data_cal2 = 0;
      double data_step3 = 0;
      double data_cal3 = 0;
      double data_step4 = 0;
      double data_cal4 = 0;
      double data_step5 = 0;
      double data_cal5 = 0;
      double data_step6 = 0;
      double data_cal6 = 0;
      double data_step7 = 0;
      double data_cal7 = 0;
      double data_step8 = 0;
      double data_cal8 = 0;
      double data_step9 = 0;
      double data_cal9 = 0;
      double data_step10 = 0;
      double data_cal10 = 0;
      double data_step11 = 0;
      double data_cal11 = 0;
      double data_step12 = 0;
      double data_cal12 = 0;
      double data_step13 = 0;
      double data_cal13 = 0;
      double data_step14 = 0;
      double data_cal14 = 0;
      double data_step15 = 0;
      double data_cal15 = 0;
      double data_step16 = 0;
      double data_cal16 = 0;
      double data_step17 = 0;
      double data_cal17 = 0;
      double data_step18 = 0;
      double data_cal18 = 0;
      double data_step19 = 0;
      double data_cal19 = 0;
      double data_step20 = 0;
      double data_cal20 = 0;
      double data_step21 = 0;
      double data_cal21 = 0;
      double data_step22 = 0;
      double data_cal22 = 0;
      double data_step23 = 0;
      double data_cal23 = 0;
      double data_step24 = 0;
      double data_cal24 = 0;

      // MULAI PERULANGAN
      for (int i = 0; i < healthData.length; i++) {
        log("DATAKUU " + json.encode(healthData[i]));

        var data_type = healthData[i].typeString;
        dynamic data_val = healthData[i].value;
        var date_from_epoch = healthData[i].dateFrom.millisecondsSinceEpoch;
        var date_to_epoch = healthData[i].dateTo.millisecondsSinceEpoch;


        // s/d jam 1
        if ((date_from_epoch >= time0_epoch && date_from_epoch <= time1_epoch) && (date_to_epoch >= time0_epoch && date_to_epoch <= time1_epoch)) {
          if (data_type == "STEPS") data_step1 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal1 += double.parse(data_val.toString());
        }
        // s/d jam 2
        if ((date_from_epoch >= time1_epoch && date_from_epoch <= time2_epoch) && (date_to_epoch >= time1_epoch && date_to_epoch <= time2_epoch)) {
          if (data_type == "STEPS") data_step2 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal2 += double.parse(data_val.toString());
        }
        // s/d jam 3
        if ((date_from_epoch >= time2_epoch && date_from_epoch <= time3_epoch) && (date_to_epoch >= time2_epoch && date_to_epoch <= time3_epoch)) {
          if (data_type == "STEPS") data_step3 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal3 += double.parse(data_val.toString());
        }
        // s/d jam 4
        if ((date_from_epoch >= time3_epoch && date_from_epoch <= time4_epoch) && (date_to_epoch >= time3_epoch && date_to_epoch <= time4_epoch)) {
          if (data_type == "STEPS") data_step4 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal4 += double.parse(data_val.toString());
        }
        // s/d jam 5
        if ((date_from_epoch >= time4_epoch && date_from_epoch <= time5_epoch) && (date_to_epoch >= time4_epoch && date_to_epoch <= time5_epoch)) {
          if (data_type == "STEPS") data_step5 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal5 += double.parse(data_val.toString());
        }
        // s/d jam 6
        if ((date_from_epoch >= time5_epoch && date_from_epoch <= time6_epoch) && (date_to_epoch >= time5_epoch && date_to_epoch <= time6_epoch)) {
          if (data_type == "STEPS") data_step6 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal6 += double.parse(data_val.toString());
        }
        // s/d jam 7
        if ((date_from_epoch >= time6_epoch && date_from_epoch <= time7_epoch) && (date_to_epoch >= time6_epoch && date_to_epoch <= time7_epoch)) {
          if (data_type == "STEPS") data_step7 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal7 += double.parse(data_val.toString());
        }
        // s/d jam 8
        if ((date_from_epoch >= time7_epoch && date_from_epoch <= time8_epoch) && (date_to_epoch >= time7_epoch && date_to_epoch <= time8_epoch)) {
          if (data_type == "STEPS") data_step8 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal8 += double.parse(data_val.toString());
        }
        // s/d jam 9
        if ((date_from_epoch >= time8_epoch && date_from_epoch <= time9_epoch) && (date_to_epoch >= time8_epoch && date_to_epoch <= time9_epoch)) {
          if (data_type == "STEPS") data_step9 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal9 += double.parse(data_val.toString());
        }
        // s/d jam 10
        if ((date_from_epoch >= time9_epoch && date_from_epoch <= time10_epoch) && (date_to_epoch >= time9_epoch && date_to_epoch <= time10_epoch)) {
          if (data_type == "STEPS") data_step10 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal10 += double.parse(data_val.toString());
        }
        // s/d jam 11
        if ((date_from_epoch >= time10_epoch && date_from_epoch <= time11_epoch) && (date_to_epoch >= time10_epoch && date_to_epoch <= time11_epoch)) {
          if (data_type == "STEPS") data_step11 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal11 += double.parse(data_val.toString());
        }
        // s/d jam 12
        if ((date_from_epoch >= time11_epoch && date_from_epoch <= time12_epoch) && (date_to_epoch >= time11_epoch && date_to_epoch <= time12_epoch)) {
          if (data_type == "STEPS") data_step12 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal12 += double.parse(data_val.toString());
        }
        // s/d jam 13
        if ((date_from_epoch >= time12_epoch && date_from_epoch <= time13_epoch) && (date_to_epoch >= time12_epoch && date_to_epoch <= time13_epoch)) {
          if (data_type == "STEPS") data_step13 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal13 += double.parse(data_val.toString());
        }
        // s/d jam 14
        if ((date_from_epoch >= time13_epoch && date_from_epoch <= time14_epoch) && (date_to_epoch >= time13_epoch && date_to_epoch <= time14_epoch)) {
          if (data_type == "STEPS") data_step14 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal14 += double.parse(data_val.toString());
        }
        // s/d jam 15
        if ((date_from_epoch >= time14_epoch && date_from_epoch <= time15_epoch) && (date_to_epoch >= time14_epoch && date_to_epoch <= time15_epoch)) {
          if (data_type == "STEPS") data_step15 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal15 += double.parse(data_val.toString());
        }
        // s/d jam 16
        if ((date_from_epoch >= time15_epoch && date_from_epoch <= time16_epoch) && (date_to_epoch >= time15_epoch && date_to_epoch <= time16_epoch)) {
          if (data_type == "STEPS") data_step16 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal16 += double.parse(data_val.toString());
        }
        // s/d jam 17
        if ((date_from_epoch >= time16_epoch && date_from_epoch <= time17_epoch) && (date_to_epoch >= time16_epoch && date_to_epoch <= time17_epoch)) {
          if (data_type == "STEPS") data_step17 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal17 += double.parse(data_val.toString());
        }
        // s/d jam 18
        if ((date_from_epoch >= time17_epoch && date_from_epoch <= time18_epoch) && (date_to_epoch >= time17_epoch && date_to_epoch <= time18_epoch)) {
          if (data_type == "STEPS") data_step18 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal18 += double.parse(data_val.toString());
        }
        // s/d jam 19
        if ((date_from_epoch >= time18_epoch && date_from_epoch <= time19_epoch) && (date_to_epoch >= time18_epoch && date_to_epoch <= time19_epoch)) {
          if (data_type == "STEPS") data_step19 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal19 += double.parse(data_val.toString());
        }
        // s/d jam 20
        if ((date_from_epoch >= time19_epoch && date_from_epoch <= time20_epoch) && (date_to_epoch >= time19_epoch && date_to_epoch <= time20_epoch)) {
          if (data_type == "STEPS") data_step20 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal20 += double.parse(data_val.toString());
        }
        // s/d jam 21
        if ((date_from_epoch >= time20_epoch && date_from_epoch <= time21_epoch) && (date_to_epoch >= time20_epoch && date_to_epoch <= time21_epoch)) {
          if (data_type == "STEPS") data_step21 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal21 += double.parse(data_val.toString());
        }
        // s/d jam 22
        if ((date_from_epoch >= time21_epoch && date_from_epoch <= time22_epoch) && (date_to_epoch >= time21_epoch && date_to_epoch <= time22_epoch)) {
          if (data_type == "STEPS") data_step22 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal22 += double.parse(data_val.toString());
        }
        // s/d jam 23
        if ((date_from_epoch >= time22_epoch && date_from_epoch <= time23_epoch) && (date_to_epoch >= time22_epoch && date_to_epoch <= time23_epoch)) {
          if (data_type == "STEPS") data_step23 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal23 += double.parse(data_val.toString());
        }
        // s/d jam 24
        if ((date_from_epoch >= time23_epoch && date_from_epoch <= time24_epoch) && (date_to_epoch >= time23_epoch && date_to_epoch <= time24_epoch)) {
          if (data_type == "STEPS") data_step24 += double.parse(data_val.toString());
          if (data_type == "ACTIVE_ENERGY_BURNED") data_cal24 += double.parse(data_val.toString());
        }
      }

      // OUTPUT
      log("DATA STEP JAM 1 : " + data_step1.toString());
      log("DATA CAL JAM 1 : " + data_cal1.toString());
      
      log("DATA STEP JAM 2 : " + data_step2.toString());
      log("DATA CAL JAM 2 : " + data_cal2.toString());
      
      log("DATA STEP JAM 3 : " + data_step3.toString());
      log("DATA CAL JAM 3 : " + data_cal3.toString());
      
      log("DATA STEP JAM 4 : " + data_step4.toString());
      log("DATA CAL JAM 4 : " + data_cal4.toString());
      
      log("DATA STEP JAM 5 : " + data_step5.toString());
      log("DATA CAL JAM 5 : " + data_cal5.toString());
      
      log("DATA STEP JAM 6 : " + data_step6.toString());
      log("DATA CAL JAM 6 : " + data_cal6.toString());
      
      log("DATA STEP JAM 7 : " + data_step7.toString());
      log("DATA CAL JAM 7 : " + data_cal7.toString());
      
      log("DATA STEP JAM 8 : " + data_step8.toString());
      log("DATA CAL JAM 8 : " + data_cal8.toString());
      
      log("DATA STEP JAM 9 : " + data_step9.toString());
      log("DATA CAL JAM 9 : " + data_cal9.toString());
      
      log("DATA STEP JAM 10 : " + data_step10.toString());
      log("DATA CAL JAM 10 : " + data_cal10.toString());
      
      log("DATA STEP JAM 11 : " + data_step11.toString());
      log("DATA CAL JAM 11 : " + data_cal11.toString());
      
      log("DATA STEP JAM 12 : " + data_step12.toString());
      log("DATA CAL JAM 12 : " + data_cal12.toString());
      
      log("DATA STEP JAM 13 : " + data_step13.toString());
      log("DATA CAL JAM 13 : " + data_cal13.toString());
      
      log("DATA STEP JAM 14 : " + data_step14.toString());
      log("DATA CAL JAM 14 : " + data_cal14.toString());
      
      log("DATA STEP JAM 15 : " + data_step15.toString());
      log("DATA CAL JAM 15 : " + data_cal15.toString());
      
      log("DATA STEP JAM 16 : " + data_step16.toString());
      log("DATA CAL JAM 16 : " + data_cal16.toString());
      
      log("DATA STEP JAM 17 : " + data_step17.toString());
      log("DATA CAL JAM 17 : " + data_cal17.toString());
      
      log("DATA STEP JAM 18 : " + data_step18.toString());
      log("DATA CAL JAM 18 : " + data_cal18.toString());
      
      log("DATA STEP JAM 19 : " + data_step19.toString());
      log("DATA CAL JAM 19 : " + data_cal19.toString());
      
      log("DATA STEP JAM 20 : " + data_step20.toString());
      log("DATA CAL JAM 20 : " + data_cal20.toString());
      
      log("DATA STEP JAM 21 : " + data_step21.toString());
      log("DATA CAL JAM 21 : " + data_cal21.toString());
      
      log("DATA STEP JAM 22 : " + data_step22.toString());
      log("DATA CAL JAM 22 : " + data_cal22.toString());
      
      log("DATA STEP JAM 23 : " + data_step23.toString());
      log("DATA CAL JAM 23 : " + data_cal23.toString());
      
      log("DATA STEP JAM 24 : " + data_step24.toString());
      log("DATA CAL JAM 24 : " + data_cal24.toString());
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
