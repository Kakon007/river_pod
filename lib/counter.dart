import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var incrementNumber = StateProvider<int>((ref) => 0);

class Counter extends ConsumerWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(incrementNumber);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text('$value'),
            ElevatedButton(
                onPressed: () {
                  ref.read(incrementNumber.notifier).state--;
                },
                child: const Text('Increment'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(incrementNumber.notifier).state++;
          },
        ),
      ),
    );
  }
}
