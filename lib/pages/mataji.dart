import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/mataji/mataji_blocs.dart';
import 'package:tumdi_1/blocs/mataji/mataji_events.dart';
import 'package:tumdi_1/blocs/mataji/mataji_states.dart';
import 'package:tumdi_1/models/mataji/mataji_model.dart';
import 'package:tumdi_1/repo/mataji/matajirepository.dart';

class Mataji extends StatefulWidget {
  const Mataji({super.key});

  @override
  State<Mataji> createState() => _MatajiState();
}

class _MatajiState extends State<Mataji> {
  final MatajiBloc matajiBloc = MatajiBloc(MatajiRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 231, 234, 1),
        title: const Text(
          'Mataji',
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
          child: BlocProvider(
            create: (_) => matajiBloc..add(FetchMataji()),
            child: BlocBuilder<MatajiBloc, MatajiState>(
              builder: (context, state) {
                if (state is MatajiLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is MatajiErrorState) {
                  return const Center(child: Text("Error"));
                }
                if (state is MatajiLoadedState) {
                  List<MatajiModel> matajiList = state.Mataji;
                  return SizedBox(
                      //  height: 200.0,
                      child: GridView.count(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Spacing between columns
                    mainAxisSpacing: 10, // Spacing between rows
                    padding: EdgeInsets.all(10),
                    children: matajiList.map((item) {
                      return Container(
                        height: 100,
                        width: 200,
                        color: Colors.grey.shade200,
                        child: Stack(
                          //   alignment: Alignment.topRight,
                          children: [
                            Image.network(
                              item.url,
                              width: 300,
                              height: 180.0,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 30.0,
                                //   width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(241, 99, 118, 1)),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      item.title,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ));
                }

                return Container();
              },
            ),
          )),
    );
  }
}
