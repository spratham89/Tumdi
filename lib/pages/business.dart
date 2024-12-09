import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/business/business_blocs.dart';
import 'package:tumdi_1/blocs/business/business_events.dart';
import 'package:tumdi_1/blocs/business/business_states.dart';
import 'package:tumdi_1/models/business/business_model.dart';
import 'package:tumdi_1/repo/business/businessrepository.dart';

class Business extends StatelessWidget {
  Business({super.key});
  final BusinessBloc businessBloc = BusinessBloc(BusinessRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Business'),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (_) => businessBloc..add(FetchBusiness()),
          child: BlocBuilder<BusinessBloc, Businesstate>(
            builder: (context, state) {
              if (state is BusinessLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is BusinessErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is BusinessLoadedState) {
                List<BusinessModel> BusinessList = state.Business;
                return Expanded(
                  child: ListView.builder(
                    //  shrinkWrap: true,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    itemCount: BusinessList.length,
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 10,
                          child: ListTile(
                              leading: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.network(BusinessList[index].url,
                                    // width: MediaQuery.of(context).size.width,
                                    height: 50.0,
                                    width: 50.0),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  BusinessList[index].title,
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
