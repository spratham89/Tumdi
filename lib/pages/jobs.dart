import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/jobs/job_blocs.dart';
import 'package:tumdi_1/blocs/jobs/job_events.dart';
import 'package:tumdi_1/blocs/jobs/job_states.dart';
import 'package:tumdi_1/models/jobs/job_model.dart';

import 'package:tumdi_1/repo/jobs/jobrepository.dart';

class Jobs extends StatelessWidget {
  Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    final JobsBloc jobsBloc = JobsBloc(JobRepository());

    return Scaffold(
        appBar: AppBar(
          title: const Text('Jobs'),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (_) => jobsBloc..add(FetchJobs()),
          child: BlocBuilder<JobsBloc, JobsState>(
            builder: (context, state) {
              if (state is JobsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is JobsErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is JobsLoadedState) {
                List<JobModel> blogsList = state.jobs;
                return SizedBox(
   
                  child: ListView.builder(
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
