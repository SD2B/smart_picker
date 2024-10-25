import 'package:flutter/material.dart';
import 'package:smart_picker/color_picker/color_picker.dart';
import 'package:smart_picker/country_picker/country_model/country_model.dart';

import 'country_picker/country_picker.dart';

class Picker {
  static Widget countryPicker({required Function(CountryModel) onChanged}) {
    return CountryPicker(onChanged: onChanged);
  }

  static Widget statePicker({required String countryName, required Function(StateModel) onChanged}) {
    return StatePicker(countryName: countryName, onChanged: onChanged);
  }

  static Widget datePicker() {
    return Text("Country Picker");
  }

  static Widget timePicker() {
    return Text("Country Picker");
  }

  static Widget colorPickerX({required ValueChanged<Color> onChanged}) {
    return ColorPickerWidget(onChanged: onChanged);
  }

  static Widget languagePicker() {
    return Text("Country Picker");
  }

  static Widget imagePicker() {
    return Text("Country Picker");
  }

  static Widget filePicker() {
    return Text("Country Picker");
  }
}
