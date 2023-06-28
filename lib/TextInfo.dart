import 'package:flutter/material.dart';

class LimitedTextArea extends StatefulWidget {
  final String text;
  final int maxLines;

  LimitedTextArea({required this.text, required this.maxLines});

  @override
  _LimitedTextAreaState createState() => _LimitedTextAreaState();
}

class _LimitedTextAreaState extends State<LimitedTextArea> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textSpan = TextSpan(text: widget.text);
        final textPainter = TextPainter(
          text: textSpan,
          maxLines: widget.maxLines,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout(maxWidth: constraints.maxWidth);

        if (!textPainter.didExceedMaxLines) {
          return Text(widget.text);
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedCrossFade(
              firstChild: Text(
                widget.text,
                maxLines: widget.maxLines,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              secondChild: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Read less' : 'Read more',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        );
      },
    );
  }
}
