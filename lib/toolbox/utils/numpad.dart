import 'dart:async';

import 'package:flutter/material.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final int maxNumLength;
  final Function delete;
  final Function onSubmit;
  final Function incrementValue;
  final Function decrementValue;

  const NumPad(
      {Key? key,
      this.buttonSize = 70,
      this.buttonColor = Colors.indigo,
      this.iconColor = Colors.amber,
      required this.delete,
      required this.onSubmit,
      required this.controller,
      required this.decrementValue,
      required this.incrementValue,
      required this.maxNumLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            //Center Column contents horizontally,
            children: [
              IconButton(
                onPressed: () => decrementValue(),
                icon: Icon(
                  Icons.done_rounded,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
              SizedBox(
                height: 80,
                width: 80,
                child: TextFormField(
                  style: const TextStyle(fontSize: 48, color: Colors.black26),
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    isCollapsed: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  minLines: 1,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  readOnly: true,
                ),
              ),
              IconButton(
                onPressed: () => incrementValue(),
                icon: Icon(
                  Icons.done_rounded,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // implement the number keys (from 0 to 9) with the NumberButton widget
            // the NumberButton widget is defined in the bottom of this file
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              IconButton(
                onPressed: () => delete(),
                icon: Icon(
                  Icons.backspace,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
              NumberButton(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
                maxNumLength: maxNumLength,
              ),
              // this button is used to submit the entered value
              IconButton(
                onPressed: () => onSubmit(),
                icon: Icon(
                  Icons.done_rounded,
                  color: iconColor,
                ),
                iconSize: buttonSize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;
  final int maxNumLength;

  const NumberButton(
      {Key? key,
      required this.number,
      required this.size,
      required this.color,
      required this.controller,
      required this.maxNumLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size / 2),
          ),
        ),
        onPressed: () {
          controller.text = number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class NumPadCaller {
  static Future<String> getNumber(
      {required BuildContext context, required NumPad numpad}) async {
    var result = await Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => numpad, fullscreenDialog: false));
    return result ?? ""; // check if result is not null, if so, return ""
  }
}
