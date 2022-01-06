import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/models/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetailWebView extends StatelessWidget {
  const ArticleDetailWebView({Key? key, required this.article})
      : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
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
}
