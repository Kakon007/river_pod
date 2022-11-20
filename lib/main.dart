import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/simple_hello_world.dart';

var helloWorld=StateProvider<String>(((ref) => 'Hello World'));
void main() {
  runApp( ProviderScope(child: MyApp()));
}
