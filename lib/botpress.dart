import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key, required this.title});
  final String title;

  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  bool _scriptLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadScript();
  }

  void _loadScript() async {
    if (!_scriptLoaded) {
      setState(() {
        _scriptLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl("https://mediafiles.botpress.cloud/1b03554c-7f97-4220-8dbe-8fcc4632ded9/webchat/bot.html");
        },
      ),
    );
  }
}
