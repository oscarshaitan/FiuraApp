import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'announcement/announcement_view.dart';
import 'home/home_view.dart';
import 'injection_container.dart' as injection;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await injection.init();
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
  final PageController _pageController = PageController(initialPage: 2);

  void animatePage(
      {required int page, bool fromDrawer = false, BuildContext? context}) {
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    if (fromDrawer) {
      Navigator.pop(context!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _TabButton(
                  label: 'Inicio',
                  onPressed: () {
                    animatePage(page: 0, fromDrawer: true, context: context);
                  },
                ),
                _TabButton(
                  label: 'Nosotros',
                  onPressed: () {},
                ),
                _TabDropButton(
                  animateToPage: ({required int page}) {
                    animatePage(page: page, fromDrawer: true, context: context);
                  },
                ),
                /*_TabButton(
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
                ),*/
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            _NavTabBar(
              scaffoldKey: _scaffoldKey,
              animatePage: animatePage,
            ),
            Flexible(
              child: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _ScrollPageWidget(child: HomePage()),
                  _ScrollPageWidget(child: Text('Nosotros')),
                  AnnouncementView(),
                  AnnouncementView(),
                  _ScrollPageWidget(child: Text('Programación')),
                  _ScrollPageWidget(child: Text('Aprende')),
                  _ScrollPageWidget(child: Text('Blog')),
                ],
              ),
            ),
          ],
        ),
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
  final Function({BuildContext? context, bool fromDrawer, required int page})
      animatePage;

  const _NavTabBar({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.animatePage,
  })   : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
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
            ),
            Center(child: _LogoTabIcon()),
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
                /* _TabButton(
                  label: 'Nosotros',
                  onPressed: () {
                    animatePage(page: 1);
                  },
                ),*/
                _TabDropButton(
                  animateToPage: animatePage,
                ),

                /* _TabButton(
                  label: 'Programación',
                  onPressed: () {
                    animatePage(page: 4);
                  },
                ),
                _TabButton(
                  label: 'Aprende',
                  onPressed: () {
                    animatePage(page: 5);
                  },
                ),
                _TabButton(
                  label: 'Blog',
                  onPressed: () {
                    animatePage(page: 6);
                  },
                ),*/
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

class _TabDropButton extends StatelessWidget {
  final void Function({required int page}) animateToPage;

  const _TabDropButton({Key? key, required this.animateToPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: PopupMenuButton(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              'Convocatoria',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: 0,
              child: Text('Bandas'),
            ),
            /* PopupMenuItem(
              value: 1,
              child: Text('Prensa'),
            ),*/
          ];
        },
        onSelected: (int option) async {
          if (option == 0) {
            animateToPage(page: 2);
          } else {
            animateToPage(page: 3);
          }
        },
      ),
    );
  }
}
