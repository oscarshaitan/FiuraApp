// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
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
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        createdViewId,
        (int viewId) => html.IFrameElement()
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
        child: HtmlElementView(
          viewType: createdViewId,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
