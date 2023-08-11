import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';

class AwesomeCloseButton extends StatefulWidget {
  final OnClose onClose;

  const AwesomeCloseButton({
    super.key,
    required this.onClose,
  });

  @override
  State<StatefulWidget> createState() {
    return _AwesomeCloseButtonState();
  }
}

class _AwesomeCloseButtonState extends State<AwesomeCloseButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AwesomeOrientedWidget(
        child: Material(
          color: Colors.transparent,
          child: AwesomeBouncingWidget(
            onTap: () {
              print('klik!!!');
              widget.onClose?.call();
            },
            child: ClipOval(
              child: Container(
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.close,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
