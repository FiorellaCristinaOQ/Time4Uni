import 'package:flutter/material.dart';
import 'package:time4uni/constants/fonts.dart';

class EventInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  const EventInputField({Key? key,
    required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: bodyBoldTextStyle),
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.only(left: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    readOnly: widget==null?false:true,
                    autofocus: false,
                    cursorColor: Colors.red,
                    controller: controller,
                    style: bodyTextStyle,
                    decoration: InputDecoration(
                      hintText: hint,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0
                        )
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                              width: 0
                          )
                      )
                    ),
                  )
                ),
                widget==null?Container():Container(child: widget)
              ],
            ),
          )
        ],
      ),
    );
  }
}
