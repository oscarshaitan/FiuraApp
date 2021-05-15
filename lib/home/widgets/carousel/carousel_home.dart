import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiura/_core/widgets/loading_widged.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../injection_container.dart';
import 'cubit/carousel_home_cubit.dart';
import 'cubit/carousel_home_state.dart';

class CarouselHome extends StatefulWidget {
  const CarouselHome({
    Key? key,
  }) : super(key: key);

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselHomeCubit(sl()),
      child: BlocConsumer<CarouselHomeCubit, CarouselHomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
            init: () => LoadingWidget(),
            loaded: (items) => Column(
              children: [
                Container(
                  color: Colors.black,
                  child: CarouselSlider.builder(
                    itemCount: items.length,
                    itemBuilder: (_, index, __) {
                      return CachedNetworkImage(
                        imageUrl: items[index].imageUrl,
                        fit: getValueForScreenType<BoxFit>(
                          context: context,
                          mobile: BoxFit.fitWidth,
                          desktop: BoxFit.fill,
                        ),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: 250,
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * .35,
                      aspectRatio: 32 / 9,
                      viewportFraction: 1,
                      autoPlay: items.length > 1,
                      enableInfiniteScroll: items.length > 1,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            _current = index;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    items.length,
                    (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Colors.grey[500]
                            : Colors.grey[300],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
