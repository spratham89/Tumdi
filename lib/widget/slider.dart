import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tumdi_1/blocs/banner/banner_blocs.dart';
import 'package:tumdi_1/blocs/banner/banner_events.dart';
import 'package:tumdi_1/blocs/banner/banner_states.dart';
import 'package:tumdi_1/models/banner/banner_model.dart';

import 'package:tumdi_1/repo/banner/bannerespository.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                  ),
                ],
              )),
        ))
    .toList();

class Sliderwheel extends StatelessWidget {
  Sliderwheel({super.key});
  final BannerBloc bannerBloc = BannerBloc(BannerRepository());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (_) => bannerBloc..add(FetchBanners()),
          child: BlocBuilder<BannerBloc, BannerState>(
            builder: (context, state) {
              if (state is BannersLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is BannersErrorState) {
                return const Center(child: Text("Error"));
              }
              if (state is BannersLoadedState) {
             
             return   CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: false,
        ),
        //  items: imageSliders,
        items: state.banners.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(image.url, fit: BoxFit.cover),
                      );
                    },
                  );
                }).toList(),
       // items:imageSliders,
                );
              }

              return Container();
            },
          ),
        ); 

           
              }
}
