import 'package:flutter/widgets.dart';
import 'package:frame/app.dart';
import 'package:frame/pages/and/andPage.dart';
import 'package:frame/pages/ios/iosPage.dart';
import 'package:frame/pages/web/webPage.dart';
import 'package:frame/providers/defaultProvider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider<DefaultProvider>(create: (BuildContext context) => DefaultProvider())
    ],
    child: App(
      web: (BuildContext context) => WebPage(),
      and: (BuildContext context) => AndPage(),
      ios: (BuildContext context) => IOSPage(),
    ),
  )
);