import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapScreen extends StatelessWidget {
  final WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://rsoe-edis.org/eventmap'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Map',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}