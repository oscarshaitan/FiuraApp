import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiura',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              child: TabButton(
                label: 'Nosotros',
                onPressed: () {},
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            TabButton(
              label: 'Nosotros',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            TabButton(
              label: 'Convocatoria',
              onPressed: () {},
            ),
            TabButton(
              label: 'Programación',
              onPressed: () {},
            ),
            TabButton(
              label: 'Aprende',
              onPressed: () {},
            ),
            TabButton(
              label: 'Blog',
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _NavTabBar(scaffoldKey: _scaffoldKey),
              _CarrouselHome(),
              _RecommendedSection(),
              _RememberSection(),
              _FooterSection()
            ],
          ),
        ),
      ),
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
      child:
      ScreenTypeLayout.builder(
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
                        children: [
                          Icon(Icons.face),
                          Text('Unirock Fiura')
                        ],
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
                          Text('@Fiuracali')
                        ],
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
                          Text('@Fiuracali')
                        ],
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
                          children: [
                            Icon(Icons.face),
                            Text('Unirock Fiura')
                          ],
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
                            Text('@Fiuracali')
                          ],
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
                            Text('@Fiuracali')
                          ],
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
      )
      ,
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

class _NavTabBar extends StatelessWidget {
  const _NavTabBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })   : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            Expanded(child: Center(child: _LogoTabIcon())),
          ],
        ),
        desktop: (BuildContext layoutContext) => Row(
          children: [
            _LogoTabIcon(),
            Row(
              children: [
                TabButton(
                  label: 'Nosotros',
                  onPressed: () {},
                ),
                TabButton(
                  label: 'Convocatoria',
                  onPressed: () {},
                ),
                TabButton(
                  label: 'Programación',
                  onPressed: () {},
                ),
                TabButton(
                  label: 'Aprende',
                  onPressed: () {},
                ),
                TabButton(
                  label: 'Blog',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LogoTabIcon extends StatelessWidget {
  const _LogoTabIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      child: Image.asset(
        'assets/icons/logo150.png',
        fit: BoxFit.cover,
        height: 50,
        width: 100,
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const TabButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(16),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
