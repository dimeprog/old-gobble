import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  ExpandableText({required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = screenHeight / 5.63;

  //  logic

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > textHeight) {
      //  initiazed the halves
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getWidth(8)),
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              style: TextStyle(
                fontSize: getHeight(18),
                color: Colors.black,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  hiddenText ? (firstHalf + '...') : (firstHalf + secondHalf),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getHeight(18),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        hiddenText ? 'show more' : 'show less',
                        style: TextStyle(
                          color: colorScheme.primary.withOpacity(0.8),
                          fontSize: getHeight(18),
                        ),
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        size: getHeight(32),
                        color: colorScheme.primary.withOpacity(0.8),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
