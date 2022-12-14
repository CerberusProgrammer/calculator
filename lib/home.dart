import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text('1'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('1'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('1'),
          ),
        ],
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
}
