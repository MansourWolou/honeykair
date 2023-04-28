import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ServiceAdvice extends StatefulWidget {
  const ServiceAdvice({super.key});

  @override
  State<ServiceAdvice> createState() => _ServiceAdviceState();
}

class _ServiceAdviceState extends State<ServiceAdvice> {
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
    return WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl("https://mediafiles.botpress.cloud/1b03554c-7f97-4220-8dbe-8fcc4632ded9/webchat/bot.html");
        },
      );
  }
}