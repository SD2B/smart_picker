import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends HookWidget {
  final ValueChanged<Color> onChanged;
  final Widget? child;
  final double? pickerHeight;
  final double? pickerWidth;

  const ColorPickerWidget({required this.onChanged, super.key, this.child, this.pickerHeight, this.pickerWidth});

  @override
  Widget build(BuildContext context) {
    // Use a hook to manage the currently selected color
    final selectedColor = useState<Color>(Colors.black);

    // Function to handle color change and call the onChanged callback
    void onColorChanged(Color color) {
      selectedColor.value = color;
      onChanged(color);
    }

    return GestureDetector(
      onTap: () {
        // Open the color picker dialog on tap
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Pick a color',
              style: TextStyle(color: Colors.white),
            ),
            actionsPadding: EdgeInsets.zero,
            backgroundColor: const Color.fromARGB(255, 33, 46, 57),
            content: SizedBox(
              height: pickerHeight ?? 250,
              width: pickerWidth,
              child: ColorPicker(
                pickerAreaBorderRadius: BorderRadius.circular(10),
                pickerColor: selectedColor.value,
                onColorChanged: onColorChanged,
                labelTypes: const [],
                // showLabel: true,
                pickerAreaHeightPercent: 0.8,
              ),
            ),
            actions: <Widget>[
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      child: const Text('Done'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      child: child ??
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: selectedColor.value,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 1),
            ),
          ),
    );
  }
}
