// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class SubscriptionForm extends StatefulWidget {
  SubscriptionForm();

  _SubscriptionFormState createState() => _SubscriptionFormState();
}

class _SubscriptionFormState extends State<SubscriptionForm>
    with AutomaticKeepAliveClientMixin {
  String createdViewId = 'map_element';

  @override
  void initState() {
    ui.platformViewRegistry.registerViewFactory(
        'hello-html1',
        (int viewId) => IFrameElement()
          ..width = '640'
          ..height = '360'
          ..src =
              'https://docs.google.com/forms/d/e/1FAIpQLSeolQWZoQvrHVTchDrCuQIHz5AR2M4njBn-VQCW9f1Ifot5nw/viewform'
          ..style.border = 'none');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      width: 200,
      height: 200,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: HtmlElementView(viewType: 'hello-html1'),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
