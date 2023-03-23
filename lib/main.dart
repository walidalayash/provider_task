import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/counter_new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterNew()),
        ChangeNotifierProvider(create: (context) => CounterNew()),
        ChangeNotifierProvider(create: (context) => CounterNew()),
        ChangeNotifierProvider(create: (context) => CounterNew()),
 
      ],
      child:
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    int counter=Provider.of<CounterNew>(context, listen: true)
                                .counter;
    return Scaffold(
      appBar: AppBar(
        

        title: Text(widget.title),
      ),
      body:
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Consumer<CounterNew>(
            //   builder:(context,walid,child){
            // return
             Text(counter.toString()),
             // walid.counter.toString(),
         //   );
             // }
          //  ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),

            TextButton (child:Text("click me"),onPressed: () {
      Provider.of<CounterNew>(context, listen: false)
                                .inc();
    },)
          ],
        ),
    
      ),
     
     
       // })// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
