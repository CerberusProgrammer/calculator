import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  TextEditingController numbersInput = TextEditingController();

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
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  textAlign: TextAlign.end,
                  controller: numbersInput,
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                ),
              ),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }

  void generateNumericButtons() {
    for (int i = 1; i < 10; ++i) {
      numericButtons.add(
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            )),
            onPressed: () {
              setState(() {
                numbersInput.text += i.toString();
              });
            },
            child: Text(i.toString()),
          ),
        ),
      );
    }
  }

  Widget buttons() {
    ButtonStyle style = ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(children: [
          Expanded(
              child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                numbersInput.text += ' %\n';
              });
            },
            child: const Text('%'),
          )),
          Expanded(
              child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                numbersInput.text += '';
              });
            },
            child: const Text('CE'),
          )),
          Expanded(
              child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                numbersInput.text += '';
              });
            },
            child: const Text('C'),
          )),
          Expanded(
              child: ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                numbersInput.text = numbersInput.text
                    .substring(0, numbersInput.text.length - 1);
              });
            },
            onLongPress: () {
              setState(() {
                numbersInput.text = '';
              });
            },
            child: const Icon(Icons.drive_file_move_rtl_outlined),
          ))
        ]),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            numericButtons[6],
            numericButtons[7],
            numericButtons[8],
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('x'),
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            numericButtons[3],
            numericButtons[4],
            numericButtons[5],
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('-'),
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            numericButtons[0],
            numericButtons[1],
            numericButtons[2],
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('+'),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('+/-'),
            )),
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('0'),
            )),
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('.'),
            )),
            Expanded(
                child: ElevatedButton(
              style: style,
              onPressed: () {
                setState(() {
                  numbersInput.text += '';
                });
              },
              child: const Text('='),
            )),
          ],
        )
      ],
    );
  }
}
