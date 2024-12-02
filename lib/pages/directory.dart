import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Directory extends StatefulWidget {
  const Directory({super.key});

  @override
  State<Directory> createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Users"),
      ),
      body: /* BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
         //UI is built per the state
        },
      ) */
          Container(),
    );
  }
}
