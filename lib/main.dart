import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/counter.dart';
import 'package:river_pod/simple_hello_world.dart';
import 'package:river_pod/user_data_view_page.dart';

var helloWorld=StateProvider<String>(((ref) => 'Hello World'));
void main() {
  runApp( const ProviderScope(child: MaterialApp(home: UserContent())));
}
