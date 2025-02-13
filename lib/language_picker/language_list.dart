import 'package:smart_picker/country_picker/country_model/country_model.dart';

List<Map<String, String>> countryLanguageData = [
  {'code': 'AF', 'language': 'Pashto'},
  {'code': 'AF', 'language': 'Dari'},
  {'code': 'AL', 'language': 'Albanian'},
  {'code': 'DZ', 'language': 'Arabic'},
  {'code': 'AD', 'language': 'Catalan'},
  {'code': 'AO', 'language': 'Portuguese'},
  {'code': 'AR', 'language': 'Spanish'},
  {'code': 'AM', 'language': 'Armenian'},
  {'code': 'AU', 'language': 'English'},
  {'code': 'AT', 'language': 'German'},
  {'code': 'AZ', 'language': 'Azerbaijani'},
  {'code': 'BH', 'language': 'Arabic'},
  {'code': 'BD', 'language': 'Bengali'},
  {'code': 'BE', 'language': 'Dutch'},
  {'code': 'BE', 'language': 'French'},
  {'code': 'BE', 'language': 'German'},
  {'code': 'BJ', 'language': 'French'},
  {'code': 'BT', 'language': 'Dzongkha'},
  {'code': 'BO', 'language': 'Spanish'},
  {'code': 'BR', 'language': 'Portuguese'},
  {'code': 'BG', 'language': 'Bulgarian'},
  {'code': 'KH', 'language': 'Khmer'},
  {'code': 'CA', 'language': 'English'},
  {'code': 'CA', 'language': 'French'},
  {'code': 'CL', 'language': 'Spanish'},
  {'code': 'CN', 'language': 'Mandarin'},
  {'code': 'CO', 'language': 'Spanish'},
  {'code': 'HR', 'language': 'Croatian'},
  {'code': 'CU', 'language': 'Spanish'},
  {'code': 'CY', 'language': 'Greek'},
  {'code': 'CZ', 'language': 'Czech'},
  {'code': 'DK', 'language': 'Danish'},
  {'code': 'EG', 'language': 'Arabic'},
  {'code': 'EE', 'language': 'Estonian'},
  {'code': 'FI', 'language': 'Finnish'},
  {'code': 'FI', 'language': 'Swedish'},
  {'code': 'FR', 'language': 'French'},
  {'code': 'DE', 'language': 'German'},
  {'code': 'GR', 'language': 'Greek'},
  {'code': 'HU', 'language': 'Hungarian'},
  {'code': 'IS', 'language': 'Icelandic'},
  {'code': 'IN', 'language': 'Hindi'},
  {'code': 'IN', 'language': 'English'},
  {'code': 'ID', 'language': 'Indonesian'},
  {'code': 'IR', 'language': 'Persian'},
  {'code': 'IQ', 'language': 'Arabic'},
  {'code': 'IE', 'language': 'English'},
  {'code': 'IL', 'language': 'Hebrew'},
  {'code': 'IT', 'language': 'Italian'},
  {'code': 'JP', 'language': 'Japanese'},
  {'code': 'KE', 'language': 'Swahili'},
  {'code': 'KE', 'language': 'English'},
  {'code': 'KR', 'language': 'Korean'},
  {'code': 'MY', 'language': 'Malay'},
  {'code': 'MX', 'language': 'Spanish'},
  {'code': 'NL', 'language': 'Dutch'},
  {'code': 'NO', 'language': 'Norwegian'},
  {'code': 'PK', 'language': 'Urdu'},
  {'code': 'PH', 'language': 'Filipino'},
  {'code': 'PL', 'language': 'Polish'},
  {'code': 'PT', 'language': 'Portuguese'},
  {'code': 'RU', 'language': 'Russian'},
  {'code': 'SA', 'language': 'Arabic'},
  {'code': 'SG', 'language': 'English'},
  {'code': 'SG', 'language': 'Mandarin'},
  {'code': 'SG', 'language': 'Malay'},
  {'code': 'SG', 'language': 'Tamil'},
  {'code': 'ES', 'language': 'Spanish'},
  {'code': 'SE', 'language': 'Swedish'},
  {'code': 'CH', 'language': 'German'},
  {'code': 'CH', 'language': 'French'},
  {'code': 'CH', 'language': 'Italian'},
  {'code': 'TH', 'language': 'Thai'},
  {'code': 'TR', 'language': 'Turkish'},
  {'code': 'UA', 'language': 'Ukrainian'},
  {'code': 'AE', 'language': 'Arabic'},
  {'code': 'GB', 'language': 'English'},
  {'code': 'US', 'language': 'English'},
  {'code': 'VN', 'language': 'Vietnamese'},
  {'code': 'ZA', 'language': 'Afrikaans'},
  {'code': 'ZW', 'language': 'English'},
];

Map<String, int> languageIdMap = {};
int idCounter = 1;

List<LanguageModel> getLanguageList() {
  return countryLanguageData.map((data) {
    String language = data['language']!;
    String countryShortCode = data['code']!;
    int id = countryLanguageData.indexOf(data);

    if (!languageIdMap.containsKey(language)) {
      languageIdMap[language] = idCounter++;
    }

    return LanguageModel(
      id: id,
      languageId: languageIdMap[language],
      language: language,
      countryShortCode: countryShortCode,
    );
  }).toList();
}
