import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/users/user_blocs.dart';
import 'package:tumdi_1/blocs/users/user_events.dart';
import 'package:tumdi_1/blocs/users/user_states.dart';
import 'package:tumdi_1/models/users/user_model.dart';
import 'package:tumdi_1/repo/users/userepository.dart';
import 'package:tumdi_1/widget/search_app_bar.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class Directory extends StatefulWidget {
  const Directory({super.key});

  @override
  State<Directory> createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  final UserBloc itemBloc = UserBloc(UserRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              onChanged: (value) {
                itemBloc.add(SearchItems(value));
              },
              decoration: InputDecoration(
                hintText: 'Search...',
              ),
            ),
           
          ],
        ),
      ),
      body: BlocProvider(
        create: (_) => itemBloc..add(FetchItems()),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UserErrorState) {
              return const Center(child: Text("Error"));
            }
            if (state is UserLoadedState) {
              List<UserModel> userList = state.users;
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userList.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Card(
                          color: Theme.of(context).primaryColor,
                          child: ListTile(
                              title: Text(
                                '${userList[index].name}  ${userList[index].brand}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                '${userList[index].price}',
                                style: const TextStyle(color: Colors.white),
                              ),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    userList[index].imageLink.toString()),
                              ))),
                    );
                  });
            }

            return Container();
          },
        ),
      ),
    );
  }
}
