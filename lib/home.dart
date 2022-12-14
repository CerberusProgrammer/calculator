import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  List<Widget> numericButtons = [];

  @override
  Widget build(BuildContext context) {
    generateNumericButtons();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                ),
              ),
              buttons()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Center(
            child: Text(
          '=',
          style: TextStyle(
            fontSize: 20,
            height: 1,
          ),
        )),
        onPressed: () {},
      ),
    );
  }

  void generateNumericButtons() {
    for (int i = 1; i < 10; ++i) {
      numericButtons.add(
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(i.toString()),
          ),
        ),
      );
    }
  }

  Widget buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: numericButtons.sublist(0, 3),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: numericButtons.sublist(3, 6),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: numericButtons.sublist(6, 9),
        ),
      ],
    );
  }
}
