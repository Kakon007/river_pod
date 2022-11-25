import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/http_get_request.dart';
import 'package:river_pod/user_model.dart';

class UserContent extends ConsumerWidget {
  const UserContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    var watch = ref.watch(provider);
    return Scaffold(
      body: Center(
        child: watch.when(
          loading: () => const CircularProgressIndicator(),
          error: (error, stackTrace) => Text(error.toString()),
          data: (dataRe) {
            List<UserModel> _users=dataRe.map((e) => e).toList();
            print('dataRe: ${_users}');
            return ListView.builder(
              shrinkWrap: true,
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_users[index].firstname),
                    subtitle: Text(_users[index].email),
                  );
                });
          },
        ),
      ),
    );
  }
}
