import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class GithubWebView extends StatefulWidget {
  const GithubWebView({super.key});

  @override
  State<GithubWebView> createState() => _GithubWebViewState();
}

class _GithubWebViewState extends State<GithubWebView> {
  String githubProfileLink = 'https://github.com/o-beckley/';
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    WebViewPlatform.instance = AndroidWebViewPlatform();
    controller = WebViewController()..loadRequest(Uri.parse(githubProfileLink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Github Profile'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
