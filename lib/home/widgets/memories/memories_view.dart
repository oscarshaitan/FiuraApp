import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fiura/_core/widgets/loading_widged.dart';
import 'package:fiura/home/widgets/memories/model/remember_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../injection_container.dart';
import 'cubit/memories_cubit.dart';
import 'cubit/memories_state.dart';

class MemoriesSection extends StatelessWidget {
  const MemoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemoriesCubit(sl()),
      child: BlocBuilder<MemoriesCubit, MemoriesState>(
        builder: (context, state) {
          return state.when(
              init: () => LoadingWidget(),
              loaded: (items) => Container(
                    margin: EdgeInsets.only(top: 64),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 32),
                          child: Text('Recuerdos'),
                        ),
                        ScreenTypeLayout.builder(
                          mobile: (BuildContext context) => Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:
                                _memoriesListGenerator(items, context, false),
                          ),
                          desktop: (BuildContext layoutContext) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:
                                _memoriesListGenerator(items, context, true),
                          ),
                        ),
                      ],
                    ),
                  ));
        },
      ),
    );
  }

  List<Widget> _memoriesListGenerator(
      List<RememberItem> items, BuildContext context, bool expanded) {
    return List.generate(
      items.length,
      (index) => expanded
          ? Expanded(
              child: _MemoriesRile(
                memory: items[index],
                showRememberDialog: () {
                  showMemoriesDialog(context, items[index]);
                },
              ),
            )
          : _MemoriesRile(
              memory: items[index],
              showRememberDialog: () {
                showMemoriesDialog(context, items[index]);
              },
            ),
    );
  }

  showMemoriesDialog(BuildContext context, RememberItem item) {
    showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            backgroundColor: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CarouselSlider.builder(
                    itemCount: item.imagesUrls.length,
                    itemBuilder: (_, index, __) {
                      return CachedNetworkImage(
                        imageUrl: item.imagesUrls[index],
                        fit: getValueForScreenType<BoxFit>(
                          context: dialogContext,
                          mobile: BoxFit.fitWidth,
                          desktop: BoxFit.fill,
                        ),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      autoPlay: true,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        /*setState(
                              () {
                                _current = index;
                              },
                            );*/
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}

class _MemoriesRile extends StatelessWidget {
  final Function() showRememberDialog;
  final RememberItem memory;

  const _MemoriesRile({
    Key? key,
    required this.showRememberDialog,
    required this.memory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: showRememberDialog,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: memory.imagesUrls.first,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                  ),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
                height: 250,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Text(memory.title),
              )
            ],
          ),
        ),
      ),
    );
  }
}
