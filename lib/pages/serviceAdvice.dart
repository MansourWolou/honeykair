import 'package:flutter/material.dart';
import './../botpress.dart';

class ServiceAdvice extends StatefulWidget {
  const ServiceAdvice({super.key});

  @override
  State<ServiceAdvice> createState() => _ServiceAdviceState();
}

class _ServiceAdviceState extends State<ServiceAdvice> {
  @override
  Widget build(BuildContext context) {
    return const Chatbot(title: "chatBot");
  }
}