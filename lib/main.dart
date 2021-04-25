import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'announcement/announcement_view.dart';
import 'home/home_view.dart';

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
  final PageController _pageController = PageController(initialPage: 0);

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
              child: _TabButton(
                label: 'Nosotros',
                onPressed: () {},
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            _TabButton(
              label: 'Nosotros',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            _TabButton(
              label: 'Convocatoria',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnnouncementView()));
              },
            ),
            _TabButton(
              label: 'Programación',
              onPressed: () {},
            ),
            _TabButton(
              label: 'Aprende',
              onPressed: () {},
            ),
            _TabButton(
              label: 'Blog',
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          _NavTabBar(
            scaffoldKey: _scaffoldKey,
            pageController: _pageController,
          ),
          Flexible(
            child: PageView(
              controller: _pageController,
              children: [
                _ScrollPageWidget(child: HomePage()),
                _ScrollPageWidget(child: Text('Nosotros')),
                AnnouncementView(),
                _ScrollPageWidget(child: Text('Programación')),
                _ScrollPageWidget(child: Text('Aprende')),
                _ScrollPageWidget(child: Text('Blog')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ScrollPageWidget extends StatelessWidget {
  final Widget child;

  const _ScrollPageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}

class _NavTabBar extends StatelessWidget {
  final PageController pageController;

  const _NavTabBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.pageController,
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
                _TabButton(
                  label: 'Inicio',
                  onPressed: () {
                    animatePage(page: 0);
                  },
                ),
                _TabButton(
                  label: 'Nosotros',
                  onPressed: () {
                    animatePage(page: 1);
                  },
                ),
                _TabButton(
                  label: 'Convocatoria',
                  onPressed: () {
                    animatePage(page: 2);
                  },
                ),
                _TabButton(
                  label: 'Programación',
                  onPressed: () {
                    animatePage(page: 3);
                  },
                ),
                _TabButton(
                  label: 'Aprende',
                  onPressed: () {
                    animatePage(page: 4);
                  },
                ),
                _TabButton(
                  label: 'Blog',
                  onPressed: () {
                    animatePage(page: 5);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> animatePage({required int page}) =>
      pageController.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
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

class _TabButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const _TabButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
