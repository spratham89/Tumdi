import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/blogs/blogs_blocs.dart';
import 'package:tumdi_1/blocs/blogs/blogs_events.dart';
import 'package:tumdi_1/blocs/blogs/blogs_states.dart';
import 'package:tumdi_1/models/blogs/blogs_model.dart';
import 'package:tumdi_1/pages/mydrawer.dart';
import 'package:tumdi_1/repo/blogs/blogrepository.dart';

class Blogs extends StatelessWidget {
  Blogs({super.key});
  final BlogBloc blogsBloc = BlogBloc(BlogsRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Blogs'),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (_) => blogsBloc..add(FetchBlogs()),
          child: BlocBuilder<BlogBloc, BlogState>(
            builder: (context, state) {
              if (state is BlogsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is BlogsErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is BlogsLoadedState) {
                List<BlogsModel> blogsList = state.blogs;
                return SizedBox(
    //  height: 200.0,
                  child: ListView.builder(
                    //  shrinkWrap: true,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    itemCount: blogsList.length,
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 10,
                          child: ListTile(
                              leading: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.network(blogsList[index].url,
                                    // width: MediaQuery.of(context).size.width,
                                    height: 50.0,
                                    width: 50.0),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  blogsList[index].title,
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                ),
                              )));
                    },
                  ),
                );
              }

              return Container();
            },
          ),
        ));
  }
}
