import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smart_picker/common_elements/cc.dart';
import 'package:smart_picker/common_elements/overlay_widget.dart';
import 'package:smart_picker/country_picker/country_model/country_model.dart';
import 'package:smart_picker/language_picker/language_list.dart';

// class LanguagePicker extends HookWidget {
//   final Function(LanguageModel) onChanged;
//   const LanguagePicker({super.key, required this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     final searchController = useTextEditingController();
//     final searchFocus = useFocusNode();
//     final languageList = useState<List<LanguageModel>>([]);
//     final tempLanguageList = useMemoized(() => getLanguageList());
//     final selectedLanguage = useState<LanguageModel?>(null);

//     void filterLanguages(String value) {
//       final filteredList = tempLanguageList.where((e) => (e.language ?? "").toLowerCase().contains(value.toLowerCase())).toList();
//       languageList.value = [...filteredList]; // Assigning a new reference
//     }

//     return OverlayWidget(
//       child: (open) => InkWell(
//         onTap: () => open.call(),
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 selectedLanguage.value?.language ?? 'Select a language',
//               ),
//             ],
//           ),
//         ),
//       ),
//       onOpened: () {
//         searchFocus.requestFocus();
//         searchController.text = "";
//         languageList.value = [...tempLanguageList]; // Assign a new list reference
//       },
//       overlayContent: (close) => Container(
//         width: 210,
//         height: 300,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white,
//         ),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: searchController,
//                 focusNode: searchFocus,
//                 onChanged: filterLanguages,
//                 decoration: InputDecoration(
//                   hintText: 'Search languages...',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: languageList.value.length,
//                 itemBuilder: (context, index) {
//                   final language = languageList.value[index];
//                   final isSelected = selectedLanguage.value == language;

//                   return InkWell(
//                     onTap: () {
//                       selectedLanguage.value = language;
//                       onChanged.call(language);
//                       close.call();
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: isSelected ? Colors.grey[300] : Colors.white,
//                         border: const Border(
//                           bottom: BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
//                         ),
//                       ),
//                       padding: const EdgeInsets.all(16),
//                       child: Row(
//                         children: [
//                           CountryFlag.fromCountryCode(
//                             language.countryShortCode ?? "",
//                             shape: const Circle(),
//                             width: 18,
//                             height: 18,
//                           ),
//                           const SizedBox(width: 8),
//                           Text(
//                             language.language ?? "",
//                             style: const TextStyle(fontSize: 12),
//                           ),
//                           const SizedBox(width: 8),
//                           SizedBox(
//                             width: 50,
//                             child: Text(
//                               language.countryShortCode ?? "",
//                               style: const TextStyle(fontSize: 12),
//                               overflow: TextOverflow.clip,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class LanguagePicker extends StatelessWidget {
  final Widget? child;
  final Function(LanguageModel) onChanged;
  const LanguagePicker({super.key, this.child, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CustomPopup(
        content: LanguagePickerWidget(
          onChanged: onChanged,
        ),
        child: child ?? const Icon(Icons.more_vert));
  }
}

class LanguagePickerWidget extends HookWidget {
  final Function(LanguageModel) onChanged;
  const LanguagePickerWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final searchFocus = useFocusNode();
    final tempLanguageList = useMemoized(() => getLanguageList());
    final languageList = useState<List<LanguageModel>>(tempLanguageList);
    final selectedLanguage = useState<LanguageModel?>(null);

    void filterLanguages(String value) {
      final filteredList = tempLanguageList.where((e) => (e.language ?? "").toLowerCase().contains(value.toLowerCase())).toList();
      languageList.value = [...filteredList]; // Assigning a new reference
    }

    return Container(
      width: 210,
      height: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              focusNode: searchFocus,
              onChanged: filterLanguages,
              decoration: InputDecoration(
                hintText: 'Search languages...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: languageList.value.length,
              itemBuilder: (context, index) {
                final language = languageList.value[index];
                final isSelected = selectedLanguage.value == language;

                return InkWell(
                  onTap: () {
                    selectedLanguage.value = language;
                    onChanged.call(language);
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.grey[300] : Colors.white,
                      border: const Border(
                        bottom: BorderSide(color: Color.fromARGB(255, 218, 218, 218)),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CountryFlag.fromCountryCode(
                          language.countryShortCode ?? "",
                          shape: const Circle(),
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          language.language ?? "",
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 50,
                          child: Text(
                            language.countryShortCode ?? "",
                            style: const TextStyle(fontSize: 12),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
