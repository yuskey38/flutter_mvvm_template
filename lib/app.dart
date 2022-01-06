import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/views/article_list_view.dart';
import 'package:flutter_mvvm_template/gen/l10n/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ArticleListView(),
    );
  }
}
