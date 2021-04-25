import 'package:flutter/material.dart';

import 'mobile.dart' if (dart.library.html) 'webui.dart' as multiPlatform;

class AnnouncementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: multiPlatform.SubscriptionForm(),
    );
  }
}
