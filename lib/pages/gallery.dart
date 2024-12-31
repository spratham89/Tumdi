import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/gallery/gallery_blocs.dart';
import 'package:tumdi_1/blocs/gallery/gallery_events.dart';
import 'package:tumdi_1/blocs/gallery/gallery_states.dart';
import 'package:tumdi_1/models/gallery/gallery_model.dart';
import 'package:tumdi_1/pages/mydrawer.dart';
import 'package:tumdi_1/repo/gallery/galleryrepository.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});
  final GalleryBloc galleryBloc = GalleryBloc(GalleryRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 231, 234, 1),
        title: const Text('Gallery'),
        centerTitle: true,
      ),
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(253, 231, 234, 1)),
        child: BlocProvider(
          create: (_) => galleryBloc..add(FetchGallery()),
          child: BlocBuilder<GalleryBloc, GalleryState>(
            builder: (context, state) {
              if (state is GalleryLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GalleryErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is GalleryLoadedState) {
                List<GalleryModel> galleryList = state.gallery;
                return SizedBox(
                  // height: 200.0,
                  child: ListView.builder(
                    //  shrinkWrap: true,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    itemCount: galleryList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 10,
                              child: Column(
                                children: [
                                  FittedBox(
                                    fit: BoxFit.fill,
                                    child: Image.network(
                                      galleryList[index].url,
                                      width: 300,
                                      height: 180.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      galleryList[index].title,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ) /* Image.network(galleryList[index].url) */,
                        ),
                      );
                    },
                  ),
                );
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }
}
