import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './/generated/l10n.dart';
import '../utils/numpad7.dart';

class ScorecardActivity extends StatefulWidget {
  final List<String> playerNames;
  final List<String> laneNames;

  const ScorecardActivity({Key? key,
    required this.playerNames,
    required this.laneNames})
      : super(key: key);

  @override
  State<ScorecardActivity> createState() => _ScorecardActivityState();

}

class _ScorecardActivityState extends State<ScorecardActivity> {
  int? _strokesCount = 0;
  int _strokesSum = 0;


  Future _getStrokesCount(String initialValue) async {
    numpad.setValue(initialValue);
    var strokes = await NumPadCaller.getNumber(
        context: context, numpad: numpad);
    setState(() {
      _strokesCount = int.tryParse(strokes);
    });
  }

  void sumStrokes(int columnNumber) {
    _strokesSum = 0;
    for (var i = 0; i< widget.laneNames.length; i++) {
      _textControllerLaneList[i][columnNumber].text.isNotEmpty ? _strokesSum += int.tryParse(_textControllerLaneList[i][columnNumber].text)! : {};
    }
  }

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  late final List _textControllerLaneList =
    List.generate(widget.laneNames.length, (i) => List.generate(widget.playerNames.length, (j) => TextEditingController()));
  final TextEditingController _textControllerNumpad = TextEditingController();

  final TextEditingController _myController1 = TextEditingController();
  final TextEditingController _myController2 = TextEditingController();

  late final List<TextEditingController> _myControllerTotalList = List.generate(widget.playerNames.length, (index) => TextEditingController());

  // *********************************
  // Create NUMPAD
  // *********************************

  late var numpad = NumPad7(
    buttonSize: 75,
    buttonColor: Colors.purple,
    iconColor: Colors.deepOrange,
    controller: _textControllerNumpad,
    maxNumLength: 1,
    incrementValue: () {
      int value = int.parse(_textControllerNumpad.text);
      (value < 7) ? _textControllerNumpad.text = (value + 1).toString() : {};
    },
    decrementValue: () {
      int value = int.parse(_textControllerNumpad.text);
      (value > 0) ? _textControllerNumpad.text =
          (int.parse(_textControllerNumpad.text) - 1).toString() : {};
    },
    delete: () {
      _textControllerNumpad.text = "0";
    },
    // do something with the input numbers
    onSubmit: () {
      debugPrint('Your code: ${_textControllerNumpad.text}');
      Navigator.pop(context, _textControllerNumpad.text);
    },
  );

  // *********************************
  // // Generate first column
  // *********************************
  SizedBox _generateFirstColumn(List<String> columnNames) {
    return
      SizedBox(
          width: 100,
          height: double.infinity,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  enabled: false,
                ),
                // Let's generate column of editable textfields according to number of lanes
                for (var i = 0; i < widget.laneNames.length; i++)
                  TextFormField(
                    controller: TextEditingController( text: widget.laneNames[i] ),
                    readOnly: true,
                    minLines: 1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),

                TextField(
                  enabled: false,
                  controller: TextEditingController( text: 'XXX'),
                )
              ]
          )
      );
  }

  // *********************************
  // // Generate one column
  // *********************************
  SizedBox _generateOneColumn(String playerName, int columnNumber) {
    return
      SizedBox(
          width: 100,
          height: double.infinity,
        child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TextFormField(
            enabled: true,
            controller: TextEditingController(text: playerName),
          ),
          // Let's generate column of editable textfields according to number of lanes
          for (var i = 0; i < widget.laneNames.length; i++)
            TextFormField(
              onTap: () async {
                await _getStrokesCount(TextEditingController().text);
                if (_strokesCount!=null) {
                  _textControllerLaneList[i][columnNumber].text =
                      _strokesCount.toString();
                  sumStrokes(columnNumber);
                  _myControllerTotalList[columnNumber].text =
                      _strokesSum.toString();
                }
                  FocusScope.of(context).requestFocus(FocusNode());

              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Choose Date';
                }
              },
              keyboardType: TextInputType.phone,
              autocorrect: false,
              controller: _textControllerLaneList[i][columnNumber],
              readOnly: true,
              minLines: 1,
              maxLines: 1,

              decoration: const InputDecoration(
                  border: OutlineInputBorder()
              ),
            ),

          TextField(
            enabled: false,
            controller: _myControllerTotalList[columnNumber],
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Ensures hiding the keyboard when tapping outside a textfield
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child: Scaffold(
        appBar: AppBar(
        title: Text(S.of(context).titleScorecard),
    ),

      body: SizedBox(
        height: double.infinity,
        width: 240,
        child: Row(
          children: [
            _generateFirstColumn(widget.laneNames),
            _generateOneColumn(widget.playerNames[0],0),
            _generateOneColumn(widget.playerNames[1],1)
          ]
          )
        )
      )
    );
  }

}