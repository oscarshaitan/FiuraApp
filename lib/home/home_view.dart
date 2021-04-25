import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _CarrouselHome(),
        _RecommendedSection(),
        _RememberSection(),
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

class _RememberSection extends StatelessWidget {
  const _RememberSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              children: [_RememberRile(), _RememberRile(), _RememberRile()],
            ),
            desktop: (BuildContext layoutContext) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: _RememberRile()),
                Expanded(child: _RememberRile()),
                Expanded(child: _RememberRile()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RememberRile extends StatelessWidget {
  const _RememberRile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/farolitos.appspot.com/o/cover_test.jpg?alt=media&token=cdb583f2-60cd-4ed4-b58b-25978e7fc3e3',
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
            child: Text('Recuerdo titulo '),
          )
        ],
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

class _CarrouselHome extends StatefulWidget {
  const _CarrouselHome({
    Key? key,
  }) : super(key: key);

  @override
  __CarrouselHomeState createState() => __CarrouselHomeState();
}

class __CarrouselHomeState extends State<_CarrouselHome> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: CarouselSlider(
            items: [
              Image.network(
                'https://firebasestorage.googleapis.com/v0/b/farolitos.appspot.com/o/cover_test.jpg?alt=media&token=cdb583f2-60cd-4ed4-b58b-25978e7fc3e3',
                fit: BoxFit.cover,
              ),
              Text(
                'OTRA IMAGEN',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'OTRA IMAGEN 2',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'OTRA IMAGEN 3',
                style: TextStyle(color: Colors.white),
              )
            ],
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * .35,
                aspectRatio: 32 / 9,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
                (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.grey[500] : Colors.grey[300],
              ),
            ),
          ),
        ),
      ],
    );
  }
}