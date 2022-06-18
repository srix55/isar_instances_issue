import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:isar_instances_issue/src/schema/employee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setResult(String str) {
    setState(() {
      _result = str;
    });
  }

  void _openIsarInstance() {
    String isarInstanceName = 'myIsarInstance';
    Isar? isar = Isar.getInstance(isarInstanceName);
    String message = isar == null ? 'Couldnt find the instance' : 'Instance found 👍';
    isar ??= Isar.openSync(name: isarInstanceName, schemas: [EmployeeSchema], directory: '/home/rocky/isar_temp');
    _setResult(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Press + to get isar instance',
            ),
            Text(
              _result,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openIsarInstance,
        tooltip: 'Open Isar Instance',
        child: const Icon(Icons.add),
      ),
    );
  }
}
