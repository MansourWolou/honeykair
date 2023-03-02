import 'package:flutter/material.dart';

Widget formStep() {
  return Container(
    child: Column(
      children: [
        Text("question"),
        TextButton(onPressed: () => {}, child: Text("answer"))
      ],
    ),
  );
}

class ServiceAdvice extends StatefulWidget {
  const ServiceAdvice({super.key});

  @override
  State<ServiceAdvice> createState() => _ServiceAdviceState();
}

class _ServiceAdviceState extends State<ServiceAdvice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 152, 151, 191),
      child: Center(
          child: Column(
        children: [
          Text(
            "As tu une routine capilaire?",
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              TextButton(onPressed: () => {}, child: Text("oui")),
              TextButton(onPressed: () => {}, child: Text("Non")),
            ],
          ),
          Text(
            "TU aimes tes cheveux",
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: () => {}, child: Text("oui"))
        ],
      )),
      height: 500,
      width: 300,
    );
  }
}
