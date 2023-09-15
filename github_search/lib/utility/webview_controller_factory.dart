import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewController webviewControllerFactory(String urlString) {
  return WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {

        },
        onPageStarted: (String url) => {},
        onPageFinished: (String url) => {},
        onWebResourceError: (WebResourceError error) => {},
        //onNavigationRequest: (NavigationRequest request) => {},
      )
    )
    ..loadRequest(Uri.parse(urlString));
}