import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main.dart';

class MyApp extends ConsumerWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watchProvider = ref.watch(helloWorld);
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(watchProvider),
          // ElevatedButton(onPressed: (){
          //   helloWorld.
          // }, child: Text('Click me'))
        ],
      )),
    );
  }
}
