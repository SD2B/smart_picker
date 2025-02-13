import 'package:flutter/material.dart';

class CustomPopup extends StatefulWidget {
  final Widget child;
  final Widget content;
  final Offset offset;
  final bool barrierDismissible;

  const CustomPopup({
    super.key,
    required this.child,
    required this.content,
    this.offset = const Offset(0, 10),
    this.barrierDismissible = true,
  });

  @override
  _CustomPopupState createState() => _CustomPopupState();
}

class _CustomPopupState extends State<CustomPopup> {
  OverlayEntry? _overlayEntry;

  void _showPopup(BuildContext context) {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          if (widget.barrierDismissible)
            GestureDetector(
              onTap: _removePopup,
              behavior: HitTestBehavior.opaque,
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          Positioned(
            left: position.dx + widget.offset.dx,
            top: position.dy + renderBox.size.height + widget.offset.dy,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              child: widget.content,
            ),
          ),
        ],
      ),
    );

    overlay.insert(_overlayEntry!);
  }

  void _removePopup() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_overlayEntry == null) {
          _showPopup(context);
        } else {
          _removePopup();
        }
      },
      child: widget.child,
    );
  }
}
