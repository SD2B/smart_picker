import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends HookWidget {
  final ValueChanged<Color> onChanged;

  const ColorPickerWidget({required this.onChanged, super.key});

  @override
  Widget build(BuildContext context) {
    // Use a hook to manage the currently selected color
    final selectedColor = useState<Color>(Colors.blue);

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
            title: const Text('Pick a color'),
            content: SingleChildScrollView(
              child: ColorPicker(
                pickerColor: selectedColor.value,
                onColorChanged: onColorChanged,
                labelTypes: const [],
                // showLabel: true,
                pickerAreaHeightPercent: 0.8,
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('Done'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
      child: Container(
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
