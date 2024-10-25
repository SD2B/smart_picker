import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_picker/country_picker/country_model/country_model.dart';
import 'package:smart_picker/picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Country & State Picker Example')),
        body: const ExamplesScreen(),
      ),
    );
  }
}

class ExamplesScreen extends HookWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCountry = useState<CountryModel?>(null);
    final selectedState = useState<StateModel?>(null);
    final selectedColor = useState(Colors.transparent);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Picker.colorPickerX(onChanged: (color) {
                selectedColor.value = color;
                debugPrint(selectedColor.value.toString());
              })
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Picker.countryPicker(
                onChanged: (CountryModel country) {
                  selectedCountry.value = country;
                  selectedState.value = null; // Reset state when country changes
                },
              ),
              const SizedBox(height: 16),
              if (selectedCountry.value != null)
                Picker.statePicker(
                  countryName: selectedCountry.value?.name ?? "",
                  onChanged: (StateModel state) {
                    selectedState.value = state;
                  },
                ),
              const SizedBox(height: 16),
              if (selectedCountry.value != null && selectedState.value != null)
                Text(
                  'Selected Country: ${selectedCountry.value!.name}, Selected State: ${selectedState.value!.name}',
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
