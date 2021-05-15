import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiura/home/widgets/carousel/carousel_home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/memories/memories_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselHome(),
        _RecommendedSection(),
        MemoriesSection(),
        _FooterSection(),
      ],
    );
  }
}

class _FooterSection extends StatelessWidget {
  const _FooterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      color: Colors.grey.shade200,
      child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: Text('Organiza:')),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Ra.png',
                        height: 80,
                        width: 80,
                      ),
                      Image.asset(
                        'assets/images/Univalle.jpg',
                        height: 80,
                        width: 80,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 64,
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: Text('Patrocina:')),
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 64,
              thickness: 1,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Text('Redes sociales:'),
                  ),
                  Material(
                    color: Colors.grey.shade200,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [Icon(Icons.face), Text('Unirock Fiura')],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.grey.shade200,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [Icon(Icons.face), Text('@Fiuracali')],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.grey.shade200,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [Icon(Icons.face), Text('@Fiuracali')],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.grey.shade200,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.face),
                          Text('Internacional Unirock Alternativo')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        desktop: (BuildContext layoutContext) => IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Text('Organiza:')),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Ra.png',
                          height: 80,
                          width: 80,
                        ),
                        Image.asset(
                          'assets/images/Univalle.jpg',
                          height: 80,
                          width: 80,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.grey.shade300,
                width: 64,
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Text('Patrocina:')),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.grey.shade300,
                width: 64,
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      child: Text('Redes sociales:'),
                    ),
                    Material(
                      color: Colors.grey.shade200,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [Icon(Icons.face), Text('Unirock Fiura')],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.grey.shade200,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [Icon(Icons.face), Text('@Fiuracali')],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.grey.shade200,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [Icon(Icons.face), Text('@Fiuracali')],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.grey.shade200,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Icon(Icons.face),
                            Text('Internacional Unirock Alternativo')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.grey.shade300,
                width: 64,
                thickness: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _RecommendedSection extends StatelessWidget {
  const _RecommendedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 64),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 32), child: Text('Recomendados')),
          ScreenTypeLayout.builder(
            mobile: (BuildContext context) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _RecomendedTile(),
                _RecomendedTile(),
                _RecomendedTile()
              ],
            ),
            desktop: (BuildContext layoutContext) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _RecomendedTile(),
                _RecomendedTile(),
                _RecomendedTile()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RecomendedTile extends StatelessWidget {
  const _RecomendedTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 250, maxHeight: 250, minWidth: 150, minHeight: 150),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                foregroundImage: CachedNetworkImageProvider(
                  'https://firebasestorage.googleapis.com/v0/b/farolitos.appspot.com/o/cover_test.jpg?alt=media&token=cdb583f2-60cd-4ed4-b58b-25978e7fc3e3',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Text('Título'),
          ),
          Text('Descripció corta del articulo recomendado')
        ],
      ),
    );
  }
}
