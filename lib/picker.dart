import 'package:flutter/material.dart';
import 'package:smart_picker/color_picker/color_picker.dart';
import 'package:smart_picker/country_picker/country_model/country_model.dart';
import 'package:smart_picker/language_picker/language_picker.dart';

import 'country_picker/country_picker.dart';

class Picker {
  static Widget countryPicker({required Function(CountryModel) onChanged}) {
    return CountryPicker(onChanged: onChanged);
  }

  static Widget statePicker({required String countryName, required Function(StateModel) onChanged}) {
    return StatePicker(countryName: countryName, onChanged: onChanged);
  }

  static Widget colorPickerX({required ValueChanged<Color> onChanged}) {
    return ColorPickerWidget(onChanged: onChanged);
  }

  static Widget datePicker() {
    return const Text("Date Picker");
  }

  static Widget timePicker() {
    return const Text("Time Picker");
  }

  static Widget languagePicker({required Function(LanguageModel) onChanged, Widget? child}) {
    return LanguagePicker(onChanged: onChanged, child: child);
  }

  static Widget imagePicker() {
    return const Text("Image Picker");
  }

  static Widget filePicker() {
    return const Text("File Picker");
  }
}
