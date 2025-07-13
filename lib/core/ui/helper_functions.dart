import 'package:intl/intl.dart';

class HelperFunctions {
  static String convertEnglishNumberToArabic(String input) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    return input;
  }

  static String formatDateToCustomStyle(DateTime date) {
    final DateFormat formatter = DateFormat('MMMM, dd yyyy');
    return formatter.format(date);
  }
}
