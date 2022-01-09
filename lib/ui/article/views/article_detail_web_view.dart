// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:webview_flutter/webview_flutter.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';

class ArticleDetailWebView extends StatelessWidget {
  const ArticleDetailWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)?.settings.arguments as Article;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(article.title),
        ),
        body: Center(
          child: WebView(initialUrl: article.url),
        ),
      ),
    );
  }

  static Route<dynamic> route({
    required Article article,
  }) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const ArticleDetailWebView(),
      settings: RouteSettings(arguments: article),
    );
  }
}
